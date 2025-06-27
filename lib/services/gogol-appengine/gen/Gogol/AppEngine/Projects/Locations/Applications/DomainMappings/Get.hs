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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified domain mapping.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.domainMappings.get@.
module Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Get
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsDomainMappingsGetResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsDomainMappingsGet (..)
    , newAppEngineProjectsLocationsApplicationsDomainMappingsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.domainMappings.get@ method which the
-- 'AppEngineProjectsLocationsApplicationsDomainMappingsGet' request conforms to.
type AppEngineProjectsLocationsApplicationsDomainMappingsGetResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "domainMappings" Core.:>
                     Core.Capture "domainMappingsId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] DomainMapping

-- | Gets the specified domain mapping.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsDomainMappingsGet' smart constructor.
data AppEngineProjectsLocationsApplicationsDomainMappingsGet = AppEngineProjectsLocationsApplicationsDomainMappingsGet
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
    , domainMappingsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/domainMappings\/example.com.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsDomainMappingsGet' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsDomainMappingsGet 
    :: 
                                                           Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'domainMappingsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource requested. Example: apps\/myapp\/domainMappings\/example.com. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsDomainMappingsGet
newAppEngineProjectsLocationsApplicationsDomainMappingsGet
  applicationsId domainMappingsId locationsId projectsId
  = AppEngineProjectsLocationsApplicationsDomainMappingsGet{xgafv =
                                                              Core.Nothing,
                                                            accessToken = Core.Nothing,
                                                            applicationsId = applicationsId,
                                                            callback = Core.Nothing,
                                                            domainMappingsId = domainMappingsId,
                                                            locationsId = locationsId,
                                                            projectsId = projectsId,
                                                            uploadType = Core.Nothing,
                                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsDomainMappingsGet
         where
        type Rs AppEngineProjectsLocationsApplicationsDomainMappingsGet =
             DomainMapping
        type Scopes AppEngineProjectsLocationsApplicationsDomainMappingsGet
             =
             '[Appengine'Admin, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient
          AppEngineProjectsLocationsApplicationsDomainMappingsGet{..}
          = go projectsId locationsId applicationsId domainMappingsId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsDomainMappingsGetResource)
                      Core.mempty

