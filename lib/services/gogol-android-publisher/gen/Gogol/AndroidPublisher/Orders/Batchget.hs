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
-- Module      : Gogol.AndroidPublisher.Orders.Batchget
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get order details for a list of orders.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.orders.batchget@.
module Gogol.AndroidPublisher.Orders.Batchget
    (
    -- * Resource
      AndroidPublisherOrdersBatchgetResource

    -- ** Constructing a Request
    , AndroidPublisherOrdersBatchget (..)
    , newAndroidPublisherOrdersBatchget
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.orders.batchget@ method which the
-- 'AndroidPublisherOrdersBatchget' request conforms to.
type AndroidPublisherOrdersBatchgetResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "orders:batchGet" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParams "orderIds" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] BatchGetOrdersResponse

-- | Get order details for a list of orders.
--
-- /See:/ 'newAndroidPublisherOrdersBatchget' smart constructor.
data AndroidPublisherOrdersBatchget = AndroidPublisherOrdersBatchget
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The list of order IDs to retrieve order details for. There must be between 1 and 1000 (inclusive) order IDs per request. If any order ID is not found or does not match the provided package, the entire request will fail with an error. The order IDs must be distinct.
    , orderIds :: (Core.Maybe [Core.Text])
      -- | Required. The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherOrdersBatchget' with the minimum fields required to make a request.
newAndroidPublisherOrdersBatchget 
    :: 
                                  Core.Text
       -- ^  Required. The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\'). See 'packageName'.
    -> AndroidPublisherOrdersBatchget
newAndroidPublisherOrdersBatchget packageName
  = AndroidPublisherOrdersBatchget{xgafv = Core.Nothing,
                                   accessToken = Core.Nothing, callback = Core.Nothing,
                                   orderIds = Core.Nothing, packageName = packageName,
                                   uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherOrdersBatchget where
        type Rs AndroidPublisherOrdersBatchget = BatchGetOrdersResponse
        type Scopes AndroidPublisherOrdersBatchget =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherOrdersBatchget{..}
          = go packageName xgafv accessToken callback
              (orderIds Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy AndroidPublisherOrdersBatchgetResource)
                      Core.mempty

