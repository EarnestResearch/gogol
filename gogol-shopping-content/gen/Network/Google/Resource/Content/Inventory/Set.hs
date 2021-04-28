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
-- Module      : Network.Google.Resource.Content.Inventory.Set
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates price and availability of a product in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.inventory.set@.
module Network.Google.Resource.Content.Inventory.Set
    (
    -- * REST Resource
      InventorySetResource

    -- * Creating a Request
    , inventorySet
    , InventorySet

    -- * Request Lenses
    , isXgafv
    , isMerchantId
    , isStoreCode
    , isUploadProtocol
    , isAccessToken
    , isUploadType
    , isPayload
    , isProductId
    , isDryRun
    , isCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.inventory.set@ method which the
-- 'InventorySet' request conforms to.
type InventorySetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "inventory" :>
             Capture "storeCode" Text :>
               "products" :>
                 Capture "productId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "dryRun" Bool :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] InventorySetRequest :>
                                   Post '[JSON] InventorySetResponse

-- | Updates price and availability of a product in your Merchant Center
-- account.
--
-- /See:/ 'inventorySet' smart constructor.
data InventorySet =
  InventorySet'
    { _isXgafv :: !(Maybe Xgafv)
    , _isMerchantId :: !(Textual Word64)
    , _isStoreCode :: !Text
    , _isUploadProtocol :: !(Maybe Text)
    , _isAccessToken :: !(Maybe Text)
    , _isUploadType :: !(Maybe Text)
    , _isPayload :: !InventorySetRequest
    , _isProductId :: !Text
    , _isDryRun :: !(Maybe Bool)
    , _isCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InventorySet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isXgafv'
--
-- * 'isMerchantId'
--
-- * 'isStoreCode'
--
-- * 'isUploadProtocol'
--
-- * 'isAccessToken'
--
-- * 'isUploadType'
--
-- * 'isPayload'
--
-- * 'isProductId'
--
-- * 'isDryRun'
--
-- * 'isCallback'
inventorySet
    :: Word64 -- ^ 'isMerchantId'
    -> Text -- ^ 'isStoreCode'
    -> InventorySetRequest -- ^ 'isPayload'
    -> Text -- ^ 'isProductId'
    -> InventorySet
inventorySet pIsMerchantId_ pIsStoreCode_ pIsPayload_ pIsProductId_ =
  InventorySet'
    { _isXgafv = Nothing
    , _isMerchantId = _Coerce # pIsMerchantId_
    , _isStoreCode = pIsStoreCode_
    , _isUploadProtocol = Nothing
    , _isAccessToken = Nothing
    , _isUploadType = Nothing
    , _isPayload = pIsPayload_
    , _isProductId = pIsProductId_
    , _isDryRun = Nothing
    , _isCallback = Nothing
    }


-- | V1 error format.
isXgafv :: Lens' InventorySet (Maybe Xgafv)
isXgafv = lens _isXgafv (\ s a -> s{_isXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
isMerchantId :: Lens' InventorySet Word64
isMerchantId
  = lens _isMerchantId (\ s a -> s{_isMerchantId = a})
      . _Coerce

-- | The code of the store for which to update price and availability. Use
-- \`online\` to update price and availability of an online product.
isStoreCode :: Lens' InventorySet Text
isStoreCode
  = lens _isStoreCode (\ s a -> s{_isStoreCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
isUploadProtocol :: Lens' InventorySet (Maybe Text)
isUploadProtocol
  = lens _isUploadProtocol
      (\ s a -> s{_isUploadProtocol = a})

-- | OAuth access token.
isAccessToken :: Lens' InventorySet (Maybe Text)
isAccessToken
  = lens _isAccessToken
      (\ s a -> s{_isAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
isUploadType :: Lens' InventorySet (Maybe Text)
isUploadType
  = lens _isUploadType (\ s a -> s{_isUploadType = a})

-- | Multipart request metadata.
isPayload :: Lens' InventorySet InventorySetRequest
isPayload
  = lens _isPayload (\ s a -> s{_isPayload = a})

-- | The REST ID of the product for which to update price and availability.
isProductId :: Lens' InventorySet Text
isProductId
  = lens _isProductId (\ s a -> s{_isProductId = a})

-- | Flag to simulate a request like in a live environment. If set to true,
-- dry-run mode checks the validity of the request and returns errors (if
-- any).
isDryRun :: Lens' InventorySet (Maybe Bool)
isDryRun = lens _isDryRun (\ s a -> s{_isDryRun = a})

-- | JSONP
isCallback :: Lens' InventorySet (Maybe Text)
isCallback
  = lens _isCallback (\ s a -> s{_isCallback = a})

instance GoogleRequest InventorySet where
        type Rs InventorySet = InventorySetResponse
        type Scopes InventorySet =
             '["https://www.googleapis.com/auth/content"]
        requestClient InventorySet'{..}
          = go _isMerchantId _isStoreCode _isProductId _isXgafv
              _isUploadProtocol
              _isAccessToken
              _isUploadType
              _isDryRun
              _isCallback
              (Just AltJSON)
              _isPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy InventorySetResource)
                      mempty
