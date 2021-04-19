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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified secret. Replaces any
-- existing policy. Permissions on SecretVersions are enforced according to
-- the policy set on the associated Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.setIamPolicy@.
module Network.Google.Resource.SecretManager.Projects.Secrets.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSecretsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSecretsSetIAMPolicy
    , ProjectsSecretsSetIAMPolicy

    -- * Request Lenses
    , pssipXgafv
    , pssipUploadProtocol
    , pssipAccessToken
    , pssipUploadType
    , pssipPayload
    , pssipResource
    , pssipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.setIamPolicy@ method which the
-- 'ProjectsSecretsSetIAMPolicy' request conforms to.
type ProjectsSecretsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified secret. Replaces any
-- existing policy. Permissions on SecretVersions are enforced according to
-- the policy set on the associated Secret.
--
-- /See:/ 'projectsSecretsSetIAMPolicy' smart constructor.
data ProjectsSecretsSetIAMPolicy =
  ProjectsSecretsSetIAMPolicy'
    { _pssipXgafv :: !(Maybe Xgafv)
    , _pssipUploadProtocol :: !(Maybe Text)
    , _pssipAccessToken :: !(Maybe Text)
    , _pssipUploadType :: !(Maybe Text)
    , _pssipPayload :: !SetIAMPolicyRequest
    , _pssipResource :: !Text
    , _pssipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssipXgafv'
--
-- * 'pssipUploadProtocol'
--
-- * 'pssipAccessToken'
--
-- * 'pssipUploadType'
--
-- * 'pssipPayload'
--
-- * 'pssipResource'
--
-- * 'pssipCallback'
projectsSecretsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pssipPayload'
    -> Text -- ^ 'pssipResource'
    -> ProjectsSecretsSetIAMPolicy
projectsSecretsSetIAMPolicy pPssipPayload_ pPssipResource_ =
  ProjectsSecretsSetIAMPolicy'
    { _pssipXgafv = Nothing
    , _pssipUploadProtocol = Nothing
    , _pssipAccessToken = Nothing
    , _pssipUploadType = Nothing
    , _pssipPayload = pPssipPayload_
    , _pssipResource = pPssipResource_
    , _pssipCallback = Nothing
    }


-- | V1 error format.
pssipXgafv :: Lens' ProjectsSecretsSetIAMPolicy (Maybe Xgafv)
pssipXgafv
  = lens _pssipXgafv (\ s a -> s{_pssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssipUploadProtocol :: Lens' ProjectsSecretsSetIAMPolicy (Maybe Text)
pssipUploadProtocol
  = lens _pssipUploadProtocol
      (\ s a -> s{_pssipUploadProtocol = a})

-- | OAuth access token.
pssipAccessToken :: Lens' ProjectsSecretsSetIAMPolicy (Maybe Text)
pssipAccessToken
  = lens _pssipAccessToken
      (\ s a -> s{_pssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssipUploadType :: Lens' ProjectsSecretsSetIAMPolicy (Maybe Text)
pssipUploadType
  = lens _pssipUploadType
      (\ s a -> s{_pssipUploadType = a})

-- | Multipart request metadata.
pssipPayload :: Lens' ProjectsSecretsSetIAMPolicy SetIAMPolicyRequest
pssipPayload
  = lens _pssipPayload (\ s a -> s{_pssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pssipResource :: Lens' ProjectsSecretsSetIAMPolicy Text
pssipResource
  = lens _pssipResource
      (\ s a -> s{_pssipResource = a})

-- | JSONP
pssipCallback :: Lens' ProjectsSecretsSetIAMPolicy (Maybe Text)
pssipCallback
  = lens _pssipCallback
      (\ s a -> s{_pssipCallback = a})

instance GoogleRequest ProjectsSecretsSetIAMPolicy
         where
        type Rs ProjectsSecretsSetIAMPolicy = Policy
        type Scopes ProjectsSecretsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsSetIAMPolicy'{..}
          = go _pssipResource _pssipXgafv _pssipUploadProtocol
              _pssipAccessToken
              _pssipUploadType
              _pssipCallback
              (Just AltJSON)
              _pssipPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsSetIAMPolicyResource)
                      mempty
