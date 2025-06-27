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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a logical view from an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.logicalViews.delete@.
module Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Delete
    (
    -- * Resource
      BigtableAdminProjectsInstancesLogicalViewsDeleteResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesLogicalViewsDelete (..)
    , newBigtableAdminProjectsInstancesLogicalViewsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.logicalViews.delete@ method which the
-- 'BigtableAdminProjectsInstancesLogicalViewsDelete' request conforms to.
type BigtableAdminProjectsInstancesLogicalViewsDeleteResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "etag" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a logical view from an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesLogicalViewsDelete' smart constructor.
data BigtableAdminProjectsInstancesLogicalViewsDelete = BigtableAdminProjectsInstancesLogicalViewsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The current etag of the logical view. If an etag is provided and does not match the current etag of the logical view, deletion will be blocked and an ABORTED error will be returned.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the logical view to be deleted. Format: @projects\/{project}\/instances\/{instance}\/logicalViews\/{logical_view}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesLogicalViewsDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesLogicalViewsDelete 
    :: 
                                                    Core.Text
       -- ^  Required. The unique name of the logical view to be deleted. Format: @projects\/{project}\/instances\/{instance}\/logicalViews\/{logical_view}@. See 'name'.
    -> BigtableAdminProjectsInstancesLogicalViewsDelete
newBigtableAdminProjectsInstancesLogicalViewsDelete name
  = BigtableAdminProjectsInstancesLogicalViewsDelete{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, etag = Core.Nothing,
                                                     name = name, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesLogicalViewsDelete
         where
        type Rs BigtableAdminProjectsInstancesLogicalViewsDelete = Empty
        type Scopes BigtableAdminProjectsInstancesLogicalViewsDelete =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient BigtableAdminProjectsInstancesLogicalViewsDelete{..}
          = go name xgafv accessToken callback etag uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesLogicalViewsDeleteResource)
                      Core.mempty

