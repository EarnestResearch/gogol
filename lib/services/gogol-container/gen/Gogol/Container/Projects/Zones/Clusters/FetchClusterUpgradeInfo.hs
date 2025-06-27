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
-- Module      : Gogol.Container.Projects.Zones.Clusters.FetchClusterUpgradeInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch upgrade information of a specific cluster.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.fetchClusterUpgradeInfo@.
module Gogol.Container.Projects.Zones.Clusters.FetchClusterUpgradeInfo
    (
    -- * Resource
      ContainerProjectsZonesClustersFetchClusterUpgradeInfoResource

    -- ** Constructing a Request
    , ContainerProjectsZonesClustersFetchClusterUpgradeInfo (..)
    , newContainerProjectsZonesClustersFetchClusterUpgradeInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.zones.clusters.fetchClusterUpgradeInfo@ method which the
-- 'ContainerProjectsZonesClustersFetchClusterUpgradeInfo' request conforms to.
type ContainerProjectsZonesClustersFetchClusterUpgradeInfoResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "fetchClusterUpgradeInfo" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "version" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] ClusterUpgradeInfo

-- | Fetch upgrade information of a specific cluster.
--
-- /See:/ 'newContainerProjectsZonesClustersFetchClusterUpgradeInfo' smart constructor.
data ContainerProjectsZonesClustersFetchClusterUpgradeInfo = ContainerProjectsZonesClustersFetchClusterUpgradeInfo
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name (project, location, cluster) of the cluster to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*@ or @projects\/*\/zones\/*\/clusters\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | API request version that initiates this operation.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersFetchClusterUpgradeInfo' with the minimum fields required to make a request.
newContainerProjectsZonesClustersFetchClusterUpgradeInfo 
    :: 
                                                         Core.Text
       -- ^  Required. The name (project, location, cluster) of the cluster to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*@ or @projects\/*\/zones\/*\/clusters\/*@. See 'name'.
    -> ContainerProjectsZonesClustersFetchClusterUpgradeInfo
newContainerProjectsZonesClustersFetchClusterUpgradeInfo name
  = ContainerProjectsZonesClustersFetchClusterUpgradeInfo{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing,
                                                          version = Core.Nothing}
instance Core.GoogleRequest
           ContainerProjectsZonesClustersFetchClusterUpgradeInfo
         where
        type Rs ContainerProjectsZonesClustersFetchClusterUpgradeInfo =
             ClusterUpgradeInfo
        type Scopes ContainerProjectsZonesClustersFetchClusterUpgradeInfo =
             '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsZonesClustersFetchClusterUpgradeInfo{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              version
              (Core.Just Core.AltJSON)
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsZonesClustersFetchClusterUpgradeInfoResource)
                      Core.mempty

