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
-- Module      : Gogol.Compute.InterconnectGroups.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified InterconnectGroup resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectGroups.patch@.
module Gogol.Compute.InterconnectGroups.Patch
    (
    -- * Resource
      ComputeInterconnectGroupsPatchResource

    -- ** Constructing a Request
    , ComputeInterconnectGroupsPatch (..)
    , newComputeInterconnectGroupsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.interconnectGroups.patch@ method which the
-- 'ComputeInterconnectGroupsPatch' request conforms to.
type ComputeInterconnectGroupsPatchResource =
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
                           Core.QueryParam "updateMask" Core.FieldMask Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] InterconnectGroup Core.:>
                                     Core.Patch '[Core.JSON] Operation

-- | Patches the specified InterconnectGroup resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ 'newComputeInterconnectGroupsPatch' smart constructor.
data ComputeInterconnectGroupsPatch = ComputeInterconnectGroupsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InterconnectGroup resource to patch.
    , interconnectGroup :: Core.Text
      -- | Multipart request metadata.
    , payload :: InterconnectGroup
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

-- | Creates a value of 'ComputeInterconnectGroupsPatch' with the minimum fields required to make a request.
newComputeInterconnectGroupsPatch 
    :: 
                                  Core.Text
       -- ^  Name of the InterconnectGroup resource to patch. See 'interconnectGroup'.
    -> InterconnectGroup
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeInterconnectGroupsPatch
newComputeInterconnectGroupsPatch interconnectGroup payload project
  = ComputeInterconnectGroupsPatch{xgafv = Core.Nothing,
                                   accessToken = Core.Nothing, callback = Core.Nothing,
                                   interconnectGroup = interconnectGroup, payload = payload,
                                   project = project, requestId = Core.Nothing,
                                   updateMask = Core.Nothing, uploadType = Core.Nothing,
                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeInterconnectGroupsPatch where
        type Rs ComputeInterconnectGroupsPatch = Operation
        type Scopes ComputeInterconnectGroupsPatch =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInterconnectGroupsPatch{..}
          = go project interconnectGroup xgafv accessToken callback requestId
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeInterconnectGroupsPatchResource)
                      Core.mempty

