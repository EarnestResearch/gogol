{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.AddVersion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new SecretVersion containing secret data and attaches it to an
-- existing Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.addVersion@.
module Network.Google.Resource.SecretManager.Projects.Secrets.AddVersion
    (
    -- * REST Resource
      ProjectsSecretsAddVersionResource

    -- * Creating a Request
    , projectsSecretsAddVersion
    , ProjectsSecretsAddVersion

    -- * Request Lenses
    , psavParent
    , psavXgafv
    , psavUploadProtocol
    , psavAccessToken
    , psavUploadType
    , psavPayload
    , psavCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.addVersion@ method which the
-- 'ProjectsSecretsAddVersion' request conforms to.
type ProjectsSecretsAddVersionResource =
     "v1" :>
       CaptureMode "parent" "addVersion" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AddSecretVersionRequest :>
                       Post '[JSON] SecretVersion

-- | Creates a new SecretVersion containing secret data and attaches it to an
-- existing Secret.
--
-- /See:/ 'projectsSecretsAddVersion' smart constructor.
data ProjectsSecretsAddVersion =
  ProjectsSecretsAddVersion'
    { _psavParent :: !Text
    , _psavXgafv :: !(Maybe Xgafv)
    , _psavUploadProtocol :: !(Maybe Text)
    , _psavAccessToken :: !(Maybe Text)
    , _psavUploadType :: !(Maybe Text)
    , _psavPayload :: !AddSecretVersionRequest
    , _psavCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsAddVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psavParent'
--
-- * 'psavXgafv'
--
-- * 'psavUploadProtocol'
--
-- * 'psavAccessToken'
--
-- * 'psavUploadType'
--
-- * 'psavPayload'
--
-- * 'psavCallback'
projectsSecretsAddVersion
    :: Text -- ^ 'psavParent'
    -> AddSecretVersionRequest -- ^ 'psavPayload'
    -> ProjectsSecretsAddVersion
projectsSecretsAddVersion pPsavParent_ pPsavPayload_ =
  ProjectsSecretsAddVersion'
    { _psavParent = pPsavParent_
    , _psavXgafv = Nothing
    , _psavUploadProtocol = Nothing
    , _psavAccessToken = Nothing
    , _psavUploadType = Nothing
    , _psavPayload = pPsavPayload_
    , _psavCallback = Nothing
    }


-- | Required. The resource name of the Secret to associate with the
-- SecretVersion in the format \`projects\/*\/secrets\/*\`.
psavParent :: Lens' ProjectsSecretsAddVersion Text
psavParent
  = lens _psavParent (\ s a -> s{_psavParent = a})

-- | V1 error format.
psavXgafv :: Lens' ProjectsSecretsAddVersion (Maybe Xgafv)
psavXgafv
  = lens _psavXgafv (\ s a -> s{_psavXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psavUploadProtocol :: Lens' ProjectsSecretsAddVersion (Maybe Text)
psavUploadProtocol
  = lens _psavUploadProtocol
      (\ s a -> s{_psavUploadProtocol = a})

-- | OAuth access token.
psavAccessToken :: Lens' ProjectsSecretsAddVersion (Maybe Text)
psavAccessToken
  = lens _psavAccessToken
      (\ s a -> s{_psavAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psavUploadType :: Lens' ProjectsSecretsAddVersion (Maybe Text)
psavUploadType
  = lens _psavUploadType
      (\ s a -> s{_psavUploadType = a})

-- | Multipart request metadata.
psavPayload :: Lens' ProjectsSecretsAddVersion AddSecretVersionRequest
psavPayload
  = lens _psavPayload (\ s a -> s{_psavPayload = a})

-- | JSONP
psavCallback :: Lens' ProjectsSecretsAddVersion (Maybe Text)
psavCallback
  = lens _psavCallback (\ s a -> s{_psavCallback = a})

instance GoogleRequest ProjectsSecretsAddVersion
         where
        type Rs ProjectsSecretsAddVersion = SecretVersion
        type Scopes ProjectsSecretsAddVersion =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsAddVersion'{..}
          = go _psavParent _psavXgafv _psavUploadProtocol
              _psavAccessToken
              _psavUploadType
              _psavCallback
              (Just AltJSON)
              _psavPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsAddVersionResource)
                      mempty
