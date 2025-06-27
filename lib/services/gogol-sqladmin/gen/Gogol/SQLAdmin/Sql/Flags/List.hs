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
-- Module      : Gogol.SQLAdmin.Sql.Flags.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available database flags for Cloud SQL instances.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.flags.list@.
module Gogol.SQLAdmin.Sql.Flags.List
    (
    -- * Resource
      SqlFlagsListResource

    -- ** Constructing a Request
    , SqlFlagsList (..)
    , newSqlFlagsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.flags.list@ method which the
-- 'SqlFlagsList' request conforms to.
type SqlFlagsListResource =
     "v1" Core.:>
       "flags" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "databaseVersion" Core.Text Core.:>
                 Core.QueryParam "flagScope" FlagsListFlagScope Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] FlagsListResponse

-- | Lists all available database flags for Cloud SQL instances.
--
-- /See:/ 'newSqlFlagsList' smart constructor.
data SqlFlagsList = SqlFlagsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Database type and version you want to retrieve flags for. By default, this method returns flags for all database types and versions.
    , databaseVersion :: (Core.Maybe Core.Text)
      -- | Optional. Specify the scope of flags to be returned by SqlFlagsListService. Return list of database flags if unspecified.
    , flagScope :: (Core.Maybe FlagsListFlagScope)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlFlagsList' with the minimum fields required to make a request.
newSqlFlagsList 
    ::  SqlFlagsList
newSqlFlagsList
  = SqlFlagsList{xgafv = Core.Nothing, accessToken = Core.Nothing,
                 callback = Core.Nothing, databaseVersion = Core.Nothing,
                 flagScope = Core.Nothing, uploadType = Core.Nothing,
                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SqlFlagsList where
        type Rs SqlFlagsList = FlagsListResponse
        type Scopes SqlFlagsList =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlFlagsList{..}
          = go xgafv accessToken callback databaseVersion flagScope
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient (Core.Proxy :: Core.Proxy SqlFlagsListResource)
                      Core.mempty

