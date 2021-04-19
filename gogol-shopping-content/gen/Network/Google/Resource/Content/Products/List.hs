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
-- Module      : Network.Google.Resource.Content.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.list@.
module Network.Google.Resource.Content.Products.List
    (
    -- * REST Resource
      ProductsListResource

    -- * Creating a Request
    , productsList
    , ProductsList

    -- * Request Lenses
    , pllMerchantId
    , pllIncludeInvalidInsertedItems
    , pllPageToken
    , pllMaxResults
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.list@ method which the
-- 'ProductsList' request conforms to.
type ProductsListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             QueryParam "includeInvalidInsertedItems" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ProductsListResponse

-- | Lists the products in your Merchant Center account.
--
-- /See:/ 'productsList' smart constructor.
data ProductsList =
  ProductsList'
    { _pllMerchantId :: !(Textual Word64)
    , _pllIncludeInvalidInsertedItems :: !(Maybe Bool)
    , _pllPageToken :: !(Maybe Text)
    , _pllMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllMerchantId'
--
-- * 'pllIncludeInvalidInsertedItems'
--
-- * 'pllPageToken'
--
-- * 'pllMaxResults'
productsList
    :: Word64 -- ^ 'pllMerchantId'
    -> ProductsList
productsList pPllMerchantId_ =
  ProductsList'
    { _pllMerchantId = _Coerce # pPllMerchantId_
    , _pllIncludeInvalidInsertedItems = Nothing
    , _pllPageToken = Nothing
    , _pllMaxResults = Nothing
    }


-- | The ID of the account that contains the products. This account cannot be
-- a multi-client account.
pllMerchantId :: Lens' ProductsList Word64
pllMerchantId
  = lens _pllMerchantId
      (\ s a -> s{_pllMerchantId = a})
      . _Coerce

-- | Flag to include the invalid inserted items in the result of the list
-- request. By default the invalid items are not shown (the default value
-- is false).
pllIncludeInvalidInsertedItems :: Lens' ProductsList (Maybe Bool)
pllIncludeInvalidInsertedItems
  = lens _pllIncludeInvalidInsertedItems
      (\ s a -> s{_pllIncludeInvalidInsertedItems = a})

-- | The token returned by the previous request.
pllPageToken :: Lens' ProductsList (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
pllMaxResults :: Lens' ProductsList (Maybe Word32)
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProductsList where
        type Rs ProductsList = ProductsListResponse
        type Scopes ProductsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsList'{..}
          = go _pllMerchantId _pllIncludeInvalidInsertedItems
              _pllPageToken
              _pllMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsListResource)
                      mempty
