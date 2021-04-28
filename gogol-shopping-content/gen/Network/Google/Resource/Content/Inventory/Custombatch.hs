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
-- Module      : Network.Google.Resource.Content.Inventory.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.inventory.custombatch@.
module Network.Google.Resource.Content.Inventory.Custombatch
    (
    -- * REST Resource
      InventoryCustombatchResource

    -- * Creating a Request
    , inventoryCustombatch
    , InventoryCustombatch

    -- * Request Lenses
    , icXgafv
    , icUploadProtocol
    , icAccessToken
    , icUploadType
    , icPayload
    , icDryRun
    , icCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.inventory.custombatch@ method which the
-- 'InventoryCustombatch' request conforms to.
type InventoryCustombatchResource =
     "content" :>
       "v2" :>
         "inventory" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "dryRun" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InventoryCustomBatchRequest :>
                             Post '[JSON] InventoryCustomBatchResponse

-- | Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ 'inventoryCustombatch' smart constructor.
data InventoryCustombatch =
  InventoryCustombatch'
    { _icXgafv :: !(Maybe Xgafv)
    , _icUploadProtocol :: !(Maybe Text)
    , _icAccessToken :: !(Maybe Text)
    , _icUploadType :: !(Maybe Text)
    , _icPayload :: !InventoryCustomBatchRequest
    , _icDryRun :: !(Maybe Bool)
    , _icCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InventoryCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icXgafv'
--
-- * 'icUploadProtocol'
--
-- * 'icAccessToken'
--
-- * 'icUploadType'
--
-- * 'icPayload'
--
-- * 'icDryRun'
--
-- * 'icCallback'
inventoryCustombatch
    :: InventoryCustomBatchRequest -- ^ 'icPayload'
    -> InventoryCustombatch
inventoryCustombatch pIcPayload_ =
  InventoryCustombatch'
    { _icXgafv = Nothing
    , _icUploadProtocol = Nothing
    , _icAccessToken = Nothing
    , _icUploadType = Nothing
    , _icPayload = pIcPayload_
    , _icDryRun = Nothing
    , _icCallback = Nothing
    }


-- | V1 error format.
icXgafv :: Lens' InventoryCustombatch (Maybe Xgafv)
icXgafv = lens _icXgafv (\ s a -> s{_icXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
icUploadProtocol :: Lens' InventoryCustombatch (Maybe Text)
icUploadProtocol
  = lens _icUploadProtocol
      (\ s a -> s{_icUploadProtocol = a})

-- | OAuth access token.
icAccessToken :: Lens' InventoryCustombatch (Maybe Text)
icAccessToken
  = lens _icAccessToken
      (\ s a -> s{_icAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
icUploadType :: Lens' InventoryCustombatch (Maybe Text)
icUploadType
  = lens _icUploadType (\ s a -> s{_icUploadType = a})

-- | Multipart request metadata.
icPayload :: Lens' InventoryCustombatch InventoryCustomBatchRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | Flag to simulate a request like in a live environment. If set to true,
-- dry-run mode checks the validity of the request and returns errors (if
-- any).
icDryRun :: Lens' InventoryCustombatch (Maybe Bool)
icDryRun = lens _icDryRun (\ s a -> s{_icDryRun = a})

-- | JSONP
icCallback :: Lens' InventoryCustombatch (Maybe Text)
icCallback
  = lens _icCallback (\ s a -> s{_icCallback = a})

instance GoogleRequest InventoryCustombatch where
        type Rs InventoryCustombatch =
             InventoryCustomBatchResponse
        type Scopes InventoryCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient InventoryCustombatch'{..}
          = go _icXgafv _icUploadProtocol _icAccessToken
              _icUploadType
              _icDryRun
              _icCallback
              (Just AltJSON)
              _icPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryCustombatchResource)
                      mempty
