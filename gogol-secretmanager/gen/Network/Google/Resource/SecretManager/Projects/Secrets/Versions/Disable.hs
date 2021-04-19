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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Disable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables a SecretVersion. Sets the state of the SecretVersion to
-- DISABLED.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.disable@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Disable
    (
    -- * REST Resource
      ProjectsSecretsVersionsDisableResource

    -- * Creating a Request
    , projectsSecretsVersionsDisable
    , ProjectsSecretsVersionsDisable

    -- * Request Lenses
    , psvdXgafv
    , psvdUploadProtocol
    , psvdAccessToken
    , psvdUploadType
    , psvdPayload
    , psvdName
    , psvdCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.disable@ method which the
-- 'ProjectsSecretsVersionsDisable' request conforms to.
type ProjectsSecretsVersionsDisableResource =
     "v1" :>
       CaptureMode "name" "disable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DisableSecretVersionRequest :>
                       Post '[JSON] SecretVersion

-- | Disables a SecretVersion. Sets the state of the SecretVersion to
-- DISABLED.
--
-- /See:/ 'projectsSecretsVersionsDisable' smart constructor.
data ProjectsSecretsVersionsDisable =
  ProjectsSecretsVersionsDisable'
    { _psvdXgafv :: !(Maybe Xgafv)
    , _psvdUploadProtocol :: !(Maybe Text)
    , _psvdAccessToken :: !(Maybe Text)
    , _psvdUploadType :: !(Maybe Text)
    , _psvdPayload :: !DisableSecretVersionRequest
    , _psvdName :: !Text
    , _psvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsDisable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvdXgafv'
--
-- * 'psvdUploadProtocol'
--
-- * 'psvdAccessToken'
--
-- * 'psvdUploadType'
--
-- * 'psvdPayload'
--
-- * 'psvdName'
--
-- * 'psvdCallback'
projectsSecretsVersionsDisable
    :: DisableSecretVersionRequest -- ^ 'psvdPayload'
    -> Text -- ^ 'psvdName'
    -> ProjectsSecretsVersionsDisable
projectsSecretsVersionsDisable pPsvdPayload_ pPsvdName_ =
  ProjectsSecretsVersionsDisable'
    { _psvdXgafv = Nothing
    , _psvdUploadProtocol = Nothing
    , _psvdAccessToken = Nothing
    , _psvdUploadType = Nothing
    , _psvdPayload = pPsvdPayload_
    , _psvdName = pPsvdName_
    , _psvdCallback = Nothing
    }


-- | V1 error format.
psvdXgafv :: Lens' ProjectsSecretsVersionsDisable (Maybe Xgafv)
psvdXgafv
  = lens _psvdXgafv (\ s a -> s{_psvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvdUploadProtocol :: Lens' ProjectsSecretsVersionsDisable (Maybe Text)
psvdUploadProtocol
  = lens _psvdUploadProtocol
      (\ s a -> s{_psvdUploadProtocol = a})

-- | OAuth access token.
psvdAccessToken :: Lens' ProjectsSecretsVersionsDisable (Maybe Text)
psvdAccessToken
  = lens _psvdAccessToken
      (\ s a -> s{_psvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvdUploadType :: Lens' ProjectsSecretsVersionsDisable (Maybe Text)
psvdUploadType
  = lens _psvdUploadType
      (\ s a -> s{_psvdUploadType = a})

-- | Multipart request metadata.
psvdPayload :: Lens' ProjectsSecretsVersionsDisable DisableSecretVersionRequest
psvdPayload
  = lens _psvdPayload (\ s a -> s{_psvdPayload = a})

-- | Required. The resource name of the SecretVersion to disable in the
-- format \`projects\/*\/secrets\/*\/versions\/*\`.
psvdName :: Lens' ProjectsSecretsVersionsDisable Text
psvdName = lens _psvdName (\ s a -> s{_psvdName = a})

-- | JSONP
psvdCallback :: Lens' ProjectsSecretsVersionsDisable (Maybe Text)
psvdCallback
  = lens _psvdCallback (\ s a -> s{_psvdCallback = a})

instance GoogleRequest ProjectsSecretsVersionsDisable
         where
        type Rs ProjectsSecretsVersionsDisable =
             SecretVersion
        type Scopes ProjectsSecretsVersionsDisable =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsDisable'{..}
          = go _psvdName _psvdXgafv _psvdUploadProtocol
              _psvdAccessToken
              _psvdUploadType
              _psvdCallback
              (Just AltJSON)
              _psvdPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSecretsVersionsDisableResource)
                      mempty
