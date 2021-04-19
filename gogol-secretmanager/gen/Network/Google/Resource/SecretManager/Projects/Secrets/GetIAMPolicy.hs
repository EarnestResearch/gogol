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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a secret. Returns empty policy if the
-- secret exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.getIamPolicy@.
module Network.Google.Resource.SecretManager.Projects.Secrets.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSecretsGetIAMPolicyResource

    -- * Creating a Request
    , projectsSecretsGetIAMPolicy
    , ProjectsSecretsGetIAMPolicy

    -- * Request Lenses
    , psgipOptionsRequestedPolicyVersion
    , psgipXgafv
    , psgipUploadProtocol
    , psgipAccessToken
    , psgipUploadType
    , psgipResource
    , psgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.getIamPolicy@ method which the
-- 'ProjectsSecretsGetIAMPolicy' request conforms to.
type ProjectsSecretsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a secret. Returns empty policy if the
-- secret exists and does not have a policy set.
--
-- /See:/ 'projectsSecretsGetIAMPolicy' smart constructor.
data ProjectsSecretsGetIAMPolicy =
  ProjectsSecretsGetIAMPolicy'
    { _psgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _psgipXgafv :: !(Maybe Xgafv)
    , _psgipUploadProtocol :: !(Maybe Text)
    , _psgipAccessToken :: !(Maybe Text)
    , _psgipUploadType :: !(Maybe Text)
    , _psgipResource :: !Text
    , _psgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipOptionsRequestedPolicyVersion'
--
-- * 'psgipXgafv'
--
-- * 'psgipUploadProtocol'
--
-- * 'psgipAccessToken'
--
-- * 'psgipUploadType'
--
-- * 'psgipResource'
--
-- * 'psgipCallback'
projectsSecretsGetIAMPolicy
    :: Text -- ^ 'psgipResource'
    -> ProjectsSecretsGetIAMPolicy
projectsSecretsGetIAMPolicy pPsgipResource_ =
  ProjectsSecretsGetIAMPolicy'
    { _psgipOptionsRequestedPolicyVersion = Nothing
    , _psgipXgafv = Nothing
    , _psgipUploadProtocol = Nothing
    , _psgipAccessToken = Nothing
    , _psgipUploadType = Nothing
    , _psgipResource = pPsgipResource_
    , _psgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
psgipOptionsRequestedPolicyVersion :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Int32)
psgipOptionsRequestedPolicyVersion
  = lens _psgipOptionsRequestedPolicyVersion
      (\ s a -> s{_psgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
psgipXgafv :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Xgafv)
psgipXgafv
  = lens _psgipXgafv (\ s a -> s{_psgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipUploadProtocol :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Text)
psgipUploadProtocol
  = lens _psgipUploadProtocol
      (\ s a -> s{_psgipUploadProtocol = a})

-- | OAuth access token.
psgipAccessToken :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Text)
psgipAccessToken
  = lens _psgipAccessToken
      (\ s a -> s{_psgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipUploadType :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Text)
psgipUploadType
  = lens _psgipUploadType
      (\ s a -> s{_psgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgipResource :: Lens' ProjectsSecretsGetIAMPolicy Text
psgipResource
  = lens _psgipResource
      (\ s a -> s{_psgipResource = a})

-- | JSONP
psgipCallback :: Lens' ProjectsSecretsGetIAMPolicy (Maybe Text)
psgipCallback
  = lens _psgipCallback
      (\ s a -> s{_psgipCallback = a})

instance GoogleRequest ProjectsSecretsGetIAMPolicy
         where
        type Rs ProjectsSecretsGetIAMPolicy = Policy
        type Scopes ProjectsSecretsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsGetIAMPolicy'{..}
          = go _psgipResource
              _psgipOptionsRequestedPolicyVersion
              _psgipXgafv
              _psgipUploadProtocol
              _psgipAccessToken
              _psgipUploadType
              _psgipCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsGetIAMPolicyResource)
                      mempty
