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
-- Module      : Gogol.Compute.InterconnectAttachmentGroups.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified InterconnectAttachmentGroup resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectAttachmentGroups.patch@.
module Gogol.Compute.InterconnectAttachmentGroups.Patch
    (
    -- * Resource
      ComputeInterconnectAttachmentGroupsPatchResource

    -- ** Constructing a Request
    , ComputeInterconnectAttachmentGroupsPatch (..)
    , newComputeInterconnectAttachmentGroupsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectAttachmentGroups.patch@ method which the
-- 'ComputeInterconnectAttachmentGroupsPatch' request conforms to.
type ComputeInterconnectAttachmentGroupsPatchResource =
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
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "updateMask" Core.FieldMask Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] InterconnectAttachmentGroup Core.:>
                                     Core.Patch '[Core.JSON] Operation

-- | Patches the specified InterconnectAttachmentGroup resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ 'newComputeInterconnectAttachmentGroupsPatch' smart constructor.
data ComputeInterconnectAttachmentGroupsPatch = ComputeInterconnectAttachmentGroupsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InterconnectAttachmentGroup resource to patch.
    , interconnectAttachmentGroup :: Core.Text
      -- | Multipart request metadata.
    , payload :: InterconnectAttachmentGroup
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
    , requestId :: (Core.Maybe Core.Text)
      -- | The list of fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectAttachmentGroupsPatch' with the minimum fields required to make a request.
newComputeInterconnectAttachmentGroupsPatch 
    :: 
                                            Core.Text
       -- ^  Name of the InterconnectAttachmentGroup resource to patch. See 'interconnectAttachmentGroup'.
    -> InterconnectAttachmentGroup
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectAttachmentGroupsPatch
newComputeInterconnectAttachmentGroupsPatch
  interconnectAttachmentGroup payload project
  = ComputeInterconnectAttachmentGroupsPatch{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             interconnectAttachmentGroup =
                                               interconnectAttachmentGroup,
                                             payload = payload, project = project,
                                             requestId = Core.Nothing, updateMask = Core.Nothing,
                                             uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeInterconnectAttachmentGroupsPatch
         where
        type Rs ComputeInterconnectAttachmentGroupsPatch = Operation
        type Scopes ComputeInterconnectAttachmentGroupsPatch =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInterconnectAttachmentGroupsPatch{..}
          = go project interconnectAttachmentGroup xgafv accessToken callback
              requestId
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInterconnectAttachmentGroupsPatchResource)
                      Core.mempty

