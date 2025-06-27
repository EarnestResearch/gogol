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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Services.Versions.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance/class (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance/class)automatic scaling in the standard environment: automatic/scaling.min/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automaticScaling.standard/scheduler/settings.max/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.min/instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/cpu/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/throughput/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving/status (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status) manual/scaling.instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)Flexible environment serving/status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status)automatic scaling in the flexible environment: automatic/scaling.min/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cool/down/period/sec (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cpu/utilization.target/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling)manual scaling in the flexible environment: manual_scaling.instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.services.versions.patch@.
module Gogol.AppEngine.Projects.Locations.Applications.Services.Versions.Patch
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsServicesVersionsPatchResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsServicesVersionsPatch (..)
    , newAppEngineProjectsLocationsApplicationsServicesVersionsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.services.versions.patch@ method which the
-- 'AppEngineProjectsLocationsApplicationsServicesVersionsPatch' request conforms to.
type AppEngineProjectsLocationsApplicationsServicesVersionsPatchResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "services" Core.:>
                     Core.Capture "servicesId" Core.Text Core.:>
                       "versions" Core.:>
                         Core.Capture "versionsId" Core.Text Core.:>
                           Core.QueryParam "$.xgafv" Xgafv Core.:>
                             Core.QueryParam "access_token" Core.Text Core.:>
                               Core.QueryParam "callback" Core.Text Core.:>
                                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                                   Core.QueryParam "uploadType" Core.Text Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                                       Core.QueryParam "alt" Core.AltJSON Core.:>
                                         Core.ReqBody '[Core.JSON] Version Core.:>
                                           Core.Patch '[Core.JSON] Operation

-- | Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance/class (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance/class)automatic scaling in the standard environment: automatic/scaling.min/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automaticScaling.standard/scheduler/settings.max/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.min/instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/cpu/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/throughput/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving/status (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status) manual/scaling.instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)Flexible environment serving/status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status)automatic scaling in the flexible environment: automatic/scaling.min/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cool/down/period/sec (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cpu/utilization.target/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling)manual scaling in the flexible environment: manual_scaling.instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsServicesVersionsPatch' smart constructor.
data AppEngineProjectsLocationsApplicationsServicesVersionsPatch = AppEngineProjectsLocationsApplicationsServicesVersionsPatch
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
      -- | Multipart request metadata.
    , payload :: Version
      -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default\/versions\/1.
    , projectsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , servicesId :: Core.Text
      -- | Standard field mask for the set of fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , versionsId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsServicesVersionsPatch' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsServicesVersionsPatch 
    :: 
                                                               Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Version
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default\/versions\/1. See 'projectsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'servicesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'versionsId'.
    -> AppEngineProjectsLocationsApplicationsServicesVersionsPatch
newAppEngineProjectsLocationsApplicationsServicesVersionsPatch
  applicationsId locationsId payload projectsId servicesId versionsId
  = AppEngineProjectsLocationsApplicationsServicesVersionsPatch{xgafv
                                                                  = Core.Nothing,
                                                                accessToken = Core.Nothing,
                                                                applicationsId = applicationsId,
                                                                callback = Core.Nothing,
                                                                locationsId = locationsId,
                                                                payload = payload,
                                                                projectsId = projectsId,
                                                                servicesId = servicesId,
                                                                updateMask = Core.Nothing,
                                                                uploadType = Core.Nothing,
                                                                uploadProtocol = Core.Nothing,
                                                                versionsId = versionsId}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsServicesVersionsPatch
         where
        type Rs AppEngineProjectsLocationsApplicationsServicesVersionsPatch
             = Operation
        type Scopes
               AppEngineProjectsLocationsApplicationsServicesVersionsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsServicesVersionsPatch{..}
          = go projectsId locationsId applicationsId servicesId versionsId
              xgafv
              accessToken
              callback
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
                           AppEngineProjectsLocationsApplicationsServicesVersionsPatchResource)
                      Core.mempty

