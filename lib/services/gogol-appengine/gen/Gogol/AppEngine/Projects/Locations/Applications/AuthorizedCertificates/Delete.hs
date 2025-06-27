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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedCertificates.delete@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Delete
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDeleteResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete (..)
    , newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.authorizedCertificates.delete@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDeleteResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "authorizedCertificates" Core.:>
                     Core.Capture "authorizedCertificatesId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] Empty

-- | Deletes the specified SSL certificate.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , applicationsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , authorizedCertificatesId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Part of @name@. Name of the resource to delete. Example: apps\/myapp\/authorizedCertificates\/12345.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete 
    :: 
                                                                      Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'authorizedCertificatesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource to delete. Example: apps\/myapp\/authorizedCertificates\/12345. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
  applicationsId authorizedCertificatesId locationsId projectsId
  = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete{xgafv
                                                                         = Core.Nothing,
                                                                       accessToken = Core.Nothing,
                                                                       applicationsId =
                                                                         applicationsId,
                                                                       authorizedCertificatesId =
                                                                         authorizedCertificatesId,
                                                                       callback = Core.Nothing,
                                                                       locationsId = locationsId,
                                                                       projectsId = projectsId,
                                                                       uploadType = Core.Nothing,
                                                                       uploadProtocol =
                                                                         Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
         where
        type Rs
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
             = Empty
        type Scopes
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDelete{..}
          = go projectsId locationsId applicationsId authorizedCertificatesId
              xgafv
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
                           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesDeleteResource)
                      Core.mempty

