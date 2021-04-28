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
-- Module      : Network.Google.Resource.Content.Accounts.Claimwebsite
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims the website of a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.claimwebsite@.
module Network.Google.Resource.Content.Accounts.Claimwebsite
    (
    -- * REST Resource
      AccountsClaimwebsiteResource

    -- * Creating a Request
    , accountsClaimwebsite
    , AccountsClaimwebsite

    -- * Request Lenses
    , ac1Xgafv
    , ac1MerchantId
    , ac1UploadProtocol
    , ac1AccessToken
    , ac1UploadType
    , ac1AccountId
    , ac1Overwrite
    , ac1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.claimwebsite@ method which the
-- 'AccountsClaimwebsite' request conforms to.
type AccountsClaimwebsiteResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "claimwebsite" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "overwrite" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] AccountsClaimWebsiteResponse

-- | Claims the website of a Merchant Center sub-account.
--
-- /See:/ 'accountsClaimwebsite' smart constructor.
data AccountsClaimwebsite =
  AccountsClaimwebsite'
    { _ac1Xgafv :: !(Maybe Xgafv)
    , _ac1MerchantId :: !(Textual Word64)
    , _ac1UploadProtocol :: !(Maybe Text)
    , _ac1AccessToken :: !(Maybe Text)
    , _ac1UploadType :: !(Maybe Text)
    , _ac1AccountId :: !(Textual Word64)
    , _ac1Overwrite :: !(Maybe Bool)
    , _ac1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClaimwebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ac1Xgafv'
--
-- * 'ac1MerchantId'
--
-- * 'ac1UploadProtocol'
--
-- * 'ac1AccessToken'
--
-- * 'ac1UploadType'
--
-- * 'ac1AccountId'
--
-- * 'ac1Overwrite'
--
-- * 'ac1Callback'
accountsClaimwebsite
    :: Word64 -- ^ 'ac1MerchantId'
    -> Word64 -- ^ 'ac1AccountId'
    -> AccountsClaimwebsite
accountsClaimwebsite pAc1MerchantId_ pAc1AccountId_ =
  AccountsClaimwebsite'
    { _ac1Xgafv = Nothing
    , _ac1MerchantId = _Coerce # pAc1MerchantId_
    , _ac1UploadProtocol = Nothing
    , _ac1AccessToken = Nothing
    , _ac1UploadType = Nothing
    , _ac1AccountId = _Coerce # pAc1AccountId_
    , _ac1Overwrite = Nothing
    , _ac1Callback = Nothing
    }


-- | V1 error format.
ac1Xgafv :: Lens' AccountsClaimwebsite (Maybe Xgafv)
ac1Xgafv = lens _ac1Xgafv (\ s a -> s{_ac1Xgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
ac1MerchantId :: Lens' AccountsClaimwebsite Word64
ac1MerchantId
  = lens _ac1MerchantId
      (\ s a -> s{_ac1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ac1UploadProtocol :: Lens' AccountsClaimwebsite (Maybe Text)
ac1UploadProtocol
  = lens _ac1UploadProtocol
      (\ s a -> s{_ac1UploadProtocol = a})

-- | OAuth access token.
ac1AccessToken :: Lens' AccountsClaimwebsite (Maybe Text)
ac1AccessToken
  = lens _ac1AccessToken
      (\ s a -> s{_ac1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ac1UploadType :: Lens' AccountsClaimwebsite (Maybe Text)
ac1UploadType
  = lens _ac1UploadType
      (\ s a -> s{_ac1UploadType = a})

-- | The ID of the account whose website is claimed.
ac1AccountId :: Lens' AccountsClaimwebsite Word64
ac1AccountId
  = lens _ac1AccountId (\ s a -> s{_ac1AccountId = a})
      . _Coerce

-- | Only available to selected merchants. When set to \`True\`, this flag
-- removes any existing claim on the requested website by another account
-- and replaces it with a claim from this account.
ac1Overwrite :: Lens' AccountsClaimwebsite (Maybe Bool)
ac1Overwrite
  = lens _ac1Overwrite (\ s a -> s{_ac1Overwrite = a})

-- | JSONP
ac1Callback :: Lens' AccountsClaimwebsite (Maybe Text)
ac1Callback
  = lens _ac1Callback (\ s a -> s{_ac1Callback = a})

instance GoogleRequest AccountsClaimwebsite where
        type Rs AccountsClaimwebsite =
             AccountsClaimWebsiteResponse
        type Scopes AccountsClaimwebsite =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsClaimwebsite'{..}
          = go _ac1MerchantId _ac1AccountId _ac1Xgafv
              _ac1UploadProtocol
              _ac1AccessToken
              _ac1UploadType
              _ac1Overwrite
              _ac1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClaimwebsiteResource)
                      mempty
