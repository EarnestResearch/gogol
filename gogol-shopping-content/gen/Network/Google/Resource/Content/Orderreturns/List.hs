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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.list@.
module Network.Google.Resource.Content.Orderreturns.List
    (
    -- * REST Resource
      OrderreturnsListResource

    -- * Creating a Request
    , orderreturnsList
    , OrderreturnsList

    -- * Request Lenses
    , ordrXgafv
    , ordrMerchantId
    , ordrUploadProtocol
    , ordrOrderBy
    , ordrAccessToken
    , ordrCreatedEndDate
    , ordrUploadType
    , ordrCreatedStartDate
    , ordrPageToken
    , ordrMaxResults
    , ordrCallback
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
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" OrderreturnsListOrderBy :>
                   QueryParam "access_token" Text :>
                     QueryParam "createdEndDate" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "createdStartDate" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] OrderreturnsListResponse

-- | Lists order returns in your Merchant Center account.
--
-- /See:/ 'orderreturnsList' smart constructor.
data OrderreturnsList =
  OrderreturnsList'
    { _ordrXgafv :: !(Maybe Xgafv)
    , _ordrMerchantId :: !(Textual Word64)
    , _ordrUploadProtocol :: !(Maybe Text)
    , _ordrOrderBy :: !(Maybe OrderreturnsListOrderBy)
    , _ordrAccessToken :: !(Maybe Text)
    , _ordrCreatedEndDate :: !(Maybe Text)
    , _ordrUploadType :: !(Maybe Text)
    , _ordrCreatedStartDate :: !(Maybe Text)
    , _ordrPageToken :: !(Maybe Text)
    , _ordrMaxResults :: !(Maybe (Textual Word32))
    , _ordrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordrXgafv'
--
-- * 'ordrMerchantId'
--
-- * 'ordrUploadProtocol'
--
-- * 'ordrOrderBy'
--
-- * 'ordrAccessToken'
--
-- * 'ordrCreatedEndDate'
--
-- * 'ordrUploadType'
--
-- * 'ordrCreatedStartDate'
--
-- * 'ordrPageToken'
--
-- * 'ordrMaxResults'
--
-- * 'ordrCallback'
orderreturnsList
    :: Word64 -- ^ 'ordrMerchantId'
    -> OrderreturnsList
orderreturnsList pOrdrMerchantId_ =
  OrderreturnsList'
    { _ordrXgafv = Nothing
    , _ordrMerchantId = _Coerce # pOrdrMerchantId_
    , _ordrUploadProtocol = Nothing
    , _ordrOrderBy = Nothing
    , _ordrAccessToken = Nothing
    , _ordrCreatedEndDate = Nothing
    , _ordrUploadType = Nothing
    , _ordrCreatedStartDate = Nothing
    , _ordrPageToken = Nothing
    , _ordrMaxResults = Nothing
    , _ordrCallback = Nothing
    }


-- | V1 error format.
ordrXgafv :: Lens' OrderreturnsList (Maybe Xgafv)
ordrXgafv
  = lens _ordrXgafv (\ s a -> s{_ordrXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ordrMerchantId :: Lens' OrderreturnsList Word64
ordrMerchantId
  = lens _ordrMerchantId
      (\ s a -> s{_ordrMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ordrUploadProtocol :: Lens' OrderreturnsList (Maybe Text)
ordrUploadProtocol
  = lens _ordrUploadProtocol
      (\ s a -> s{_ordrUploadProtocol = a})

-- | Return the results in the specified order.
ordrOrderBy :: Lens' OrderreturnsList (Maybe OrderreturnsListOrderBy)
ordrOrderBy
  = lens _ordrOrderBy (\ s a -> s{_ordrOrderBy = a})

-- | OAuth access token.
ordrAccessToken :: Lens' OrderreturnsList (Maybe Text)
ordrAccessToken
  = lens _ordrAccessToken
      (\ s a -> s{_ordrAccessToken = a})

-- | Obtains order returns created before this date (inclusively), in ISO
-- 8601 format.
ordrCreatedEndDate :: Lens' OrderreturnsList (Maybe Text)
ordrCreatedEndDate
  = lens _ordrCreatedEndDate
      (\ s a -> s{_ordrCreatedEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ordrUploadType :: Lens' OrderreturnsList (Maybe Text)
ordrUploadType
  = lens _ordrUploadType
      (\ s a -> s{_ordrUploadType = a})

-- | Obtains order returns created after this date (inclusively), in ISO 8601
-- format.
ordrCreatedStartDate :: Lens' OrderreturnsList (Maybe Text)
ordrCreatedStartDate
  = lens _ordrCreatedStartDate
      (\ s a -> s{_ordrCreatedStartDate = a})

-- | The token returned by the previous request.
ordrPageToken :: Lens' OrderreturnsList (Maybe Text)
ordrPageToken
  = lens _ordrPageToken
      (\ s a -> s{_ordrPageToken = a})

-- | The maximum number of order returns to return in the response, used for
-- paging. The default value is 25 returns per page, and the maximum
-- allowed value is 250 returns per page.
ordrMaxResults :: Lens' OrderreturnsList (Maybe Word32)
ordrMaxResults
  = lens _ordrMaxResults
      (\ s a -> s{_ordrMaxResults = a})
      . mapping _Coerce

-- | JSONP
ordrCallback :: Lens' OrderreturnsList (Maybe Text)
ordrCallback
  = lens _ordrCallback (\ s a -> s{_ordrCallback = a})

instance GoogleRequest OrderreturnsList where
        type Rs OrderreturnsList = OrderreturnsListResponse
        type Scopes OrderreturnsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsList'{..}
          = go _ordrMerchantId _ordrXgafv _ordrUploadProtocol
              _ordrOrderBy
              _ordrAccessToken
              _ordrCreatedEndDate
              _ordrUploadType
              _ordrCreatedStartDate
              _ordrPageToken
              _ordrMaxResults
              _ordrCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsListResource)
                      mempty
