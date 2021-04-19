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
-- Module      : Network.Google.Resource.Content.LiaSettings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the LIA settings of the account. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.patch@.
module Network.Google.Resource.Content.LiaSettings.Patch
    (
    -- * REST Resource
      LiaSettingsPatchResource

    -- * Creating a Request
    , liaSettingsPatch
    , LiaSettingsPatch

    -- * Request Lenses
    , lspMerchantId
    , lspPayload
    , lspAccountId
    , lspDryRun
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.patch@ method which the
-- 'LiaSettingsPatch' request conforms to.
type LiaSettingsPatchResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] LiaSettings :>
                     Patch '[JSON] LiaSettings

-- | Updates the LIA settings of the account. This method supports patch
-- semantics.
--
-- /See:/ 'liaSettingsPatch' smart constructor.
data LiaSettingsPatch =
  LiaSettingsPatch'
    { _lspMerchantId :: !(Textual Word64)
    , _lspPayload :: !LiaSettings
    , _lspAccountId :: !(Textual Word64)
    , _lspDryRun :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lspMerchantId'
--
-- * 'lspPayload'
--
-- * 'lspAccountId'
--
-- * 'lspDryRun'
liaSettingsPatch
    :: Word64 -- ^ 'lspMerchantId'
    -> LiaSettings -- ^ 'lspPayload'
    -> Word64 -- ^ 'lspAccountId'
    -> LiaSettingsPatch
liaSettingsPatch pLspMerchantId_ pLspPayload_ pLspAccountId_ =
  LiaSettingsPatch'
    { _lspMerchantId = _Coerce # pLspMerchantId_
    , _lspPayload = pLspPayload_
    , _lspAccountId = _Coerce # pLspAccountId_
    , _lspDryRun = Nothing
    }


-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lspMerchantId :: Lens' LiaSettingsPatch Word64
lspMerchantId
  = lens _lspMerchantId
      (\ s a -> s{_lspMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
lspPayload :: Lens' LiaSettingsPatch LiaSettings
lspPayload
  = lens _lspPayload (\ s a -> s{_lspPayload = a})

-- | The ID of the account for which to get or update LIA settings.
lspAccountId :: Lens' LiaSettingsPatch Word64
lspAccountId
  = lens _lspAccountId (\ s a -> s{_lspAccountId = a})
      . _Coerce

-- | Flag to simulate a request like in a live environment. If set to true,
-- dry-run mode checks the validity of the request and returns errors (if
-- any).
lspDryRun :: Lens' LiaSettingsPatch (Maybe Bool)
lspDryRun
  = lens _lspDryRun (\ s a -> s{_lspDryRun = a})

instance GoogleRequest LiaSettingsPatch where
        type Rs LiaSettingsPatch = LiaSettings
        type Scopes LiaSettingsPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsPatch'{..}
          = go _lspMerchantId _lspAccountId _lspDryRun
              (Just AltJSON)
              _lspPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsPatchResource)
                      mempty
