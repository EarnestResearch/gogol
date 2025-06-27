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
-- Module      : Gogol.Compute.InterconnectGroups.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.setIamPolicy@.
module Gogol.Compute.InterconnectGroups.SetIamPolicy
    (
    -- * Resource
      ComputeInterconnectGroupsSetIamPolicyResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsSetIamPolicy (..)
    , newComputeInterconnectGroupsSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.setIamPolicy@ method which the
-- 'ComputeInterconnectGroupsSetIamPolicy' request conforms to.
type ComputeInterconnectGroupsSetIamPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectGroups" Core.:>
                 Core.Capture "resource" Core.Text Core.:>
                   "setIamPolicy" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] GlobalSetPolicyRequest Core.:>
                                   Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ 'newComputeInterconnectGroupsSetIamPolicy' smart constructor.
data ComputeInterconnectGroupsSetIamPolicy = ComputeInterconnectGroupsSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GlobalSetPolicyRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name or id of the resource for this request.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectGroupsSetIamPolicy' with the minimum fields required to make a request.
newComputeInterconnectGroupsSetIamPolicy 
    :: 
                                         GlobalSetPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeInterconnectGroupsSetIamPolicy
newComputeInterconnectGroupsSetIamPolicy payload project resource
  = ComputeInterconnectGroupsSetIamPolicy{xgafv = Core.Nothing,
                                          accessToken = Core.Nothing, callback = Core.Nothing,
                                          payload = payload, project = project, resource = resource,
                                          uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectGroupsSetIamPolicy
         where
        type Rs ComputeInterconnectGroupsSetIamPolicy = Policy
        type Scopes ComputeInterconnectGroupsSetIamPolicy =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInterconnectGroupsSetIamPolicy{..}
          = go project resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInterconnectGroupsSetIamPolicyResource)
                      Core.mempty

