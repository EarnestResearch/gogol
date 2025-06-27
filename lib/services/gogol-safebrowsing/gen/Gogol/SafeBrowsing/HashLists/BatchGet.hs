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
-- Module      : Gogol.SafeBrowsing.HashLists.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get multiple hash lists at once. It is very common for a client to need to get multiple hash lists. Using this method is preferred over using the regular Get method multiple times. This is a standard batch Get method as defined by https:\/\/google.aip.dev\/231 and the HTTP method is also GET.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.hashLists.batchGet@.
module Gogol.SafeBrowsing.HashLists.BatchGet
    (
    -- * Resource
      SafeBrowsingHashListsBatchGetResource

    -- ** Constructing a Request
    , SafeBrowsingHashListsBatchGet (..)
    , newSafeBrowsingHashListsBatchGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.hashLists.batchGet@ method which the
-- 'SafeBrowsingHashListsBatchGet' request conforms to.
type SafeBrowsingHashListsBatchGetResource =
     "v5" Core.:>
       "hashLists:batchGet" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParams "names" Core.Text Core.:>
                 Core.QueryParam "sizeConstraints.maxDatabaseEntries" Core.Int32
                   Core.:>
                   Core.QueryParam "sizeConstraints.maxUpdateEntries" Core.Int32
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParams "version" Core.Base64 Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleSecuritySafebrowsingV5BatchGetHashListsResponse

-- | Get multiple hash lists at once. It is very common for a client to need to get multiple hash lists. Using this method is preferred over using the regular Get method multiple times. This is a standard batch Get method as defined by https:\/\/google.aip.dev\/231 and the HTTP method is also GET.
--
-- /See:/ 'newSafeBrowsingHashListsBatchGet' smart constructor.
data SafeBrowsingHashListsBatchGet = SafeBrowsingHashListsBatchGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The names of the particular hash lists. The list MAY be a threat list, or it may be the Global Cache. The names MUST NOT contain duplicates; if they did, the client will get an error.
    , names :: (Core.Maybe [Core.Text])
      -- | Sets the maximum number of entries that the client is willing to have in the local database for the list. (The server MAY cause the client to store less than this number of entries.) If omitted or zero, no database size limit is set.
    , sizeConstraintsMaxDatabaseEntries :: (Core.Maybe Core.Int32)
      -- | The maximum size in number of entries. The update will not contain more entries than this value, but it is possible that the update will contain fewer entries than this value. This MUST be at least 1024. If omitted or zero, no update size limit is set.
    , sizeConstraintsMaxUpdateEntries :: (Core.Maybe Core.Int32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The versions of the hash list that the client already has. If this is the first time the client is fetching the hash lists, the field should be left empty. Otherwise, the client should supply the versions previously received from the server. The client MUST NOT manipulate those bytes. The client need not send the versions in the same order as the corresponding list names. The client may send fewer or more versions in a request than there are names. However the client MUST NOT send multiple versions that correspond to the same name; if it did, the client will get an error. Historical note: in V4 of the API, this was called @states@; it is now renamed to @version@ for clarity.
    , version :: (Core.Maybe [Core.Base64])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingHashListsBatchGet' with the minimum fields required to make a request.
newSafeBrowsingHashListsBatchGet 
    ::  SafeBrowsingHashListsBatchGet
newSafeBrowsingHashListsBatchGet
  = SafeBrowsingHashListsBatchGet{xgafv = Core.Nothing,
                                  accessToken = Core.Nothing, callback = Core.Nothing,
                                  names = Core.Nothing,
                                  sizeConstraintsMaxDatabaseEntries = Core.Nothing,
                                  sizeConstraintsMaxUpdateEntries = Core.Nothing,
                                  uploadType = Core.Nothing, uploadProtocol = Core.Nothing,
                                  version = Core.Nothing}
instance Core.GoogleRequest SafeBrowsingHashListsBatchGet where
        type Rs SafeBrowsingHashListsBatchGet =
             GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
        type Scopes SafeBrowsingHashListsBatchGet = '[]
        requestClient SafeBrowsingHashListsBatchGet{..}
          = go xgafv accessToken callback (names Core.^. Core._Default)
              sizeConstraintsMaxDatabaseEntries
              sizeConstraintsMaxUpdateEntries
              uploadType
              uploadProtocol
              (version Core.^. Core._Default)
              (Core.Just Core.AltJSON)
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SafeBrowsingHashListsBatchGetResource)
                      Core.mempty

