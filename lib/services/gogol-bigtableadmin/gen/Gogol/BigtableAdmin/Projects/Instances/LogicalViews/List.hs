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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.LogicalViews.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about logical views in an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.logicalViews.list@.
module Gogol.BigtableAdmin.Projects.Instances.LogicalViews.List
    (
    -- * Resource
      BigtableAdminProjectsInstancesLogicalViewsListResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesLogicalViewsList (..)
    , newBigtableAdminProjectsInstancesLogicalViewsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.logicalViews.list@ method which the
-- 'BigtableAdminProjectsInstancesLogicalViewsList' request conforms to.
type BigtableAdminProjectsInstancesLogicalViewsListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "logicalViews" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListLogicalViewsResponse

-- | Lists information about logical views in an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesLogicalViewsList' smart constructor.
data BigtableAdminProjectsInstancesLogicalViewsList = BigtableAdminProjectsInstancesLogicalViewsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of logical views to return. The service may return fewer than this value
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token, received from a previous @ListLogicalViews@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListLogicalViews@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the instance for which the list of logical views is requested. Values are of the form @projects\/{project}\/instances\/{instance}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesLogicalViewsList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesLogicalViewsList 
    :: 
                                                  Core.Text
       -- ^  Required. The unique name of the instance for which the list of logical views is requested. Values are of the form @projects\/{project}\/instances\/{instance}@. See 'parent'.
    -> BigtableAdminProjectsInstancesLogicalViewsList
newBigtableAdminProjectsInstancesLogicalViewsList parent
  = BigtableAdminProjectsInstancesLogicalViewsList{xgafv =
                                                     Core.Nothing,
                                                   accessToken = Core.Nothing,
                                                   callback = Core.Nothing, pageSize = Core.Nothing,
                                                   pageToken = Core.Nothing, parent = parent,
                                                   uploadType = Core.Nothing,
                                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesLogicalViewsList
         where
        type Rs BigtableAdminProjectsInstancesLogicalViewsList =
             ListLogicalViewsResponse
        type Scopes BigtableAdminProjectsInstancesLogicalViewsList =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient BigtableAdminProjectsInstancesLogicalViewsList{..}
          = go parent xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigtableAdminProjectsInstancesLogicalViewsListResource)
                      Core.mempty

