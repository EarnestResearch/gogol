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
-- Module      : Network.Google.Resource.Content.Orders.Acknowledge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks an order as acknowledged.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.acknowledge@.
module Network.Google.Resource.Content.Orders.Acknowledge
    (
    -- * REST Resource
      OrdersAcknowledgeResource

    -- * Creating a Request
    , ordersAcknowledge
    , OrdersAcknowledge

    -- * Request Lenses
    , oaXgafv
    , oaMerchantId
    , oaUploadProtocol
    , oaAccessToken
    , oaUploadType
    , oaPayload
    , oaOrderId
    , oaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.acknowledge@ method which the
-- 'OrdersAcknowledge' request conforms to.
type OrdersAcknowledgeResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "acknowledge" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersAcknowledgeRequest :>
                               Post '[JSON] OrdersAcknowledgeResponse

-- | Marks an order as acknowledged.
--
-- /See:/ 'ordersAcknowledge' smart constructor.
data OrdersAcknowledge =
  OrdersAcknowledge'
    { _oaXgafv :: !(Maybe Xgafv)
    , _oaMerchantId :: !(Textual Word64)
    , _oaUploadProtocol :: !(Maybe Text)
    , _oaAccessToken :: !(Maybe Text)
    , _oaUploadType :: !(Maybe Text)
    , _oaPayload :: !OrdersAcknowledgeRequest
    , _oaOrderId :: !Text
    , _oaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaXgafv'
--
-- * 'oaMerchantId'
--
-- * 'oaUploadProtocol'
--
-- * 'oaAccessToken'
--
-- * 'oaUploadType'
--
-- * 'oaPayload'
--
-- * 'oaOrderId'
--
-- * 'oaCallback'
ordersAcknowledge
    :: Word64 -- ^ 'oaMerchantId'
    -> OrdersAcknowledgeRequest -- ^ 'oaPayload'
    -> Text -- ^ 'oaOrderId'
    -> OrdersAcknowledge
ordersAcknowledge pOaMerchantId_ pOaPayload_ pOaOrderId_ =
  OrdersAcknowledge'
    { _oaXgafv = Nothing
    , _oaMerchantId = _Coerce # pOaMerchantId_
    , _oaUploadProtocol = Nothing
    , _oaAccessToken = Nothing
    , _oaUploadType = Nothing
    , _oaPayload = pOaPayload_
    , _oaOrderId = pOaOrderId_
    , _oaCallback = Nothing
    }


-- | V1 error format.
oaXgafv :: Lens' OrdersAcknowledge (Maybe Xgafv)
oaXgafv = lens _oaXgafv (\ s a -> s{_oaXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oaMerchantId :: Lens' OrdersAcknowledge Word64
oaMerchantId
  = lens _oaMerchantId (\ s a -> s{_oaMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oaUploadProtocol :: Lens' OrdersAcknowledge (Maybe Text)
oaUploadProtocol
  = lens _oaUploadProtocol
      (\ s a -> s{_oaUploadProtocol = a})

-- | OAuth access token.
oaAccessToken :: Lens' OrdersAcknowledge (Maybe Text)
oaAccessToken
  = lens _oaAccessToken
      (\ s a -> s{_oaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oaUploadType :: Lens' OrdersAcknowledge (Maybe Text)
oaUploadType
  = lens _oaUploadType (\ s a -> s{_oaUploadType = a})

-- | Multipart request metadata.
oaPayload :: Lens' OrdersAcknowledge OrdersAcknowledgeRequest
oaPayload
  = lens _oaPayload (\ s a -> s{_oaPayload = a})

-- | The ID of the order.
oaOrderId :: Lens' OrdersAcknowledge Text
oaOrderId
  = lens _oaOrderId (\ s a -> s{_oaOrderId = a})

-- | JSONP
oaCallback :: Lens' OrdersAcknowledge (Maybe Text)
oaCallback
  = lens _oaCallback (\ s a -> s{_oaCallback = a})

instance GoogleRequest OrdersAcknowledge where
        type Rs OrdersAcknowledge = OrdersAcknowledgeResponse
        type Scopes OrdersAcknowledge =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersAcknowledge'{..}
          = go _oaMerchantId _oaOrderId _oaXgafv
              _oaUploadProtocol
              _oaAccessToken
              _oaUploadType
              _oaCallback
              (Just AltJSON)
              _oaPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersAcknowledgeResource)
                      mempty
