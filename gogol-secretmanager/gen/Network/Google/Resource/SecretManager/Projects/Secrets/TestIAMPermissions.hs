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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has for the specified secret. If the
-- secret does not exist, this call returns an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.testIamPermissions@.
module Network.Google.Resource.SecretManager.Projects.Secrets.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSecretsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSecretsTestIAMPermissions
    , ProjectsSecretsTestIAMPermissions

    -- * Request Lenses
    , pstipXgafv
    , pstipUploadProtocol
    , pstipAccessToken
    , pstipUploadType
    , pstipPayload
    , pstipResource
    , pstipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.testIamPermissions@ method which the
-- 'ProjectsSecretsTestIAMPermissions' request conforms to.
type ProjectsSecretsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has for the specified secret. If the
-- secret does not exist, this call returns an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsSecretsTestIAMPermissions' smart constructor.
data ProjectsSecretsTestIAMPermissions =
  ProjectsSecretsTestIAMPermissions'
    { _pstipXgafv :: !(Maybe Xgafv)
    , _pstipUploadProtocol :: !(Maybe Text)
    , _pstipAccessToken :: !(Maybe Text)
    , _pstipUploadType :: !(Maybe Text)
    , _pstipPayload :: !TestIAMPermissionsRequest
    , _pstipResource :: !Text
    , _pstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstipXgafv'
--
-- * 'pstipUploadProtocol'
--
-- * 'pstipAccessToken'
--
-- * 'pstipUploadType'
--
-- * 'pstipPayload'
--
-- * 'pstipResource'
--
-- * 'pstipCallback'
projectsSecretsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pstipPayload'
    -> Text -- ^ 'pstipResource'
    -> ProjectsSecretsTestIAMPermissions
projectsSecretsTestIAMPermissions pPstipPayload_ pPstipResource_ =
  ProjectsSecretsTestIAMPermissions'
    { _pstipXgafv = Nothing
    , _pstipUploadProtocol = Nothing
    , _pstipAccessToken = Nothing
    , _pstipUploadType = Nothing
    , _pstipPayload = pPstipPayload_
    , _pstipResource = pPstipResource_
    , _pstipCallback = Nothing
    }


-- | V1 error format.
pstipXgafv :: Lens' ProjectsSecretsTestIAMPermissions (Maybe Xgafv)
pstipXgafv
  = lens _pstipXgafv (\ s a -> s{_pstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstipUploadProtocol :: Lens' ProjectsSecretsTestIAMPermissions (Maybe Text)
pstipUploadProtocol
  = lens _pstipUploadProtocol
      (\ s a -> s{_pstipUploadProtocol = a})

-- | OAuth access token.
pstipAccessToken :: Lens' ProjectsSecretsTestIAMPermissions (Maybe Text)
pstipAccessToken
  = lens _pstipAccessToken
      (\ s a -> s{_pstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstipUploadType :: Lens' ProjectsSecretsTestIAMPermissions (Maybe Text)
pstipUploadType
  = lens _pstipUploadType
      (\ s a -> s{_pstipUploadType = a})

-- | Multipart request metadata.
pstipPayload :: Lens' ProjectsSecretsTestIAMPermissions TestIAMPermissionsRequest
pstipPayload
  = lens _pstipPayload (\ s a -> s{_pstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pstipResource :: Lens' ProjectsSecretsTestIAMPermissions Text
pstipResource
  = lens _pstipResource
      (\ s a -> s{_pstipResource = a})

-- | JSONP
pstipCallback :: Lens' ProjectsSecretsTestIAMPermissions (Maybe Text)
pstipCallback
  = lens _pstipCallback
      (\ s a -> s{_pstipCallback = a})

instance GoogleRequest
           ProjectsSecretsTestIAMPermissions
         where
        type Rs ProjectsSecretsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsSecretsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsTestIAMPermissions'{..}
          = go _pstipResource _pstipXgafv _pstipUploadProtocol
              _pstipAccessToken
              _pstipUploadType
              _pstipCallback
              (Just AltJSON)
              _pstipPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSecretsTestIAMPermissionsResource)
                      mempty
