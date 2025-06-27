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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logical view within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.logicalViews.create@.
module Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Create
    (
    -- * Resource
      BigtableAdminProjectsInstancesLogicalViewsCreateResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesLogicalViewsCreate (..)
    , newBigtableAdminProjectsInstancesLogicalViewsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.logicalViews.create@ method which the
-- 'BigtableAdminProjectsInstancesLogicalViewsCreate' request conforms to.
type BigtableAdminProjectsInstancesLogicalViewsCreateResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "logicalViews" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "logicalViewId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] LogicalView Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a logical view within an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesLogicalViewsCreate' smart constructor.
data BigtableAdminProjectsInstancesLogicalViewsCreate = BigtableAdminProjectsInstancesLogicalViewsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID to use for the logical view, which will become the final component of the logical view\'s resource name.
    , logicalViewId :: (Core.Maybe Core.Text)
      -- | Required. The parent instance where this logical view will be created. Format: @projects\/{project}\/instances\/{instance}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogicalView
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesLogicalViewsCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesLogicalViewsCreate 
    :: 
                                                    Core.Text
       -- ^  Required. The parent instance where this logical view will be created. Format: @projects\/{project}\/instances\/{instance}@. See 'parent'.
    -> LogicalView
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesLogicalViewsCreate
newBigtableAdminProjectsInstancesLogicalViewsCreate parent payload
  = BigtableAdminProjectsInstancesLogicalViewsCreate{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing,
                                                     logicalViewId = Core.Nothing, parent = parent,
                                                     payload = payload, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesLogicalViewsCreate
         where
        type Rs BigtableAdminProjectsInstancesLogicalViewsCreate =
             Operation
        type Scopes BigtableAdminProjectsInstancesLogicalViewsCreate =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient BigtableAdminProjectsInstancesLogicalViewsCreate{..}
          = go parent xgafv accessToken callback logicalViewId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesLogicalViewsCreateResource)
                      Core.mempty

