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
-- Module      : Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a charge invoice for a shipment group, and triggers a charge
-- capture for orderinvoice enabled orders.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderinvoices.createchargeinvoice@.
module Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
    (
    -- * REST Resource
      OrderinvoicesCreatechargeinvoiceResource

    -- * Creating a Request
    , orderinvoicesCreatechargeinvoice
    , OrderinvoicesCreatechargeinvoice

    -- * Request Lenses
    , occMerchantId
    , occPayload
    , occOrderId
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderinvoices.createchargeinvoice@ method which the
-- 'OrderinvoicesCreatechargeinvoice' request conforms to.
type OrderinvoicesCreatechargeinvoiceResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orderinvoices" :>
             Capture "orderId" Text :>
               "createChargeInvoice" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrderinvoicesCreateChargeInvoiceRequest
                     :>
                     Post '[JSON] OrderinvoicesCreateChargeInvoiceResponse

-- | Creates a charge invoice for a shipment group, and triggers a charge
-- capture for orderinvoice enabled orders.
--
-- /See:/ 'orderinvoicesCreatechargeinvoice' smart constructor.
data OrderinvoicesCreatechargeinvoice =
  OrderinvoicesCreatechargeinvoice'
    { _occMerchantId :: !(Textual Word64)
    , _occPayload :: !OrderinvoicesCreateChargeInvoiceRequest
    , _occOrderId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreatechargeinvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occMerchantId'
--
-- * 'occPayload'
--
-- * 'occOrderId'
orderinvoicesCreatechargeinvoice
    :: Word64 -- ^ 'occMerchantId'
    -> OrderinvoicesCreateChargeInvoiceRequest -- ^ 'occPayload'
    -> Text -- ^ 'occOrderId'
    -> OrderinvoicesCreatechargeinvoice
orderinvoicesCreatechargeinvoice pOccMerchantId_ pOccPayload_ pOccOrderId_ =
  OrderinvoicesCreatechargeinvoice'
    { _occMerchantId = _Coerce # pOccMerchantId_
    , _occPayload = pOccPayload_
    , _occOrderId = pOccOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
occMerchantId :: Lens' OrderinvoicesCreatechargeinvoice Word64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
occPayload :: Lens' OrderinvoicesCreatechargeinvoice OrderinvoicesCreateChargeInvoiceRequest
occPayload
  = lens _occPayload (\ s a -> s{_occPayload = a})

-- | The ID of the order.
occOrderId :: Lens' OrderinvoicesCreatechargeinvoice Text
occOrderId
  = lens _occOrderId (\ s a -> s{_occOrderId = a})

instance GoogleRequest
           OrderinvoicesCreatechargeinvoice
         where
        type Rs OrderinvoicesCreatechargeinvoice =
             OrderinvoicesCreateChargeInvoiceResponse
        type Scopes OrderinvoicesCreatechargeinvoice =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderinvoicesCreatechargeinvoice'{..}
          = go _occMerchantId _occOrderId (Just AltJSON)
              _occPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderinvoicesCreatechargeinvoiceResource)
                      mempty
