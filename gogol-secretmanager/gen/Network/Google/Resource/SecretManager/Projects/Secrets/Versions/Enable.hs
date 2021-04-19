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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Enable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.enable@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Enable
    (
    -- * REST Resource
      ProjectsSecretsVersionsEnableResource

    -- * Creating a Request
    , projectsSecretsVersionsEnable
    , ProjectsSecretsVersionsEnable

    -- * Request Lenses
    , psveXgafv
    , psveUploadProtocol
    , psveAccessToken
    , psveUploadType
    , psvePayload
    , psveName
    , psveCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.enable@ method which the
-- 'ProjectsSecretsVersionsEnable' request conforms to.
type ProjectsSecretsVersionsEnableResource =
     "v1" :>
       CaptureMode "name" "enable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EnableSecretVersionRequest :>
                       Post '[JSON] SecretVersion

-- | Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
--
-- /See:/ 'projectsSecretsVersionsEnable' smart constructor.
data ProjectsSecretsVersionsEnable =
  ProjectsSecretsVersionsEnable'
    { _psveXgafv :: !(Maybe Xgafv)
    , _psveUploadProtocol :: !(Maybe Text)
    , _psveAccessToken :: !(Maybe Text)
    , _psveUploadType :: !(Maybe Text)
    , _psvePayload :: !EnableSecretVersionRequest
    , _psveName :: !Text
    , _psveCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psveXgafv'
--
-- * 'psveUploadProtocol'
--
-- * 'psveAccessToken'
--
-- * 'psveUploadType'
--
-- * 'psvePayload'
--
-- * 'psveName'
--
-- * 'psveCallback'
projectsSecretsVersionsEnable
    :: EnableSecretVersionRequest -- ^ 'psvePayload'
    -> Text -- ^ 'psveName'
    -> ProjectsSecretsVersionsEnable
projectsSecretsVersionsEnable pPsvePayload_ pPsveName_ =
  ProjectsSecretsVersionsEnable'
    { _psveXgafv = Nothing
    , _psveUploadProtocol = Nothing
    , _psveAccessToken = Nothing
    , _psveUploadType = Nothing
    , _psvePayload = pPsvePayload_
    , _psveName = pPsveName_
    , _psveCallback = Nothing
    }


-- | V1 error format.
psveXgafv :: Lens' ProjectsSecretsVersionsEnable (Maybe Xgafv)
psveXgafv
  = lens _psveXgafv (\ s a -> s{_psveXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psveUploadProtocol :: Lens' ProjectsSecretsVersionsEnable (Maybe Text)
psveUploadProtocol
  = lens _psveUploadProtocol
      (\ s a -> s{_psveUploadProtocol = a})

-- | OAuth access token.
psveAccessToken :: Lens' ProjectsSecretsVersionsEnable (Maybe Text)
psveAccessToken
  = lens _psveAccessToken
      (\ s a -> s{_psveAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psveUploadType :: Lens' ProjectsSecretsVersionsEnable (Maybe Text)
psveUploadType
  = lens _psveUploadType
      (\ s a -> s{_psveUploadType = a})

-- | Multipart request metadata.
psvePayload :: Lens' ProjectsSecretsVersionsEnable EnableSecretVersionRequest
psvePayload
  = lens _psvePayload (\ s a -> s{_psvePayload = a})

-- | Required. The resource name of the SecretVersion to enable in the format
-- \`projects\/*\/secrets\/*\/versions\/*\`.
psveName :: Lens' ProjectsSecretsVersionsEnable Text
psveName = lens _psveName (\ s a -> s{_psveName = a})

-- | JSONP
psveCallback :: Lens' ProjectsSecretsVersionsEnable (Maybe Text)
psveCallback
  = lens _psveCallback (\ s a -> s{_psveCallback = a})

instance GoogleRequest ProjectsSecretsVersionsEnable
         where
        type Rs ProjectsSecretsVersionsEnable = SecretVersion
        type Scopes ProjectsSecretsVersionsEnable =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsEnable'{..}
          = go _psveName _psveXgafv _psveUploadProtocol
              _psveAccessToken
              _psveUploadType
              _psveCallback
              (Just AltJSON)
              _psvePayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSecretsVersionsEnableResource)
                      mempty
