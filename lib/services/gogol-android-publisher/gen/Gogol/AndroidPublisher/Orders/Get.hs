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
-- Module      : Gogol.AndroidPublisher.Orders.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get order details for a single order.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.orders.get@.
module Gogol.AndroidPublisher.Orders.Get
    (
    -- * Resource
      AndroidPublisherOrdersGetResource

    -- ** Constructing a Request
    , AndroidPublisherOrdersGet (..)
    , newAndroidPublisherOrdersGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.orders.get@ method which the
-- 'AndroidPublisherOrdersGet' request conforms to.
type AndroidPublisherOrdersGetResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "orders" Core.:>
               Core.Capture "orderId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] Order

-- | Get order details for a single order.
--
-- /See:/ 'newAndroidPublisherOrdersGet' smart constructor.
data AndroidPublisherOrdersGet = AndroidPublisherOrdersGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The order ID provided to the user when the subscription or in-app order was purchased.
    , orderId :: Core.Text
      -- | Required. The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherOrdersGet' with the minimum fields required to make a request.
newAndroidPublisherOrdersGet 
    :: 
                             Core.Text
       -- ^  Required. The order ID provided to the user when the subscription or in-app order was purchased. See 'orderId'.
    -> Core.Text
       -- ^  Required. The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\'). See 'packageName'.
    -> AndroidPublisherOrdersGet
newAndroidPublisherOrdersGet orderId packageName
  = AndroidPublisherOrdersGet{xgafv = Core.Nothing,
                              accessToken = Core.Nothing, callback = Core.Nothing,
                              orderId = orderId, packageName = packageName,
                              uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherOrdersGet where
        type Rs AndroidPublisherOrdersGet = Order
        type Scopes AndroidPublisherOrdersGet =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherOrdersGet{..}
          = go packageName orderId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy AndroidPublisherOrdersGetResource)
                      Core.mempty

