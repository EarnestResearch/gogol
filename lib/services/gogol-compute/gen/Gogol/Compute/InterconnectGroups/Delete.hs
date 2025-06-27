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
-- Module      : Gogol.Compute.InterconnectGroups.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified InterconnectGroup in the given scope
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.delete@.
module Gogol.Compute.InterconnectGroups.Delete
    (
    -- * Resource
      ComputeInterconnectGroupsDeleteResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsDelete (..)
    , newComputeInterconnectGroupsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.delete@ method which the
-- 'ComputeInterconnectGroupsDelete' request conforms to.
type ComputeInterconnectGroupsDeleteResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectGroups" Core.:>
                 Core.Capture "interconnectGroup" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] Operation

-- | Deletes the specified InterconnectGroup in the given scope
--
-- /See:/ 'newComputeInterconnectGroupsDelete' smart constructor.
data ComputeInterconnectGroupsDelete = ComputeInterconnectGroupsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InterconnectGroup resource to delete.
    , interconnectGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectGroupsDelete' with the minimum fields required to make a request.
newComputeInterconnectGroupsDelete 
    :: 
                                   Core.Text
       -- ^  Name of the InterconnectGroup resource to delete. See 'interconnectGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectGroupsDelete
newComputeInterconnectGroupsDelete interconnectGroup project
  = ComputeInterconnectGroupsDelete{xgafv = Core.Nothing,
                                    accessToken = Core.Nothing, callback = Core.Nothing,
                                    interconnectGroup = interconnectGroup, project = project,
                                    requestId = Core.Nothing, uploadType = Core.Nothing,
                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectGroupsDelete where
        type Rs ComputeInterconnectGroupsDelete = Operation
        type Scopes ComputeInterconnectGroupsDelete =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInterconnectGroupsDelete{..}
          = go project interconnectGroup xgafv accessToken callback requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeInterconnectGroupsDeleteResource)
                      Core.mempty

