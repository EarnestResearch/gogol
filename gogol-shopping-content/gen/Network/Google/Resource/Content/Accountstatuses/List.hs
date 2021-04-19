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
-- Module      : Network.Google.Resource.Content.Accountstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountstatuses.list@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList
    , AccountstatusesList

    -- * Request Lenses
    , a1MerchantId
    , a1Destinations
    , a1PageToken
    , a1MaxResults
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.list@ method which the
-- 'AccountstatusesList' request conforms to.
type AccountstatusesListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accountstatuses" :>
             QueryParams "destinations" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList' smart constructor.
data AccountstatusesList =
  AccountstatusesList'
    { _a1MerchantId :: !(Textual Word64)
    , _a1Destinations :: !(Maybe [Text])
    , _a1PageToken :: !(Maybe Text)
    , _a1MaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a1MerchantId'
--
-- * 'a1Destinations'
--
-- * 'a1PageToken'
--
-- * 'a1MaxResults'
accountstatusesList
    :: Word64 -- ^ 'a1MerchantId'
    -> AccountstatusesList
accountstatusesList pA1MerchantId_ =
  AccountstatusesList'
    { _a1MerchantId = _Coerce # pA1MerchantId_
    , _a1Destinations = Nothing
    , _a1PageToken = Nothing
    , _a1MaxResults = Nothing
    }


-- | The ID of the managing account. This must be a multi-client account.
a1MerchantId :: Lens' AccountstatusesList Word64
a1MerchantId
  = lens _a1MerchantId (\ s a -> s{_a1MerchantId = a})
      . _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
a1Destinations :: Lens' AccountstatusesList [Text]
a1Destinations
  = lens _a1Destinations
      (\ s a -> s{_a1Destinations = a})
      . _Default
      . _Coerce

-- | The token returned by the previous request.
a1PageToken :: Lens' AccountstatusesList (Maybe Text)
a1PageToken
  = lens _a1PageToken (\ s a -> s{_a1PageToken = a})

-- | The maximum number of account statuses to return in the response, used
-- for paging.
a1MaxResults :: Lens' AccountstatusesList (Maybe Word32)
a1MaxResults
  = lens _a1MaxResults (\ s a -> s{_a1MaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountstatusesList where
        type Rs AccountstatusesList =
             AccountstatusesListResponse
        type Scopes AccountstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesList'{..}
          = go _a1MerchantId (_a1Destinations ^. _Default)
              _a1PageToken
              _a1MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesListResource)
                      mempty
