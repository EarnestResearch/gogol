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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a logical view.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.logicalViews.get@.
module Gogol.BigtableAdmin.Projects.Instances.LogicalViews.Get
    (
    -- * Resource
      BigtableAdminProjectsInstancesLogicalViewsGetResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesLogicalViewsGet (..)
    , newBigtableAdminProjectsInstancesLogicalViewsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.logicalViews.get@ method which the
-- 'BigtableAdminProjectsInstancesLogicalViewsGet' request conforms to.
type BigtableAdminProjectsInstancesLogicalViewsGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] LogicalView

-- | Gets information about a logical view.
--
-- /See:/ 'newBigtableAdminProjectsInstancesLogicalViewsGet' smart constructor.
data BigtableAdminProjectsInstancesLogicalViewsGet = BigtableAdminProjectsInstancesLogicalViewsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the requested logical view. Values are of the form @projects\/{project}\/instances\/{instance}\/logicalViews\/{logical_view}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesLogicalViewsGet' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesLogicalViewsGet 
    :: 
                                                 Core.Text
       -- ^  Required. The unique name of the requested logical view. Values are of the form @projects\/{project}\/instances\/{instance}\/logicalViews\/{logical_view}@. See 'name'.
    -> BigtableAdminProjectsInstancesLogicalViewsGet
newBigtableAdminProjectsInstancesLogicalViewsGet name
  = BigtableAdminProjectsInstancesLogicalViewsGet{xgafv =
                                                    Core.Nothing,
                                                  accessToken = Core.Nothing,
                                                  callback = Core.Nothing, name = name,
                                                  uploadType = Core.Nothing,
                                                  uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesLogicalViewsGet
         where
        type Rs BigtableAdminProjectsInstancesLogicalViewsGet = LogicalView
        type Scopes BigtableAdminProjectsInstancesLogicalViewsGet =
             '[Bigtable'Admin, Bigtable'Admin'Cluster, Bigtable'Admin'Instance,
               CloudBigtable'Admin, CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl]
        requestClient BigtableAdminProjectsInstancesLogicalViewsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigtableAdminProjectsInstancesLogicalViewsGetResource)
                      Core.mempty

