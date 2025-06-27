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
-- Module      : Gogol.SQLAdmin.Sql.Instances.PointInTimeRestore
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Point in time restore for an instance managed by Google Cloud Backup and Disaster Recovery.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.pointInTimeRestore@.
module Gogol.SQLAdmin.Sql.Instances.PointInTimeRestore
    (
    -- * Resource
      SqlInstancesPointInTimeRestoreResource

    -- ** Constructing a Request
    , SqlInstancesPointInTimeRestore (..)
    , newSqlInstancesPointInTimeRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.pointInTimeRestore@ method which the
-- 'SqlInstancesPointInTimeRestore' request conforms to.
type SqlInstancesPointInTimeRestoreResource =
     "v1" Core.:>
       Core.CaptureMode "parent" "pointInTimeRestore" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] PointInTimeRestoreContext Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Point in time restore for an instance managed by Google Cloud Backup and Disaster Recovery.
--
-- /See:/ 'newSqlInstancesPointInTimeRestore' smart constructor.
data SqlInstancesPointInTimeRestore = SqlInstancesPointInTimeRestore
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource where you created this instance. Format: projects\/{project}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: PointInTimeRestoreContext
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesPointInTimeRestore' with the minimum fields required to make a request.
newSqlInstancesPointInTimeRestore 
    :: 
                                  Core.Text
       -- ^  Required. The parent resource where you created this instance. Format: projects\/{project} See 'parent'.
    -> PointInTimeRestoreContext
       -- ^  Multipart request metadata. See 'payload'.
    -> SqlInstancesPointInTimeRestore
newSqlInstancesPointInTimeRestore parent payload
  = SqlInstancesPointInTimeRestore{xgafv = Core.Nothing,
                                   accessToken = Core.Nothing, callback = Core.Nothing,
                                   parent = parent, payload = payload, uploadType = Core.Nothing,
                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SqlInstancesPointInTimeRestore where
        type Rs SqlInstancesPointInTimeRestore = Operation
        type Scopes SqlInstancesPointInTimeRestore =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlInstancesPointInTimeRestore{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SqlInstancesPointInTimeRestoreResource)
                      Core.mempty

