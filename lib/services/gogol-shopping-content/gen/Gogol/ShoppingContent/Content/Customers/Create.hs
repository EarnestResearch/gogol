{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Customers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows uploading one customer information entry. Adding a customer with loyalty data enables the customer to see personalized loyalty annotations on search. Uploading a previously existing customer will overwrite the old entry.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.customers.create@.
module Gogol.ShoppingContent.Content.Customers.Create
    (
    -- * Resource
      ContentCustomersCreateResource

    -- ** Constructing a Request
    , ContentCustomersCreate (..)
    , newContentCustomersCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.customers.create@ method which the
-- 'ContentCustomersCreate' request conforms to.
type ContentCustomersCreateResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "customers" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Customer Core.:>
                           Core.Post '[Core.JSON] Customer

-- | Allows uploading one customer information entry. Adding a customer with loyalty data enables the customer to see personalized loyalty annotations on search. Uploading a previously existing customer will overwrite the old entry.
--
-- /See:/ 'newContentCustomersCreate' smart constructor.
data ContentCustomersCreate = ContentCustomersCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the account that owns the customer information.
    , merchantId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: Customer
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCustomersCreate' with the minimum fields required to make a request.
newContentCustomersCreate 
    ::  Core.Int64
       -- ^  Required. The ID of the account that owns the customer information. See 'merchantId'.
    -> Customer
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentCustomersCreate
newContentCustomersCreate merchantId payload =
  ContentCustomersCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentCustomersCreate
         where
        type Rs ContentCustomersCreate = Customer
        type Scopes ContentCustomersCreate =
             '[Content'FullControl]
        requestClient ContentCustomersCreate{..}
          = go merchantId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentCustomersCreateResource)
                      Core.mempty

