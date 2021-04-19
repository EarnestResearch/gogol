{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Createtestreturn
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Creates a test return.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.createtestreturn@.
module Network.Google.Resource.Content.Orders.Createtestreturn
    (
    -- * REST Resource
      OrdersCreatetestreturnResource

    -- * Creating a Request
    , ordersCreatetestreturn
    , OrdersCreatetestreturn

    -- * Request Lenses
    , ordrMerchantId
    , ordrPayload
    , ordrOrderId
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.createtestreturn@ method which the
-- 'OrdersCreatetestreturn' request conforms to.
type OrdersCreatetestreturnResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "testreturn" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCreateTestReturnRequest :>
                     Post '[JSON] OrdersCreateTestReturnResponse

-- | Sandbox only. Creates a test return.
--
-- /See:/ 'ordersCreatetestreturn' smart constructor.
data OrdersCreatetestreturn =
  OrdersCreatetestreturn'
    { _ordrMerchantId :: !(Textual Word64)
    , _ordrPayload :: !OrdersCreateTestReturnRequest
    , _ordrOrderId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreatetestreturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordrMerchantId'
--
-- * 'ordrPayload'
--
-- * 'ordrOrderId'
ordersCreatetestreturn
    :: Word64 -- ^ 'ordrMerchantId'
    -> OrdersCreateTestReturnRequest -- ^ 'ordrPayload'
    -> Text -- ^ 'ordrOrderId'
    -> OrdersCreatetestreturn
ordersCreatetestreturn pOrdrMerchantId_ pOrdrPayload_ pOrdrOrderId_ =
  OrdersCreatetestreturn'
    { _ordrMerchantId = _Coerce # pOrdrMerchantId_
    , _ordrPayload = pOrdrPayload_
    , _ordrOrderId = pOrdrOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ordrMerchantId :: Lens' OrdersCreatetestreturn Word64
ordrMerchantId
  = lens _ordrMerchantId
      (\ s a -> s{_ordrMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ordrPayload :: Lens' OrdersCreatetestreturn OrdersCreateTestReturnRequest
ordrPayload
  = lens _ordrPayload (\ s a -> s{_ordrPayload = a})

-- | The ID of the order.
ordrOrderId :: Lens' OrdersCreatetestreturn Text
ordrOrderId
  = lens _ordrOrderId (\ s a -> s{_ordrOrderId = a})

instance GoogleRequest OrdersCreatetestreturn where
        type Rs OrdersCreatetestreturn =
             OrdersCreateTestReturnResponse
        type Scopes OrdersCreatetestreturn =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCreatetestreturn'{..}
          = go _ordrMerchantId _ordrOrderId (Just AltJSON)
              _ordrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCreatetestreturnResource)
                      mempty
