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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Custombatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.custombatch@.
module Gogol.ShoppingContent.Content.Accounts.Custombatch
    (
    -- * Resource
      ContentAccountsCustombatchResource

    -- ** Constructing a Request
    , ContentAccountsCustombatch (..)
    , newContentAccountsCustombatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.custombatch@ method which the
-- 'ContentAccountsCustombatch' request conforms to.
type ContentAccountsCustombatchResource =
     "content" Core.:>
       "v2.1" Core.:>
         "accounts" Core.:>
           "batch" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] AccountsCustomBatchRequest
                           Core.:>
                           Core.Post '[Core.JSON] AccountsCustomBatchResponse

-- | Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.
--
-- /See:/ 'newContentAccountsCustombatch' smart constructor.
data ContentAccountsCustombatch = ContentAccountsCustombatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AccountsCustomBatchRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsCustombatch' with the minimum fields required to make a request.
newContentAccountsCustombatch 
    ::  AccountsCustomBatchRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentAccountsCustombatch
newContentAccountsCustombatch payload =
  ContentAccountsCustombatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentAccountsCustombatch
         where
        type Rs ContentAccountsCustombatch =
             AccountsCustomBatchResponse
        type Scopes ContentAccountsCustombatch =
             '[Content'FullControl]
        requestClient ContentAccountsCustombatch{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsCustombatchResource)
                      Core.mempty

