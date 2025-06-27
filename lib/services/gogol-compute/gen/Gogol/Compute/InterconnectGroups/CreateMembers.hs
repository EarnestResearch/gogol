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
-- Module      : Gogol.Compute.InterconnectGroups.CreateMembers
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create Interconnects with redundancy by creating them in a specified interconnect group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.createMembers@.
module Gogol.Compute.InterconnectGroups.CreateMembers
    (
    -- * Resource
      ComputeInterconnectGroupsCreateMembersResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsCreateMembers (..)
    , newComputeInterconnectGroupsCreateMembers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.createMembers@ method which the
-- 'ComputeInterconnectGroupsCreateMembers' request conforms to.
type ComputeInterconnectGroupsCreateMembersResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectGroups" Core.:>
                 Core.Capture "interconnectGroup" Core.Text Core.:>
                   "createMembers" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] InterconnectGroupsCreateMembersRequest
                                   Core.:> Core.Post '[Core.JSON] Operation

-- | Create Interconnects with redundancy by creating them in a specified interconnect group.
--
-- /See:/ 'newComputeInterconnectGroupsCreateMembers' smart constructor.
data ComputeInterconnectGroupsCreateMembers = ComputeInterconnectGroupsCreateMembers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the group resource to create members for.
    , interconnectGroup :: Core.Text
      -- | Multipart request metadata.
    , payload :: InterconnectGroupsCreateMembersRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectGroupsCreateMembers' with the minimum fields required to make a request.
newComputeInterconnectGroupsCreateMembers 
    :: 
                                          Core.Text
       -- ^  Name of the group resource to create members for. See 'interconnectGroup'.
    -> InterconnectGroupsCreateMembersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectGroupsCreateMembers
newComputeInterconnectGroupsCreateMembers interconnectGroup payload
  project
  = ComputeInterconnectGroupsCreateMembers{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           interconnectGroup = interconnectGroup, payload = payload,
                                           project = project, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectGroupsCreateMembers
         where
        type Rs ComputeInterconnectGroupsCreateMembers = Operation
        type Scopes ComputeInterconnectGroupsCreateMembers =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInterconnectGroupsCreateMembers{..}
          = go project interconnectGroup xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInterconnectGroupsCreateMembersResource)
                      Core.mempty

