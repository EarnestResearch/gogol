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
-- Module      : Network.Google.Resource.Content.Orders.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves or modifies multiple orders in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.custombatch@.
module Network.Google.Resource.Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchResource

    -- * Creating a Request
    , ordersCustombatch
    , OrdersCustombatch

    -- * Request Lenses
    , ordXgafv
    , ordUploadProtocol
    , ordAccessToken
    , ordUploadType
    , ordPayload
    , ordCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.custombatch@ method which the
-- 'OrdersCustombatch' request conforms to.
type OrdersCustombatchResource =
     "content" :>
       "v2" :>
         "orders" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] OrdersCustomBatchRequest :>
                           Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ 'ordersCustombatch' smart constructor.
data OrdersCustombatch =
  OrdersCustombatch'
    { _ordXgafv :: !(Maybe Xgafv)
    , _ordUploadProtocol :: !(Maybe Text)
    , _ordAccessToken :: !(Maybe Text)
    , _ordUploadType :: !(Maybe Text)
    , _ordPayload :: !OrdersCustomBatchRequest
    , _ordCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordXgafv'
--
-- * 'ordUploadProtocol'
--
-- * 'ordAccessToken'
--
-- * 'ordUploadType'
--
-- * 'ordPayload'
--
-- * 'ordCallback'
ordersCustombatch
    :: OrdersCustomBatchRequest -- ^ 'ordPayload'
    -> OrdersCustombatch
ordersCustombatch pOrdPayload_ =
  OrdersCustombatch'
    { _ordXgafv = Nothing
    , _ordUploadProtocol = Nothing
    , _ordAccessToken = Nothing
    , _ordUploadType = Nothing
    , _ordPayload = pOrdPayload_
    , _ordCallback = Nothing
    }


-- | V1 error format.
ordXgafv :: Lens' OrdersCustombatch (Maybe Xgafv)
ordXgafv = lens _ordXgafv (\ s a -> s{_ordXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ordUploadProtocol :: Lens' OrdersCustombatch (Maybe Text)
ordUploadProtocol
  = lens _ordUploadProtocol
      (\ s a -> s{_ordUploadProtocol = a})

-- | OAuth access token.
ordAccessToken :: Lens' OrdersCustombatch (Maybe Text)
ordAccessToken
  = lens _ordAccessToken
      (\ s a -> s{_ordAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ordUploadType :: Lens' OrdersCustombatch (Maybe Text)
ordUploadType
  = lens _ordUploadType
      (\ s a -> s{_ordUploadType = a})

-- | Multipart request metadata.
ordPayload :: Lens' OrdersCustombatch OrdersCustomBatchRequest
ordPayload
  = lens _ordPayload (\ s a -> s{_ordPayload = a})

-- | JSONP
ordCallback :: Lens' OrdersCustombatch (Maybe Text)
ordCallback
  = lens _ordCallback (\ s a -> s{_ordCallback = a})

instance GoogleRequest OrdersCustombatch where
        type Rs OrdersCustombatch = OrdersCustomBatchResponse
        type Scopes OrdersCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCustombatch'{..}
          = go _ordXgafv _ordUploadProtocol _ordAccessToken
              _ordUploadType
              _ordCallback
              (Just AltJSON)
              _ordPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCustombatchResource)
                      mempty
