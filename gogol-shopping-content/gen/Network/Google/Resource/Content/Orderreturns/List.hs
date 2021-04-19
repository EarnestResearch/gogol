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
-- Module      : Network.Google.Resource.Content.Orderreturns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists order returns in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderreturns.list@.
module Network.Google.Resource.Content.Orderreturns.List
    (
    -- * REST Resource
      OrderreturnsListResource

    -- * Creating a Request
    , orderreturnsList
    , OrderreturnsList

    -- * Request Lenses
    , ol1MerchantId
    , ol1OrderBy
    , ol1CreatedEndDate
    , ol1CreatedStartDate
    , ol1PageToken
    , ol1MaxResults
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.list@ method which the
-- 'OrderreturnsList' request conforms to.
type OrderreturnsListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             QueryParam "orderBy" OrderreturnsListOrderBy :>
               QueryParam "createdEndDate" Text :>
                 QueryParam "createdStartDate" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrderreturnsListResponse

-- | Lists order returns in your Merchant Center account.
--
-- /See:/ 'orderreturnsList' smart constructor.
data OrderreturnsList =
  OrderreturnsList'
    { _ol1MerchantId :: !(Textual Word64)
    , _ol1OrderBy :: !(Maybe OrderreturnsListOrderBy)
    , _ol1CreatedEndDate :: !(Maybe Text)
    , _ol1CreatedStartDate :: !(Maybe Text)
    , _ol1PageToken :: !(Maybe Text)
    , _ol1MaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ol1MerchantId'
--
-- * 'ol1OrderBy'
--
-- * 'ol1CreatedEndDate'
--
-- * 'ol1CreatedStartDate'
--
-- * 'ol1PageToken'
--
-- * 'ol1MaxResults'
orderreturnsList
    :: Word64 -- ^ 'ol1MerchantId'
    -> OrderreturnsList
orderreturnsList pOl1MerchantId_ =
  OrderreturnsList'
    { _ol1MerchantId = _Coerce # pOl1MerchantId_
    , _ol1OrderBy = Nothing
    , _ol1CreatedEndDate = Nothing
    , _ol1CreatedStartDate = Nothing
    , _ol1PageToken = Nothing
    , _ol1MaxResults = Nothing
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ol1MerchantId :: Lens' OrderreturnsList Word64
ol1MerchantId
  = lens _ol1MerchantId
      (\ s a -> s{_ol1MerchantId = a})
      . _Coerce

-- | Return the results in the specified order.
ol1OrderBy :: Lens' OrderreturnsList (Maybe OrderreturnsListOrderBy)
ol1OrderBy
  = lens _ol1OrderBy (\ s a -> s{_ol1OrderBy = a})

-- | Obtains order returns created before this date (inclusively), in ISO
-- 8601 format.
ol1CreatedEndDate :: Lens' OrderreturnsList (Maybe Text)
ol1CreatedEndDate
  = lens _ol1CreatedEndDate
      (\ s a -> s{_ol1CreatedEndDate = a})

-- | Obtains order returns created after this date (inclusively), in ISO 8601
-- format.
ol1CreatedStartDate :: Lens' OrderreturnsList (Maybe Text)
ol1CreatedStartDate
  = lens _ol1CreatedStartDate
      (\ s a -> s{_ol1CreatedStartDate = a})

-- | The token returned by the previous request.
ol1PageToken :: Lens' OrderreturnsList (Maybe Text)
ol1PageToken
  = lens _ol1PageToken (\ s a -> s{_ol1PageToken = a})

-- | The maximum number of order returns to return in the response, used for
-- paging. The default value is 25 returns per page, and the maximum
-- allowed value is 250 returns per page.
ol1MaxResults :: Lens' OrderreturnsList (Maybe Word32)
ol1MaxResults
  = lens _ol1MaxResults
      (\ s a -> s{_ol1MaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrderreturnsList where
        type Rs OrderreturnsList = OrderreturnsListResponse
        type Scopes OrderreturnsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsList'{..}
          = go _ol1MerchantId _ol1OrderBy _ol1CreatedEndDate
              _ol1CreatedStartDate
              _ol1PageToken
              _ol1MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsListResource)
                      mempty
