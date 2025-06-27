{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SafeBrowsing.HashLists.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List hash lists. In the V5 API, Google will never remove a hash list that has ever been returned by this method. This enables clients to skip using this method and simply hard-code all hash lists they need. This is a standard List method as defined by https:\/\/google.aip.dev\/132 and the HTTP method is GET.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.hashLists.list@.
module Gogol.SafeBrowsing.HashLists.List
    (
    -- * Resource
      SafeBrowsingHashListsListResource

    -- ** Constructing a Request
    , SafeBrowsingHashListsList (..)
    , newSafeBrowsingHashListsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.hashLists.list@ method which the
-- 'SafeBrowsingHashListsList' request conforms to.
type SafeBrowsingHashListsListResource =
     "v5" Core.:>
       "hashLists" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           GoogleSecuritySafebrowsingV5ListHashListsResponse

-- | List hash lists. In the V5 API, Google will never remove a hash list that has ever been returned by this method. This enables clients to skip using this method and simply hard-code all hash lists they need. This is a standard List method as defined by https:\/\/google.aip.dev\/132 and the HTTP method is GET.
--
-- /See:/ 'newSafeBrowsingHashListsList' smart constructor.
data SafeBrowsingHashListsList = SafeBrowsingHashListsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of hash lists to return. The service may return fewer than this value. If unspecified, the server will choose a page size, which may be larger than the number of hash lists so that pagination is not necessary.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListHashLists@ call. Provide this to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingHashListsList' with the minimum fields required to make a request.
newSafeBrowsingHashListsList 
    ::  SafeBrowsingHashListsList
newSafeBrowsingHashListsList
  = SafeBrowsingHashListsList{xgafv = Core.Nothing,
                              accessToken = Core.Nothing, callback = Core.Nothing,
                              pageSize = Core.Nothing, pageToken = Core.Nothing,
                              uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SafeBrowsingHashListsList where
        type Rs SafeBrowsingHashListsList =
             GoogleSecuritySafebrowsingV5ListHashListsResponse
        type Scopes SafeBrowsingHashListsList = '[]
        requestClient SafeBrowsingHashListsList{..}
          = go xgafv accessToken callback pageSize pageToken uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SafeBrowsingHashListsListResource)
                      Core.mempty

