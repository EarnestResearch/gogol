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
-- Module      : Gogol.Compute.InterconnectAttachmentGroups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified InterconnectAttachmentGroup resource in the given scope.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectAttachmentGroups.get@.
module Gogol.Compute.InterconnectAttachmentGroups.Get
    (
    -- * Resource
      ComputeInterconnectAttachmentGroupsGetResource

    -- ** Constructing a Request
    , ComputeInterconnectAttachmentGroupsGet (..)
    , newComputeInterconnectAttachmentGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectAttachmentGroups.get@ method which the
-- 'ComputeInterconnectAttachmentGroupsGet' request conforms to.
type ComputeInterconnectAttachmentGroupsGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "interconnectAttachmentGroups" Core.:>
                 Core.Capture "interconnectAttachmentGroup" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] InterconnectAttachmentGroup

-- | Returns the specified InterconnectAttachmentGroup resource in the given scope.
--
-- /See:/ 'newComputeInterconnectAttachmentGroupsGet' smart constructor.
data ComputeInterconnectAttachmentGroupsGet = ComputeInterconnectAttachmentGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InterconnectAttachmentGroup resource to return.
    , interconnectAttachmentGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectAttachmentGroupsGet' with the minimum fields required to make a request.
newComputeInterconnectAttachmentGroupsGet 
    :: 
                                          Core.Text
       -- ^  Name of the InterconnectAttachmentGroup resource to return. See 'interconnectAttachmentGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectAttachmentGroupsGet
newComputeInterconnectAttachmentGroupsGet
  interconnectAttachmentGroup project
  = ComputeInterconnectAttachmentGroupsGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           interconnectAttachmentGroup =
                                             interconnectAttachmentGroup,
                                           project = project, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectAttachmentGroupsGet
         where
        type Rs ComputeInterconnectAttachmentGroupsGet =
             InterconnectAttachmentGroup
        type Scopes ComputeInterconnectAttachmentGroupsGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeInterconnectAttachmentGroupsGet{..}
          = go project interconnectAttachmentGroup xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInterconnectAttachmentGroupsGetResource)
                      Core.mempty

