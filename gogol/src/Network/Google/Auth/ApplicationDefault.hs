{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

-- |
-- Module      : Network.Google.Auth.ApplicationDefaultCredentials
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Application Default Credentials are suited for cases when access to a Google service
-- needs to have the same identity and authorization level for the application
-- independent of the user. This is Google\'s the recommended approach to authorize
-- calls to Google Cloud APIs, particularly when you're building an application
-- that is deployed to Google App Engine or Google Compute Engine virtual machines.
--
-- /See:/ <https://developers.google.com/identity/protocols/application-default-credentials Application Default Documentation>.
module Network.Google.Auth.ApplicationDefault where

import           Control.Applicative
import           Control.Exception.Lens          (catching, throwingM)
import           Control.Monad                   (unless, when)
import           Control.Monad.Catch
import           Control.Monad.IO.Class          (MonadIO (..))
import           Data.Aeson
import           Data.Aeson.Types                (parseEither)
import qualified Data.ByteString.Lazy            as LBS
import           Data.Maybe                      (maybe)
import qualified Data.Text                       as Text
import           Network.Google.Compute.Metadata (isGCE)
import           Network.Google.Internal.Auth

import Network.HTTP.Conduit (Manager)
import System.Directory     (doesFileExist, getHomeDirectory, createDirectoryIfMissing)
import System.Environment   (lookupEnv)
import System.FilePath      ((</>), takeDirectory)
import System.Info          (os)

-- | The environment variable name which is used to specify the directory
-- containing the @application_default_credentials.json@ generated by @gcloud init@.
cloudSDKConfigDir :: String
cloudSDKConfigDir = "CLOUDSDK_CONFIG"

-- | Return the filepath to the Cloud SDK well known file location such as
-- @~\/.config\/gcloud\/application_default_credentials.json@.
cloudSDKConfigPath :: MonadIO m => m FilePath
cloudSDKConfigPath = do
    m <- liftIO (lookupEnv cloudSDKConfigDir)
    case m of
        Just d  -> pure $! d </> "application_default_credentials.json"
        Nothing -> do
            d <- getConfigDirectory
            pure $! d </> "gcloud/application_default_credentials.json"

-- | The environment variable pointing the file with local
-- Application Default Credentials.
defaultCredentialsFile :: String
defaultCredentialsFile = "GOOGLE_APPLICATION_CREDENTIALS"

-- | Lookup the @GOOGLE_APPLICATION_CREDENTIALS@ environment variable for the
-- default application credentials filepath.
defaultCredentialsPath :: MonadIO m => m (Maybe FilePath)
defaultCredentialsPath = liftIO (lookupEnv defaultCredentialsFile)

-- | Performs credentials discovery in the following order:
--
-- 1. Read the default credentials from a file specified by
-- the environment variable @GOOGLE_APPLICATION_CREDENTIALS@ if it exists.
--
-- 2. Read the platform equivalent of @~\/.config\/gcloud\/application_default_credentials.json@ if it exists.
-- The @~/.config@ component of the path can be overriden by the environment
-- variable @CLOUDSDK_CONFIG@ if it exists.
--
-- 3. Retrieve the default service account application credentials if
-- running on GCE. The environment variable @NO_GCE_CHECK@ can be used to
-- skip this check if set to a truthy value such as @1@ or @true@.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate OAuth2 scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
--
-- /See:/ <https://developers.google.com/identity/protocols/application-default-credentials Application Default Credentials>
getApplicationDefault :: (MonadIO m, MonadCatch m)
                      => Manager
                      -> m (Credentials s)
getApplicationDefault m =
    catching _MissingFileError fromWellKnownPath $ \f -> do
        p <- isGCE m
        unless p $
            throwingM _MissingFileError f
        pure $! FromMetadata "default"

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
--
-- /See:/ 'cloudSDKConfigPath', 'defaultCredentialsPath'.
fromWellKnownPath :: (MonadIO m, MonadCatch m) => m (Credentials s)
fromWellKnownPath = do
    f <- defaultCredentialsPath
    case f of
        Just x  -> fromFilePath x
        Nothing -> do
            x <- cloudSDKConfigPath
            fromFilePath x

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh from
-- the specified file.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
fromFilePath :: (MonadIO m, MonadCatch m) => FilePath -> m (Credentials s)
fromFilePath f = do
    p  <- liftIO (doesFileExist f)
    unless p $
        throwM (MissingFileError f)
    bs <- liftIO (LBS.readFile f)
    either (throwM . InvalidFileError f . Text.pack) pure
           (fromJSONCredentials bs)

-- | Save 'AuthorizedUser'
-- /See:/ 'cloudSDKConfigPath', 'defaultCredentialsPath'.
saveAuthorizedUserToWellKnownPath :: (MonadIO m, MonadCatch m)
                                  => Bool            -- ^ Force to save if True
                                  -> AuthorizedUser
                                  -> m ()
saveAuthorizedUserToWellKnownPath b a = do
    d <- defaultCredentialsPath
    f <- maybe cloudSDKConfigPath pure d
    liftIO $ createDirectoryIfMissing True $ takeDirectory f
    saveAuthorizedUser f b a

-- | Save 'AuthorizedUser'
saveAuthorizedUser :: (MonadIO m, MonadCatch m)
                   => FilePath
                   -> Bool            -- ^ Force to save if True
                   -> AuthorizedUser
                   -> m ()
saveAuthorizedUser f b a = do
    p  <- liftIO (doesFileExist f)
    when (p && not b) $
        throwM (FileExistError f)
    liftIO (LBS.writeFile f $ encode a)

-- | Attempt to parse either a @service_account@ or @authorized_user@ formatted
-- JSON value to obtain credentials.
fromJSONCredentials :: LBS.ByteString -> Either String (Credentials s)
fromJSONCredentials bs = do
    v <- eitherDecode' bs
    let x = FromAccount <$> parseEither parseJSON v
        y = FromUser    <$> parseEither parseJSON v
    case (x, y) of
        (Left xe, Left ye) -> Left $
              "Failed parsing service_account: " ++ xe ++
            ", Failed parsing authorized_user: " ++ ye
        _                  -> x <|> y

getConfigDirectory :: MonadIO m => m FilePath
getConfigDirectory = do
    h <- liftIO getHomeDirectory
    if os == "windows"
        then pure h
        else pure $! h </> ".config"
