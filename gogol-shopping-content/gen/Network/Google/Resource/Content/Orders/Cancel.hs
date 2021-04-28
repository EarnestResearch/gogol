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
-- Module      : Network.Google.Resource.Content.Orders.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels all line items in an order, making a full refund.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.cancel@.
module Network.Google.Resource.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelResource

    -- * Creating a Request
    , ordersCancel
    , OrdersCancel

    -- * Request Lenses
    , o1Xgafv
    , o1MerchantId
    , o1UploadProtocol
    , o1AccessToken
    , o1UploadType
    , o1Payload
    , o1OrderId
    , o1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancel@ method which the
-- 'OrdersCancel' request conforms to.
type OrdersCancelResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "cancel" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersCancelRequest :>
                               Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order, making a full refund.
--
-- /See:/ 'ordersCancel' smart constructor.
data OrdersCancel =
  OrdersCancel'
    { _o1Xgafv :: !(Maybe Xgafv)
    , _o1MerchantId :: !(Textual Word64)
    , _o1UploadProtocol :: !(Maybe Text)
    , _o1AccessToken :: !(Maybe Text)
    , _o1UploadType :: !(Maybe Text)
    , _o1Payload :: !OrdersCancelRequest
    , _o1OrderId :: !Text
    , _o1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'o1Xgafv'
--
-- * 'o1MerchantId'
--
-- * 'o1UploadProtocol'
--
-- * 'o1AccessToken'
--
-- * 'o1UploadType'
--
-- * 'o1Payload'
--
-- * 'o1OrderId'
--
-- * 'o1Callback'
ordersCancel
    :: Word64 -- ^ 'o1MerchantId'
    -> OrdersCancelRequest -- ^ 'o1Payload'
    -> Text -- ^ 'o1OrderId'
    -> OrdersCancel
ordersCancel pO1MerchantId_ pO1Payload_ pO1OrderId_ =
  OrdersCancel'
    { _o1Xgafv = Nothing
    , _o1MerchantId = _Coerce # pO1MerchantId_
    , _o1UploadProtocol = Nothing
    , _o1AccessToken = Nothing
    , _o1UploadType = Nothing
    , _o1Payload = pO1Payload_
    , _o1OrderId = pO1OrderId_
    , _o1Callback = Nothing
    }


-- | V1 error format.
o1Xgafv :: Lens' OrdersCancel (Maybe Xgafv)
o1Xgafv = lens _o1Xgafv (\ s a -> s{_o1Xgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
o1MerchantId :: Lens' OrdersCancel Word64
o1MerchantId
  = lens _o1MerchantId (\ s a -> s{_o1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
o1UploadProtocol :: Lens' OrdersCancel (Maybe Text)
o1UploadProtocol
  = lens _o1UploadProtocol
      (\ s a -> s{_o1UploadProtocol = a})

-- | OAuth access token.
o1AccessToken :: Lens' OrdersCancel (Maybe Text)
o1AccessToken
  = lens _o1AccessToken
      (\ s a -> s{_o1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
o1UploadType :: Lens' OrdersCancel (Maybe Text)
o1UploadType
  = lens _o1UploadType (\ s a -> s{_o1UploadType = a})

-- | Multipart request metadata.
o1Payload :: Lens' OrdersCancel OrdersCancelRequest
o1Payload
  = lens _o1Payload (\ s a -> s{_o1Payload = a})

-- | The ID of the order to cancel.
o1OrderId :: Lens' OrdersCancel Text
o1OrderId
  = lens _o1OrderId (\ s a -> s{_o1OrderId = a})

-- | JSONP
o1Callback :: Lens' OrdersCancel (Maybe Text)
o1Callback
  = lens _o1Callback (\ s a -> s{_o1Callback = a})

instance GoogleRequest OrdersCancel where
        type Rs OrdersCancel = OrdersCancelResponse
        type Scopes OrdersCancel =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCancel'{..}
          = go _o1MerchantId _o1OrderId _o1Xgafv
              _o1UploadProtocol
              _o1AccessToken
              _o1UploadType
              _o1Callback
              (Just AltJSON)
              _o1Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersCancelResource)
                      mempty
