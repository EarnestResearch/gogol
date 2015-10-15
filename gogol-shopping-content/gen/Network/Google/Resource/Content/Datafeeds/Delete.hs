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
-- Module      : Network.Google.Resource.Content.Datafeeds.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsDelete@.
module Network.Google.Resource.Content.Datafeeds.Delete
    (
    -- * REST Resource
      DatafeedsDeleteResource

    -- * Creating a Request
    , datafeedsDelete'
    , DatafeedsDelete'

    -- * Request Lenses
    , ddMerchantId
    , ddDatafeedId
    , ddDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsDelete@ method which the
-- 'DatafeedsDelete'' request conforms to.
type DatafeedsDeleteResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         Capture "datafeedId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedsDelete'' smart constructor.
data DatafeedsDelete' = DatafeedsDelete'
    { _ddMerchantId :: !Word64
    , _ddDatafeedId :: !Word64
    , _ddDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddMerchantId'
--
-- * 'ddDatafeedId'
--
-- * 'ddDryRun'
datafeedsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedsDelete'
datafeedsDelete' pDdMerchantId_ pDdDatafeedId_ =
    DatafeedsDelete'
    { _ddMerchantId = pDdMerchantId_
    , _ddDatafeedId = pDdDatafeedId_
    , _ddDryRun = Nothing
    }

ddMerchantId :: Lens' DatafeedsDelete' Word64
ddMerchantId
  = lens _ddMerchantId (\ s a -> s{_ddMerchantId = a})

ddDatafeedId :: Lens' DatafeedsDelete' Word64
ddDatafeedId
  = lens _ddDatafeedId (\ s a -> s{_ddDatafeedId = a})

-- | Flag to run the request in dry-run mode.
ddDryRun :: Lens' DatafeedsDelete' (Maybe Bool)
ddDryRun = lens _ddDryRun (\ s a -> s{_ddDryRun = a})

instance GoogleRequest DatafeedsDelete' where
        type Rs DatafeedsDelete' = ()
        requestClient DatafeedsDelete'{..}
          = go _ddMerchantId _ddDatafeedId _ddDryRun
              (Just AltJSON)
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsDeleteResource)
                      mempty