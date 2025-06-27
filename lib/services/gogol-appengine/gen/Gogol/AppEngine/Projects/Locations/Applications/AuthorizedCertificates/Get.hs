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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedCertificates.get@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Get
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGetResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet (..)
    , newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.authorizedCertificates.get@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGetResource
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
                                 Core.QueryParam "view"
                                   ProjectsLocationsApplicationsAuthorizedCertificatesGetView
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] AuthorizedCertificate

-- | Gets the specified SSL certificate.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
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
      -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/authorizedCertificates\/12345.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Controls the set of fields returned in the GET response.
    , view :: (Core.Maybe
   ProjectsLocationsApplicationsAuthorizedCertificatesGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet 
    :: 
                                                                   Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'authorizedCertificatesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource requested. Example: apps\/myapp\/authorizedCertificates\/12345. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
  applicationsId authorizedCertificatesId locationsId projectsId
  = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet{xgafv
                                                                      = Core.Nothing,
                                                                    accessToken = Core.Nothing,
                                                                    applicationsId = applicationsId,
                                                                    authorizedCertificatesId =
                                                                      authorizedCertificatesId,
                                                                    callback = Core.Nothing,
                                                                    locationsId = locationsId,
                                                                    projectsId = projectsId,
                                                                    uploadType = Core.Nothing,
                                                                    uploadProtocol = Core.Nothing,
                                                                    view = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
         where
        type Rs
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
             = AuthorizedCertificate
        type Scopes
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet
             =
             '[Appengine'Admin, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient
          AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGet{..}
          = go projectsId locationsId applicationsId authorizedCertificatesId
              xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesGetResource)
                      Core.mempty

