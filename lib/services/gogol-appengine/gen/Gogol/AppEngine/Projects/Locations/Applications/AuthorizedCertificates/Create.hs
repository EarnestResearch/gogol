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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedCertificates.create@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Create
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreateResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate (..)
    , newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.authorizedCertificates.create@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreateResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "authorizedCertificates" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] AuthorizedCertificate Core.:>
                                   Core.Post '[Core.JSON] AuthorizedCertificate

-- | Uploads the specified SSL certificate.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
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
      -- | Multipart request metadata.
    , payload :: AuthorizedCertificate
      -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate 
    :: 
                                                                      Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'locationsId'.
    -> AuthorizedCertificate
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
  applicationsId locationsId payload projectsId
  = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate{xgafv
                                                                         = Core.Nothing,
                                                                       accessToken = Core.Nothing,
                                                                       applicationsId =
                                                                         applicationsId,
                                                                       callback = Core.Nothing,
                                                                       locationsId = locationsId,
                                                                       payload = payload,
                                                                       projectsId = projectsId,
                                                                       uploadType = Core.Nothing,
                                                                       uploadProtocol =
                                                                         Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
         where
        type Rs
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
             = AuthorizedCertificate
        type Scopes
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreate{..}
          = go projectsId locationsId applicationsId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesCreateResource)
                      Core.mempty

