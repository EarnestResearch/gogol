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
-- Module      : Gogol.Compute.ReservationSubBlocks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified reservation subBlock.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.reservationSubBlocks.get@.
module Gogol.Compute.ReservationSubBlocks.Get
    (
    -- * Resource
      ComputeReservationSubBlocksGetResource

    -- ** Constructing a Request
    , ComputeReservationSubBlocksGet (..)
    , newComputeReservationSubBlocksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.reservationSubBlocks.get@ method which the
-- 'ComputeReservationSubBlocksGet' request conforms to.
type ComputeReservationSubBlocksGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 Core.Capture "parentName" Core.Text Core.:>
                   "reservationSubBlocks" Core.:>
                     Core.Capture "reservationSubBlock" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] ReservationSubBlocksGetResponse

-- | Retrieves information about the specified reservation subBlock.
--
-- /See:/ 'newComputeReservationSubBlocksGet' smart constructor.
data ComputeReservationSubBlocksGet = ComputeReservationSubBlocksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the parent reservation and parent block. In the format of reservations\/{reservation/name}\/reservationBlocks\/{reservation/block_name}
    , parentName :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the reservation subBlock. Name should conform to RFC1035 or be a resource ID.
    , reservationSubBlock :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone for this request. Zone name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeReservationSubBlocksGet' with the minimum fields required to make a request.
newComputeReservationSubBlocksGet 
    :: 
                                  Core.Text
       -- ^  The name of the parent reservation and parent block. In the format of reservations\/{reservation/name}\/reservationBlocks\/{reservation/block_name} See 'parentName'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the reservation subBlock. Name should conform to RFC1035 or be a resource ID. See 'reservationSubBlock'.
    -> Core.Text
       -- ^  Name of the zone for this request. Zone name should conform to RFC1035. See 'zone'.
    -> ComputeReservationSubBlocksGet
newComputeReservationSubBlocksGet parentName project
  reservationSubBlock zone
  = ComputeReservationSubBlocksGet{xgafv = Core.Nothing,
                                   accessToken = Core.Nothing, callback = Core.Nothing,
                                   parentName = parentName, project = project,
                                   reservationSubBlock = reservationSubBlock,
                                   uploadType = Core.Nothing, uploadProtocol = Core.Nothing,
                                   zone = zone}
instance Core.GoogleRequest ComputeReservationSubBlocksGet where
        type Rs ComputeReservationSubBlocksGet =
             ReservationSubBlocksGetResponse
        type Scopes ComputeReservationSubBlocksGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeReservationSubBlocksGet{..}
          = go project zone parentName reservationSubBlock xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeReservationSubBlocksGetResource)
                      Core.mempty

