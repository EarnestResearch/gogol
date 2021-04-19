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
-- Module      : Network.Google.Resource.Content.Orders.Returnlineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.returnlineitem@.
module Network.Google.Resource.Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemResource

    -- * Creating a Request
    , ordersReturnlineitem
    , OrdersReturnlineitem

    -- * Request Lenses
    , orrMerchantId
    , orrPayload
    , orrOrderId
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.returnlineitem@ method which the
-- 'OrdersReturnlineitem' request conforms to.
type OrdersReturnlineitemResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "returnLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersReturnLineItemRequest :>
                     Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem' smart constructor.
data OrdersReturnlineitem =
  OrdersReturnlineitem'
    { _orrMerchantId :: !(Textual Word64)
    , _orrPayload :: !OrdersReturnLineItemRequest
    , _orrOrderId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersReturnlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrMerchantId'
--
-- * 'orrPayload'
--
-- * 'orrOrderId'
ordersReturnlineitem
    :: Word64 -- ^ 'orrMerchantId'
    -> OrdersReturnLineItemRequest -- ^ 'orrPayload'
    -> Text -- ^ 'orrOrderId'
    -> OrdersReturnlineitem
ordersReturnlineitem pOrrMerchantId_ pOrrPayload_ pOrrOrderId_ =
  OrdersReturnlineitem'
    { _orrMerchantId = _Coerce # pOrrMerchantId_
    , _orrPayload = pOrrPayload_
    , _orrOrderId = pOrrOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orrMerchantId :: Lens' OrdersReturnlineitem Word64
orrMerchantId
  = lens _orrMerchantId
      (\ s a -> s{_orrMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
orrPayload :: Lens' OrdersReturnlineitem OrdersReturnLineItemRequest
orrPayload
  = lens _orrPayload (\ s a -> s{_orrPayload = a})

-- | The ID of the order.
orrOrderId :: Lens' OrdersReturnlineitem Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

instance GoogleRequest OrdersReturnlineitem where
        type Rs OrdersReturnlineitem =
             OrdersReturnLineItemResponse
        type Scopes OrdersReturnlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersReturnlineitem'{..}
          = go _orrMerchantId _orrOrderId (Just AltJSON)
              _orrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersReturnlineitemResource)
                      mempty
