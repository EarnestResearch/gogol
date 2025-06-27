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
-- Module      : Gogol.Container.Projects.Zones.Clusters.NodePools.FetchNodePoolUpgradeInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch upgrade information of a specific nodepool.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.fetchNodePoolUpgradeInfo@.
module Gogol.Container.Projects.Zones.Clusters.NodePools.FetchNodePoolUpgradeInfo
    (
    -- * Resource
      ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfoResource

    -- ** Constructing a Request
    , ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo (..)
    , newContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.zones.clusters.nodePools.fetchNodePoolUpgradeInfo@ method which the
-- 'ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo' request conforms to.
type ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfoResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "fetchNodePoolUpgradeInfo" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "version" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] NodePoolUpgradeInfo

-- | Fetch upgrade information of a specific nodepool.
--
-- /See:/ 'newContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo' smart constructor.
data ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo = ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name (project, location, cluster, nodepool) of the nodepool to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@ or @projects\/*\/zones\/*\/clusters\/*\/nodePools\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | API request version that initiates this operation.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo' with the minimum fields required to make a request.
newContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo 
    :: 
                                                                   Core.Text
       -- ^  Required. The name (project, location, cluster, nodepool) of the nodepool to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@ or @projects\/*\/zones\/*\/clusters\/*\/nodePools\/*@. See 'name'.
    -> ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
newContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
  name
  = ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo{xgafv
                                                                      = Core.Nothing,
                                                                    accessToken = Core.Nothing,
                                                                    callback = Core.Nothing,
                                                                    name = name,
                                                                    uploadType = Core.Nothing,
                                                                    uploadProtocol = Core.Nothing,
                                                                    version = Core.Nothing}
instance Core.GoogleRequest
           ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
         where
        type Rs
               ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
             = NodePoolUpgradeInfo
        type Scopes
               ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfo{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              version
              (Core.Just Core.AltJSON)
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsZonesClustersNodePoolsFetchNodePoolUpgradeInfoResource)
                      Core.mempty

