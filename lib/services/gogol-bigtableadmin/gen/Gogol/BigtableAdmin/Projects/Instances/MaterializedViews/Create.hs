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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a materialized view within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.materializedViews.create@.
module Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Create
    (
    -- * Resource
      BigtableAdminProjectsInstancesMaterializedViewsCreateResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesMaterializedViewsCreate (..)
    , newBigtableAdminProjectsInstancesMaterializedViewsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.materializedViews.create@ method which the
-- 'BigtableAdminProjectsInstancesMaterializedViewsCreate' request conforms to.
type BigtableAdminProjectsInstancesMaterializedViewsCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "materializedViews" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "materializedViewId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] MaterializedView Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a materialized view within an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesMaterializedViewsCreate' smart constructor.
data BigtableAdminProjectsInstancesMaterializedViewsCreate = BigtableAdminProjectsInstancesMaterializedViewsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID to use for the materialized view, which will become the final component of the materialized view\'s resource name.
    , materializedViewId :: (Core.Maybe Core.Text)
      -- | Required. The parent instance where this materialized view will be created. Format: @projects\/{project}\/instances\/{instance}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: MaterializedView
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesMaterializedViewsCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesMaterializedViewsCreate 
    :: 
                                                         Core.Text
       -- ^  Required. The parent instance where this materialized view will be created. Format: @projects\/{project}\/instances\/{instance}@. See 'parent'.
    -> MaterializedView
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesMaterializedViewsCreate
newBigtableAdminProjectsInstancesMaterializedViewsCreate parent
  payload
  = BigtableAdminProjectsInstancesMaterializedViewsCreate{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing,
                                                          materializedViewId = Core.Nothing,
                                                          parent = parent, payload = payload,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesMaterializedViewsCreate
         where
        type Rs BigtableAdminProjectsInstancesMaterializedViewsCreate =
             Operation
        type Scopes BigtableAdminProjectsInstancesMaterializedViewsCreate =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesMaterializedViewsCreate{..}
          = go parent xgafv accessToken callback materializedViewId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesMaterializedViewsCreateResource)
                      Core.mempty

