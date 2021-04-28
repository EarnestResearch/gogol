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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.returnlineitem@.
module Network.Google.Resource.Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemResource

    -- * Creating a Request
    , ordersReturnlineitem
    , OrdersReturnlineitem

    -- * Request Lenses
    , orrXgafv
    , orrMerchantId
    , orrUploadProtocol
    , orrAccessToken
    , orrUploadType
    , orrPayload
    , orrOrderId
    , orrCallback
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
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersReturnLineItemRequest :>
                               Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem' smart constructor.
data OrdersReturnlineitem =
  OrdersReturnlineitem'
    { _orrXgafv :: !(Maybe Xgafv)
    , _orrMerchantId :: !(Textual Word64)
    , _orrUploadProtocol :: !(Maybe Text)
    , _orrAccessToken :: !(Maybe Text)
    , _orrUploadType :: !(Maybe Text)
    , _orrPayload :: !OrdersReturnLineItemRequest
    , _orrOrderId :: !Text
    , _orrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersReturnlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrXgafv'
--
-- * 'orrMerchantId'
--
-- * 'orrUploadProtocol'
--
-- * 'orrAccessToken'
--
-- * 'orrUploadType'
--
-- * 'orrPayload'
--
-- * 'orrOrderId'
--
-- * 'orrCallback'
ordersReturnlineitem
    :: Word64 -- ^ 'orrMerchantId'
    -> OrdersReturnLineItemRequest -- ^ 'orrPayload'
    -> Text -- ^ 'orrOrderId'
    -> OrdersReturnlineitem
ordersReturnlineitem pOrrMerchantId_ pOrrPayload_ pOrrOrderId_ =
  OrdersReturnlineitem'
    { _orrXgafv = Nothing
    , _orrMerchantId = _Coerce # pOrrMerchantId_
    , _orrUploadProtocol = Nothing
    , _orrAccessToken = Nothing
    , _orrUploadType = Nothing
    , _orrPayload = pOrrPayload_
    , _orrOrderId = pOrrOrderId_
    , _orrCallback = Nothing
    }


-- | V1 error format.
orrXgafv :: Lens' OrdersReturnlineitem (Maybe Xgafv)
orrXgafv = lens _orrXgafv (\ s a -> s{_orrXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orrMerchantId :: Lens' OrdersReturnlineitem Word64
orrMerchantId
  = lens _orrMerchantId
      (\ s a -> s{_orrMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orrUploadProtocol :: Lens' OrdersReturnlineitem (Maybe Text)
orrUploadProtocol
  = lens _orrUploadProtocol
      (\ s a -> s{_orrUploadProtocol = a})

-- | OAuth access token.
orrAccessToken :: Lens' OrdersReturnlineitem (Maybe Text)
orrAccessToken
  = lens _orrAccessToken
      (\ s a -> s{_orrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orrUploadType :: Lens' OrdersReturnlineitem (Maybe Text)
orrUploadType
  = lens _orrUploadType
      (\ s a -> s{_orrUploadType = a})

-- | Multipart request metadata.
orrPayload :: Lens' OrdersReturnlineitem OrdersReturnLineItemRequest
orrPayload
  = lens _orrPayload (\ s a -> s{_orrPayload = a})

-- | The ID of the order.
orrOrderId :: Lens' OrdersReturnlineitem Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

-- | JSONP
orrCallback :: Lens' OrdersReturnlineitem (Maybe Text)
orrCallback
  = lens _orrCallback (\ s a -> s{_orrCallback = a})

instance GoogleRequest OrdersReturnlineitem where
        type Rs OrdersReturnlineitem =
             OrdersReturnLineItemResponse
        type Scopes OrdersReturnlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersReturnlineitem'{..}
          = go _orrMerchantId _orrOrderId _orrXgafv
              _orrUploadProtocol
              _orrAccessToken
              _orrUploadType
              _orrCallback
              (Just AltJSON)
              _orrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersReturnlineitemResource)
                      mempty
