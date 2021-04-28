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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.createtestreturn@.
module Network.Google.Resource.Content.Orders.Createtestreturn
    (
    -- * REST Resource
      OrdersCreatetestreturnResource

    -- * Creating a Request
    , ordersCreatetestreturn
    , OrdersCreatetestreturn

    -- * Request Lenses
    , ooXgafv
    , ooMerchantId
    , ooUploadProtocol
    , ooAccessToken
    , ooUploadType
    , ooPayload
    , ooOrderId
    , ooCallback
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
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersCreateTestReturnRequest :>
                               Post '[JSON] OrdersCreateTestReturnResponse

-- | Sandbox only. Creates a test return.
--
-- /See:/ 'ordersCreatetestreturn' smart constructor.
data OrdersCreatetestreturn =
  OrdersCreatetestreturn'
    { _ooXgafv :: !(Maybe Xgafv)
    , _ooMerchantId :: !(Textual Word64)
    , _ooUploadProtocol :: !(Maybe Text)
    , _ooAccessToken :: !(Maybe Text)
    , _ooUploadType :: !(Maybe Text)
    , _ooPayload :: !OrdersCreateTestReturnRequest
    , _ooOrderId :: !Text
    , _ooCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreatetestreturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooXgafv'
--
-- * 'ooMerchantId'
--
-- * 'ooUploadProtocol'
--
-- * 'ooAccessToken'
--
-- * 'ooUploadType'
--
-- * 'ooPayload'
--
-- * 'ooOrderId'
--
-- * 'ooCallback'
ordersCreatetestreturn
    :: Word64 -- ^ 'ooMerchantId'
    -> OrdersCreateTestReturnRequest -- ^ 'ooPayload'
    -> Text -- ^ 'ooOrderId'
    -> OrdersCreatetestreturn
ordersCreatetestreturn pOoMerchantId_ pOoPayload_ pOoOrderId_ =
  OrdersCreatetestreturn'
    { _ooXgafv = Nothing
    , _ooMerchantId = _Coerce # pOoMerchantId_
    , _ooUploadProtocol = Nothing
    , _ooAccessToken = Nothing
    , _ooUploadType = Nothing
    , _ooPayload = pOoPayload_
    , _ooOrderId = pOoOrderId_
    , _ooCallback = Nothing
    }


-- | V1 error format.
ooXgafv :: Lens' OrdersCreatetestreturn (Maybe Xgafv)
ooXgafv = lens _ooXgafv (\ s a -> s{_ooXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ooMerchantId :: Lens' OrdersCreatetestreturn Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ooUploadProtocol :: Lens' OrdersCreatetestreturn (Maybe Text)
ooUploadProtocol
  = lens _ooUploadProtocol
      (\ s a -> s{_ooUploadProtocol = a})

-- | OAuth access token.
ooAccessToken :: Lens' OrdersCreatetestreturn (Maybe Text)
ooAccessToken
  = lens _ooAccessToken
      (\ s a -> s{_ooAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ooUploadType :: Lens' OrdersCreatetestreturn (Maybe Text)
ooUploadType
  = lens _ooUploadType (\ s a -> s{_ooUploadType = a})

-- | Multipart request metadata.
ooPayload :: Lens' OrdersCreatetestreturn OrdersCreateTestReturnRequest
ooPayload
  = lens _ooPayload (\ s a -> s{_ooPayload = a})

-- | The ID of the order.
ooOrderId :: Lens' OrdersCreatetestreturn Text
ooOrderId
  = lens _ooOrderId (\ s a -> s{_ooOrderId = a})

-- | JSONP
ooCallback :: Lens' OrdersCreatetestreturn (Maybe Text)
ooCallback
  = lens _ooCallback (\ s a -> s{_ooCallback = a})

instance GoogleRequest OrdersCreatetestreturn where
        type Rs OrdersCreatetestreturn =
             OrdersCreateTestReturnResponse
        type Scopes OrdersCreatetestreturn =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCreatetestreturn'{..}
          = go _ooMerchantId _ooOrderId _ooXgafv
              _ooUploadProtocol
              _ooAccessToken
              _ooUploadType
              _ooCallback
              (Just AltJSON)
              _ooPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCreatetestreturnResource)
                      mempty
