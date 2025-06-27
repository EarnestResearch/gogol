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
-- Module      : Gogol.Compute.InterconnectAttachmentGroups.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectAttachmentGroups.testIamPermissions@.
module Gogol.Compute.InterconnectAttachmentGroups.TestIamPermissions
    (
    -- * Resource
      ComputeInterconnectAttachmentGroupsTestIamPermissionsResource

    -- ** Constructing a Request
    , ComputeInterconnectAttachmentGroupsTestIamPermissions (..)
    , newComputeInterconnectAttachmentGroupsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectAttachmentGroups.testIamPermissions@ method which the
-- 'ComputeInterconnectAttachmentGroupsTestIamPermissions' request conforms to.
type ComputeInterconnectAttachmentGroupsTestIamPermissionsResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectAttachmentGroups" Core.:>
                 Core.Capture "resource" Core.Text Core.:>
                   "testIamPermissions" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] TestPermissionsRequest Core.:>
                                   Core.Post '[Core.JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'newComputeInterconnectAttachmentGroupsTestIamPermissions' smart constructor.
data ComputeInterconnectAttachmentGroupsTestIamPermissions = ComputeInterconnectAttachmentGroupsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestPermissionsRequest
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

-- | Creates a value of 'ComputeInterconnectAttachmentGroupsTestIamPermissions' with the minimum fields required to make a request.
newComputeInterconnectAttachmentGroupsTestIamPermissions 
    :: 
                                                         TestPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeInterconnectAttachmentGroupsTestIamPermissions
newComputeInterconnectAttachmentGroupsTestIamPermissions payload
  project resource
  = ComputeInterconnectAttachmentGroupsTestIamPermissions{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing,
                                                          payload = payload, project = project,
                                                          resource = resource,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeInterconnectAttachmentGroupsTestIamPermissions
         where
        type Rs ComputeInterconnectAttachmentGroupsTestIamPermissions =
             TestPermissionsResponse
        type Scopes ComputeInterconnectAttachmentGroupsTestIamPermissions =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient
          ComputeInterconnectAttachmentGroupsTestIamPermissions{..}
          = go project resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInterconnectAttachmentGroupsTestIamPermissionsResource)
                      Core.mempty

