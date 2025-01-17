{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeSeller.Accounts.Preferreddeals.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.preferreddeals.get@.
module Gogol.AdExchangeSeller.Accounts.Preferreddeals.Get
    (
    -- * Resource
      AdExchangeSellerAccountsPreferreddealsGetResource

    -- ** Constructing a Request
    , AdExchangeSellerAccountsPreferreddealsGet (..)
    , newAdExchangeSellerAccountsPreferreddealsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeSeller.Types

-- | A resource alias for @adexchangeseller.accounts.preferreddeals.get@ method which the
-- 'AdExchangeSellerAccountsPreferreddealsGet' request conforms to.
type AdExchangeSellerAccountsPreferreddealsGetResource
     =
     "adexchangeseller" Core.:>
       "v2.0" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "preferreddeals" Core.:>
               Core.Capture "dealId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] PreferredDeal

-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ 'newAdExchangeSellerAccountsPreferreddealsGet' smart constructor.
data AdExchangeSellerAccountsPreferreddealsGet = AdExchangeSellerAccountsPreferreddealsGet
    {
      -- | Account owning the deal.
      accountId :: Core.Text
      -- | Preferred deal to get information about.
    , dealId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsPreferreddealsGet' with the minimum fields required to make a request.
newAdExchangeSellerAccountsPreferreddealsGet 
    ::  Core.Text
       -- ^  Account owning the deal. See 'accountId'.
    -> Core.Text
       -- ^  Preferred deal to get information about. See 'dealId'.
    -> AdExchangeSellerAccountsPreferreddealsGet
newAdExchangeSellerAccountsPreferreddealsGet accountId dealId =
  AdExchangeSellerAccountsPreferreddealsGet
    {accountId = accountId, dealId = dealId}

instance Core.GoogleRequest
           AdExchangeSellerAccountsPreferreddealsGet
         where
        type Rs AdExchangeSellerAccountsPreferreddealsGet =
             PreferredDeal
        type Scopes AdExchangeSellerAccountsPreferreddealsGet
             = '[Adexchange'Seller, Adexchange'Seller'Readonly]
        requestClient
          AdExchangeSellerAccountsPreferreddealsGet{..}
          = go accountId dealId (Core.Just Core.AltJSON)
              adExchangeSellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeSellerAccountsPreferreddealsGetResource)
                      Core.mempty

