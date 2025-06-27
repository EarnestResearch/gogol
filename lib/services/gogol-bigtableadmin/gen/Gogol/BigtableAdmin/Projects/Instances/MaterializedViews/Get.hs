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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a materialized view.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.materializedViews.get@.
module Gogol.BigtableAdmin.Projects.Instances.MaterializedViews.Get
    (
    -- * Resource
      BigtableAdminProjectsInstancesMaterializedViewsGetResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesMaterializedViewsGet (..)
    , newBigtableAdminProjectsInstancesMaterializedViewsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.materializedViews.get@ method which the
-- 'BigtableAdminProjectsInstancesMaterializedViewsGet' request conforms to.
type BigtableAdminProjectsInstancesMaterializedViewsGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] MaterializedView

-- | Gets information about a materialized view.
--
-- /See:/ 'newBigtableAdminProjectsInstancesMaterializedViewsGet' smart constructor.
data BigtableAdminProjectsInstancesMaterializedViewsGet = BigtableAdminProjectsInstancesMaterializedViewsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the requested materialized view. Values are of the form @projects\/{project}\/instances\/{instance}\/materializedViews\/{materialized_view}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesMaterializedViewsGet' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesMaterializedViewsGet 
    :: 
                                                      Core.Text
       -- ^  Required. The unique name of the requested materialized view. Values are of the form @projects\/{project}\/instances\/{instance}\/materializedViews\/{materialized_view}@. See 'name'.
    -> BigtableAdminProjectsInstancesMaterializedViewsGet
newBigtableAdminProjectsInstancesMaterializedViewsGet name
  = BigtableAdminProjectsInstancesMaterializedViewsGet{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing, name = name,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesMaterializedViewsGet
         where
        type Rs BigtableAdminProjectsInstancesMaterializedViewsGet =
             MaterializedView
        type Scopes BigtableAdminProjectsInstancesMaterializedViewsGet =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesMaterializedViewsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesMaterializedViewsGetResource)
                      Core.mempty

