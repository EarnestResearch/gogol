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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accountstatuses.list@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList
    , AccountstatusesList

    -- * Request Lenses
    , a1Xgafv
    , a1MerchantId
    , a1UploadProtocol
    , a1AccessToken
    , a1UploadType
    , a1Destinations
    , a1PageToken
    , a1MaxResults
    , a1Callback
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
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "destinations" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList' smart constructor.
data AccountstatusesList =
  AccountstatusesList'
    { _a1Xgafv :: !(Maybe Xgafv)
    , _a1MerchantId :: !(Textual Word64)
    , _a1UploadProtocol :: !(Maybe Text)
    , _a1AccessToken :: !(Maybe Text)
    , _a1UploadType :: !(Maybe Text)
    , _a1Destinations :: !(Maybe [Text])
    , _a1PageToken :: !(Maybe Text)
    , _a1MaxResults :: !(Maybe (Textual Word32))
    , _a1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a1Xgafv'
--
-- * 'a1MerchantId'
--
-- * 'a1UploadProtocol'
--
-- * 'a1AccessToken'
--
-- * 'a1UploadType'
--
-- * 'a1Destinations'
--
-- * 'a1PageToken'
--
-- * 'a1MaxResults'
--
-- * 'a1Callback'
accountstatusesList
    :: Word64 -- ^ 'a1MerchantId'
    -> AccountstatusesList
accountstatusesList pA1MerchantId_ =
  AccountstatusesList'
    { _a1Xgafv = Nothing
    , _a1MerchantId = _Coerce # pA1MerchantId_
    , _a1UploadProtocol = Nothing
    , _a1AccessToken = Nothing
    , _a1UploadType = Nothing
    , _a1Destinations = Nothing
    , _a1PageToken = Nothing
    , _a1MaxResults = Nothing
    , _a1Callback = Nothing
    }


-- | V1 error format.
a1Xgafv :: Lens' AccountstatusesList (Maybe Xgafv)
a1Xgafv = lens _a1Xgafv (\ s a -> s{_a1Xgafv = a})

-- | The ID of the managing account. This must be a multi-client account.
a1MerchantId :: Lens' AccountstatusesList Word64
a1MerchantId
  = lens _a1MerchantId (\ s a -> s{_a1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
a1UploadProtocol :: Lens' AccountstatusesList (Maybe Text)
a1UploadProtocol
  = lens _a1UploadProtocol
      (\ s a -> s{_a1UploadProtocol = a})

-- | OAuth access token.
a1AccessToken :: Lens' AccountstatusesList (Maybe Text)
a1AccessToken
  = lens _a1AccessToken
      (\ s a -> s{_a1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
a1UploadType :: Lens' AccountstatusesList (Maybe Text)
a1UploadType
  = lens _a1UploadType (\ s a -> s{_a1UploadType = a})

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

-- | JSONP
a1Callback :: Lens' AccountstatusesList (Maybe Text)
a1Callback
  = lens _a1Callback (\ s a -> s{_a1Callback = a})

instance GoogleRequest AccountstatusesList where
        type Rs AccountstatusesList =
             AccountstatusesListResponse
        type Scopes AccountstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesList'{..}
          = go _a1MerchantId _a1Xgafv _a1UploadProtocol
              _a1AccessToken
              _a1UploadType
              (_a1Destinations ^. _Default)
              _a1PageToken
              _a1MaxResults
              _a1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesListResource)
                      mempty
