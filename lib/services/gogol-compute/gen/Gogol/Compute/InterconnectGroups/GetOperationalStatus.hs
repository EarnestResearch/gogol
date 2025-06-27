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
-- Module      : Gogol.Compute.InterconnectGroups.GetOperationalStatus
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the interconnectStatuses for the specified InterconnectGroup.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.getOperationalStatus@.
module Gogol.Compute.InterconnectGroups.GetOperationalStatus
    (
    -- * Resource
      ComputeInterconnectGroupsGetOperationalStatusResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsGetOperationalStatus (..)
    , newComputeInterconnectGroupsGetOperationalStatus
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.getOperationalStatus@ method which the
-- 'ComputeInterconnectGroupsGetOperationalStatus' request conforms to.
type ComputeInterconnectGroupsGetOperationalStatusResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectGroups" Core.:>
                 Core.Capture "interconnectGroup" Core.Text Core.:>
                   "getOperationalStatus" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON]
                                   InterconnectGroupsGetOperationalStatusResponse

-- | Returns the interconnectStatuses for the specified InterconnectGroup.
--
-- /See:/ 'newComputeInterconnectGroupsGetOperationalStatus' smart constructor.
data ComputeInterconnectGroupsGetOperationalStatus = ComputeInterconnectGroupsGetOperationalStatus
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the interconnectGroup resource to query.
    , interconnectGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectGroupsGetOperationalStatus' with the minimum fields required to make a request.
newComputeInterconnectGroupsGetOperationalStatus 
    :: 
                                                 Core.Text
       -- ^  Name of the interconnectGroup resource to query. See 'interconnectGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectGroupsGetOperationalStatus
newComputeInterconnectGroupsGetOperationalStatus interconnectGroup
  project
  = ComputeInterconnectGroupsGetOperationalStatus{xgafv =
                                                    Core.Nothing,
                                                  accessToken = Core.Nothing,
                                                  callback = Core.Nothing,
                                                  interconnectGroup = interconnectGroup,
                                                  project = project, uploadType = Core.Nothing,
                                                  uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeInterconnectGroupsGetOperationalStatus
         where
        type Rs ComputeInterconnectGroupsGetOperationalStatus =
             InterconnectGroupsGetOperationalStatusResponse
        type Scopes ComputeInterconnectGroupsGetOperationalStatus =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeInterconnectGroupsGetOperationalStatus{..}
          = go project interconnectGroup xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInterconnectGroupsGetOperationalStatusResource)
                      Core.mempty

