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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.domainMappings.create@.
module Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Create
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsDomainMappingsCreateResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsDomainMappingsCreate (..)
    , newAppEngineProjectsLocationsApplicationsDomainMappingsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.domainMappings.create@ method which the
-- 'AppEngineProjectsLocationsApplicationsDomainMappingsCreate' request conforms to.
type AppEngineProjectsLocationsApplicationsDomainMappingsCreateResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "domainMappings" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "overrideStrategy"
                             ProjectsLocationsApplicationsDomainMappingsCreateOverrideStrategy
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] DomainMapping Core.:>
                                     Core.Post '[Core.JSON] Operation

-- | Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsDomainMappingsCreate' smart constructor.
data AppEngineProjectsLocationsApplicationsDomainMappingsCreate = AppEngineProjectsLocationsApplicationsDomainMappingsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @parent@. See documentation of @projectsId@.
    , applicationsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @parent@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
    , overrideStrategy :: (Core.Maybe
   ProjectsLocationsApplicationsDomainMappingsCreateOverrideStrategy)
      -- | Multipart request metadata.
    , payload :: DomainMapping
      -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsDomainMappingsCreate' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsDomainMappingsCreate 
    :: 
                                                              Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'locationsId'.
    -> DomainMapping
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsDomainMappingsCreate
newAppEngineProjectsLocationsApplicationsDomainMappingsCreate
  applicationsId locationsId payload projectsId
  = AppEngineProjectsLocationsApplicationsDomainMappingsCreate{xgafv
                                                                 = Core.Nothing,
                                                               accessToken = Core.Nothing,
                                                               applicationsId = applicationsId,
                                                               callback = Core.Nothing,
                                                               locationsId = locationsId,
                                                               overrideStrategy = Core.Nothing,
                                                               payload = payload,
                                                               projectsId = projectsId,
                                                               uploadType = Core.Nothing,
                                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsDomainMappingsCreate
         where
        type Rs AppEngineProjectsLocationsApplicationsDomainMappingsCreate
             = Operation
        type Scopes
               AppEngineProjectsLocationsApplicationsDomainMappingsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsDomainMappingsCreate{..}
          = go projectsId locationsId applicationsId xgafv accessToken
              callback
              overrideStrategy
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsDomainMappingsCreateResource)
                      Core.mempty

