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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a materialized view within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.materializedViews.patch@.
module Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Patch
    (
    -- * Resource
      BigtableAdminProjectsInstancesMaterializedViewsPatchResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesMaterializedViewsPatch (..)
    , newBigtableAdminProjectsInstancesMaterializedViewsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.materializedViews.patch@ method which the
-- 'BigtableAdminProjectsInstancesMaterializedViewsPatch' request conforms to.
type BigtableAdminProjectsInstancesMaterializedViewsPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] MaterializedView Core.:>
                         Core.Patch '[Core.JSON] Operation

-- | Updates a materialized view within an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesMaterializedViewsPatch' smart constructor.
data BigtableAdminProjectsInstancesMaterializedViewsPatch = BigtableAdminProjectsInstancesMaterializedViewsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. The unique name of the materialized view. Format: @projects\/{project}\/instances\/{instance}\/materializedViews\/{materialized_view}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: MaterializedView
      -- | Optional. The list of fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesMaterializedViewsPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesMaterializedViewsPatch 
    :: 
                                                        Core.Text
       -- ^  Identifier. The unique name of the materialized view. Format: @projects\/{project}\/instances\/{instance}\/materializedViews\/{materialized_view}@ See 'name'.
    -> MaterializedView
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesMaterializedViewsPatch
newBigtableAdminProjectsInstancesMaterializedViewsPatch name
  payload
  = BigtableAdminProjectsInstancesMaterializedViewsPatch{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing, name = name,
                                                         payload = payload,
                                                         updateMask = Core.Nothing,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesMaterializedViewsPatch
         where
        type Rs BigtableAdminProjectsInstancesMaterializedViewsPatch =
             Operation
        type Scopes BigtableAdminProjectsInstancesMaterializedViewsPatch =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesMaterializedViewsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesMaterializedViewsPatchResource)
                      Core.mempty

