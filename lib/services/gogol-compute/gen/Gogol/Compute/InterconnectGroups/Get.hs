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
-- Module      : Gogol.Compute.InterconnectGroups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified InterconnectGroup resource in the given scope.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.get@.
module Gogol.Compute.InterconnectGroups.Get
    (
    -- * Resource
      ComputeInterconnectGroupsGetResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsGet (..)
    , newComputeInterconnectGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.get@ method which the
-- 'ComputeInterconnectGroupsGet' request conforms to.
type ComputeInterconnectGroupsGetResource =
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
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] InterconnectGroup

-- | Returns the specified InterconnectGroup resource in the given scope.
--
-- /See:/ 'newComputeInterconnectGroupsGet' smart constructor.
data ComputeInterconnectGroupsGet = ComputeInterconnectGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InterconnectGroup resource to return.
    , interconnectGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectGroupsGet' with the minimum fields required to make a request.
newComputeInterconnectGroupsGet 
    :: 
                                Core.Text
       -- ^  Name of the InterconnectGroup resource to return. See 'interconnectGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectGroupsGet
newComputeInterconnectGroupsGet interconnectGroup project
  = ComputeInterconnectGroupsGet{xgafv = Core.Nothing,
                                 accessToken = Core.Nothing, callback = Core.Nothing,
                                 interconnectGroup = interconnectGroup, project = project,
                                 uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectGroupsGet where
        type Rs ComputeInterconnectGroupsGet = InterconnectGroup
        type Scopes ComputeInterconnectGroupsGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeInterconnectGroupsGet{..}
          = go project interconnectGroup xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeInterconnectGroupsGetResource)
                      Core.mempty

