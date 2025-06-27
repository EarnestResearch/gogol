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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Services.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.services.patch@.
module Gogol.AppEngine.Projects.Locations.Applications.Services.Patch
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsServicesPatchResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsServicesPatch (..)
    , newAppEngineProjectsLocationsApplicationsServicesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.services.patch@ method which the
-- 'AppEngineProjectsLocationsApplicationsServicesPatch' request conforms to.
type AppEngineProjectsLocationsApplicationsServicesPatchResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "services" Core.:>
                     Core.Capture "servicesId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "migrateTraffic" Core.Bool Core.:>
                               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.ReqBody '[Core.JSON] Service Core.:>
                                         Core.Patch '[Core.JSON] Operation

-- | Updates the configuration of the specified service.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsServicesPatch' smart constructor.
data AppEngineProjectsLocationsApplicationsServicesPatch = AppEngineProjectsLocationsApplicationsServicesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , applicationsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Set to true to gradually shift traffic to one or more versions that you specify. By default, traffic is shifted immediately. For gradual traffic migration, the target versions must be located within instances that are configured for both warmup requests (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#InboundServiceType) and automatic scaling (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#AutomaticScaling). You must specify the shardBy (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services#ShardBy) field in the Service resource. Gradual traffic migration is not supported in the App Engine flexible environment. For examples, see Migrating and Splitting Traffic (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/migrating-splitting-traffic).
    , migrateTraffic :: (Core.Maybe Core.Bool)
      -- | Multipart request metadata.
    , payload :: Service
      -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default.
    , projectsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , servicesId :: Core.Text
      -- | Required. Standard field mask for the set of fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsServicesPatch' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsServicesPatch 
    :: 
                                                       Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Service
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default. See 'projectsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'servicesId'.
    -> AppEngineProjectsLocationsApplicationsServicesPatch
newAppEngineProjectsLocationsApplicationsServicesPatch
  applicationsId locationsId payload projectsId servicesId
  = AppEngineProjectsLocationsApplicationsServicesPatch{xgafv =
                                                          Core.Nothing,
                                                        accessToken = Core.Nothing,
                                                        applicationsId = applicationsId,
                                                        callback = Core.Nothing,
                                                        locationsId = locationsId,
                                                        migrateTraffic = Core.Nothing,
                                                        payload = payload, projectsId = projectsId,
                                                        servicesId = servicesId,
                                                        updateMask = Core.Nothing,
                                                        uploadType = Core.Nothing,
                                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsServicesPatch
         where
        type Rs AppEngineProjectsLocationsApplicationsServicesPatch =
             Operation
        type Scopes AppEngineProjectsLocationsApplicationsServicesPatch =
             '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsServicesPatch{..}
          = go projectsId locationsId applicationsId servicesId xgafv
              accessToken
              callback
              migrateTraffic
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsServicesPatchResource)
                      Core.mempty

