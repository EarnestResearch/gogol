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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Destroy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Destroys a SecretVersion. Sets the state of the SecretVersion to
-- DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.destroy@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Destroy
    (
    -- * REST Resource
      ProjectsSecretsVersionsDestroyResource

    -- * Creating a Request
    , projectsSecretsVersionsDestroy
    , ProjectsSecretsVersionsDestroy

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.destroy@ method which the
-- 'ProjectsSecretsVersionsDestroy' request conforms to.
type ProjectsSecretsVersionsDestroyResource =
     "v1" :>
       CaptureMode "name" "destroy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DestroySecretVersionRequest :>
                       Post '[JSON] SecretVersion

-- | Destroys a SecretVersion. Sets the state of the SecretVersion to
-- DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ 'projectsSecretsVersionsDestroy' smart constructor.
data ProjectsSecretsVersionsDestroy =
  ProjectsSecretsVersionsDestroy'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !DestroySecretVersionRequest
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsDestroy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsSecretsVersionsDestroy
    :: DestroySecretVersionRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsSecretsVersionsDestroy
projectsSecretsVersionsDestroy pPPayload_ pPName_ =
  ProjectsSecretsVersionsDestroy'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsSecretsVersionsDestroy (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsSecretsVersionsDestroy (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsSecretsVersionsDestroy (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsSecretsVersionsDestroy (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsSecretsVersionsDestroy DestroySecretVersionRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The resource name of the SecretVersion to destroy in the
-- format \`projects\/*\/secrets\/*\/versions\/*\`.
pName :: Lens' ProjectsSecretsVersionsDestroy Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsSecretsVersionsDestroy (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsSecretsVersionsDestroy
         where
        type Rs ProjectsSecretsVersionsDestroy =
             SecretVersion
        type Scopes ProjectsSecretsVersionsDestroy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsDestroy'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSecretsVersionsDestroyResource)
                      mempty
