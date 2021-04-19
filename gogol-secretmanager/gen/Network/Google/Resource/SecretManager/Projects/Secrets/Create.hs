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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Secret containing no SecretVersions.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.create@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Create
    (
    -- * REST Resource
      ProjectsSecretsCreateResource

    -- * Creating a Request
    , projectsSecretsCreate
    , ProjectsSecretsCreate

    -- * Request Lenses
    , pscParent
    , pscXgafv
    , pscUploadProtocol
    , pscAccessToken
    , pscSecretId
    , pscUploadType
    , pscPayload
    , pscCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.create@ method which the
-- 'ProjectsSecretsCreate' request conforms to.
type ProjectsSecretsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "secrets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "secretId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Secret :> Post '[JSON] Secret

-- | Creates a new Secret containing no SecretVersions.
--
-- /See:/ 'projectsSecretsCreate' smart constructor.
data ProjectsSecretsCreate =
  ProjectsSecretsCreate'
    { _pscParent :: !Text
    , _pscXgafv :: !(Maybe Xgafv)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscAccessToken :: !(Maybe Text)
    , _pscSecretId :: !(Maybe Text)
    , _pscUploadType :: !(Maybe Text)
    , _pscPayload :: !Secret
    , _pscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscParent'
--
-- * 'pscXgafv'
--
-- * 'pscUploadProtocol'
--
-- * 'pscAccessToken'
--
-- * 'pscSecretId'
--
-- * 'pscUploadType'
--
-- * 'pscPayload'
--
-- * 'pscCallback'
projectsSecretsCreate
    :: Text -- ^ 'pscParent'
    -> Secret -- ^ 'pscPayload'
    -> ProjectsSecretsCreate
projectsSecretsCreate pPscParent_ pPscPayload_ =
  ProjectsSecretsCreate'
    { _pscParent = pPscParent_
    , _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscAccessToken = Nothing
    , _pscSecretId = Nothing
    , _pscUploadType = Nothing
    , _pscPayload = pPscPayload_
    , _pscCallback = Nothing
    }


-- | Required. The resource name of the project to associate with the Secret,
-- in the format \`projects\/*\`.
pscParent :: Lens' ProjectsSecretsCreate Text
pscParent
  = lens _pscParent (\ s a -> s{_pscParent = a})

-- | V1 error format.
pscXgafv :: Lens' ProjectsSecretsCreate (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSecretsCreate (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSecretsCreate (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Required. This must be unique within the project. A secret ID is a
-- string with a maximum length of 255 characters and can contain uppercase
-- and lowercase letters, numerals, and the hyphen (\`-\`) and underscore
-- (\`_\`) characters.
pscSecretId :: Lens' ProjectsSecretsCreate (Maybe Text)
pscSecretId
  = lens _pscSecretId (\ s a -> s{_pscSecretId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSecretsCreate (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Multipart request metadata.
pscPayload :: Lens' ProjectsSecretsCreate Secret
pscPayload
  = lens _pscPayload (\ s a -> s{_pscPayload = a})

-- | JSONP
pscCallback :: Lens' ProjectsSecretsCreate (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest ProjectsSecretsCreate where
        type Rs ProjectsSecretsCreate = Secret
        type Scopes ProjectsSecretsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsCreate'{..}
          = go _pscParent _pscXgafv _pscUploadProtocol
              _pscAccessToken
              _pscSecretId
              _pscUploadType
              _pscCallback
              (Just AltJSON)
              _pscPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsCreateResource)
                      mempty
