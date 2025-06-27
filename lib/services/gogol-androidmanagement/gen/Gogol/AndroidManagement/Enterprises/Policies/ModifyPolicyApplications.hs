{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidManagement.Enterprises.Policies.ModifyPolicyApplications
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or creates applications in a policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.modifyPolicyApplications@.
module Gogol.AndroidManagement.Enterprises.Policies.ModifyPolicyApplications
    (
    -- * Resource
      AndroidManagementEnterprisesPoliciesModifyPolicyApplicationsResource

    -- ** Constructing a Request
    , AndroidManagementEnterprisesPoliciesModifyPolicyApplications (..)
    , newAndroidManagementEnterprisesPoliciesModifyPolicyApplications
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.policies.modifyPolicyApplications@ method which the
-- 'AndroidManagementEnterprisesPoliciesModifyPolicyApplications' request conforms to.
type AndroidManagementEnterprisesPoliciesModifyPolicyApplicationsResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "modifyPolicyApplications" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ModifyPolicyApplicationsRequest Core.:>
                       Core.Post '[Core.JSON] ModifyPolicyApplicationsResponse

-- | Updates or creates applications in a policy.
--
-- /See:/ 'newAndroidManagementEnterprisesPoliciesModifyPolicyApplications' smart constructor.
data AndroidManagementEnterprisesPoliciesModifyPolicyApplications = AndroidManagementEnterprisesPoliciesModifyPolicyApplications
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Policy containing the ApplicationPolicy objects to be updated, in the form enterprises\/{enterpriseId}\/policies\/{policyId}.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ModifyPolicyApplicationsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesPoliciesModifyPolicyApplications' with the minimum fields required to make a request.
newAndroidManagementEnterprisesPoliciesModifyPolicyApplications 
    :: 
                                                                Core.Text
       -- ^  Required. The name of the Policy containing the ApplicationPolicy objects to be updated, in the form enterprises\/{enterpriseId}\/policies\/{policyId}. See 'name'.
    -> ModifyPolicyApplicationsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidManagementEnterprisesPoliciesModifyPolicyApplications
newAndroidManagementEnterprisesPoliciesModifyPolicyApplications
  name payload
  = AndroidManagementEnterprisesPoliciesModifyPolicyApplications{xgafv
                                                                   = Core.Nothing,
                                                                 accessToken = Core.Nothing,
                                                                 callback = Core.Nothing,
                                                                 name = name, payload = payload,
                                                                 uploadType = Core.Nothing,
                                                                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidManagementEnterprisesPoliciesModifyPolicyApplications
         where
        type Rs
               AndroidManagementEnterprisesPoliciesModifyPolicyApplications
             = ModifyPolicyApplicationsResponse
        type Scopes
               AndroidManagementEnterprisesPoliciesModifyPolicyApplications
             = '[Androidmanagement'FullControl]
        requestClient
          AndroidManagementEnterprisesPoliciesModifyPolicyApplications{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesPoliciesModifyPolicyApplicationsResource)
                      Core.mempty

