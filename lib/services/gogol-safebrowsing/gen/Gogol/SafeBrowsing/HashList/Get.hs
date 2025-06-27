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
-- Module      : Gogol.SafeBrowsing.HashList.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the latest contents of a hash list. A hash list may either by a threat list or a non-threat list such as the Global Cache. This is a standard Get method as defined by https:\/\/google.aip.dev\/131 and the HTTP method is also GET.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.hashList.get@.
module Gogol.SafeBrowsing.HashList.Get
    (
    -- * Resource
      SafeBrowsingHashListGetResource

    -- ** Constructing a Request
    , SafeBrowsingHashListGet (..)
    , newSafeBrowsingHashListGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.hashList.get@ method which the
-- 'SafeBrowsingHashListGet' request conforms to.
type SafeBrowsingHashListGetResource =
     "v5" Core.:>
       "hashList" Core.:>
         Core.Capture "name" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "sizeConstraints.maxDatabaseEntries" Core.Int32
                   Core.:>
                   Core.QueryParam "sizeConstraints.maxUpdateEntries" Core.Int32
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "version" Core.Base64 Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] GoogleSecuritySafebrowsingV5HashList

-- | Get the latest contents of a hash list. A hash list may either by a threat list or a non-threat list such as the Global Cache. This is a standard Get method as defined by https:\/\/google.aip.dev\/131 and the HTTP method is also GET.
--
-- /See:/ 'newSafeBrowsingHashListGet' smart constructor.
data SafeBrowsingHashListGet = SafeBrowsingHashListGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of this particular hash list. It may be a threat list, or it may be the Global Cache.
    , name :: Core.Text
      -- | Sets the maximum number of entries that the client is willing to have in the local database for the list. (The server MAY cause the client to store less than this number of entries.) If omitted or zero, no database size limit is set.
    , sizeConstraintsMaxDatabaseEntries :: (Core.Maybe Core.Int32)
      -- | The maximum size in number of entries. The update will not contain more entries than this value, but it is possible that the update will contain fewer entries than this value. This MUST be at least 1024. If omitted or zero, no update size limit is set.
    , sizeConstraintsMaxUpdateEntries :: (Core.Maybe Core.Int32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The version of the hash list that the client already has. If this is the first time the client is fetching the hash list, this field MUST be left empty. Otherwise, the client SHOULD supply the version previously received from the server. The client MUST NOT manipulate those bytes. __What\'s new in V5__: in V4 of the API, this was called @states@; it is now renamed to @version@ for clarity.
    , version :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingHashListGet' with the minimum fields required to make a request.
newSafeBrowsingHashListGet 
    ::  Core.Text
       -- ^  Required. The name of this particular hash list. It may be a threat list, or it may be the Global Cache. See 'name'.
    -> SafeBrowsingHashListGet
newSafeBrowsingHashListGet name
  = SafeBrowsingHashListGet{xgafv = Core.Nothing,
                            accessToken = Core.Nothing, callback = Core.Nothing, name = name,
                            sizeConstraintsMaxDatabaseEntries = Core.Nothing,
                            sizeConstraintsMaxUpdateEntries = Core.Nothing,
                            uploadType = Core.Nothing, uploadProtocol = Core.Nothing,
                            version = Core.Nothing}
instance Core.GoogleRequest SafeBrowsingHashListGet where
        type Rs SafeBrowsingHashListGet =
             GoogleSecuritySafebrowsingV5HashList
        type Scopes SafeBrowsingHashListGet = '[]
        requestClient SafeBrowsingHashListGet{..}
          = go name xgafv accessToken callback
              sizeConstraintsMaxDatabaseEntries
              sizeConstraintsMaxUpdateEntries
              uploadType
              uploadProtocol
              version
              (Core.Just Core.AltJSON)
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SafeBrowsingHashListGetResource)
                      Core.mempty

