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
-- Module      : Gogol.Compute.ReservationBlocks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified reservation block.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.reservationBlocks.get@.
module Gogol.Compute.ReservationBlocks.Get
    (
    -- * Resource
      ComputeReservationBlocksGetResource

    -- ** Constructing a Request
    , ComputeReservationBlocksGet (..)
    , newComputeReservationBlocksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.reservationBlocks.get@ method which the
-- 'ComputeReservationBlocksGet' request conforms to.
type ComputeReservationBlocksGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "reservations" Core.:>
                   Core.Capture "reservation" Core.Text Core.:>
                     "reservationBlocks" Core.:>
                       Core.Capture "reservationBlock" Core.Text Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] ReservationBlocksGetResponse

-- | Retrieves information about the specified reservation block.
--
-- /See:/ 'newComputeReservationBlocksGet' smart constructor.
data ComputeReservationBlocksGet = ComputeReservationBlocksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the reservation. Name should conform to RFC1035 or be a resource ID.
    , reservation :: Core.Text
      -- | The name of the reservation block. Name should conform to RFC1035 or be a resource ID.
    , reservationBlock :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone for this request. Zone name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeReservationBlocksGet' with the minimum fields required to make a request.
newComputeReservationBlocksGet 
    :: 
                               Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the reservation. Name should conform to RFC1035 or be a resource ID. See 'reservation'.
    -> Core.Text
       -- ^  The name of the reservation block. Name should conform to RFC1035 or be a resource ID. See 'reservationBlock'.
    -> Core.Text
       -- ^  Name of the zone for this request. Zone name should conform to RFC1035. See 'zone'.
    -> ComputeReservationBlocksGet
newComputeReservationBlocksGet project reservation reservationBlock
  zone
  = ComputeReservationBlocksGet{xgafv = Core.Nothing,
                                accessToken = Core.Nothing, callback = Core.Nothing,
                                project = project, reservation = reservation,
                                reservationBlock = reservationBlock, uploadType = Core.Nothing,
                                uploadProtocol = Core.Nothing, zone = zone}
instance Core.GoogleRequest ComputeReservationBlocksGet where
        type Rs ComputeReservationBlocksGet = ReservationBlocksGetResponse
        type Scopes ComputeReservationBlocksGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeReservationBlocksGet{..}
          = go project zone reservation reservationBlock xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeReservationBlocksGetResource)
                      Core.mempty

