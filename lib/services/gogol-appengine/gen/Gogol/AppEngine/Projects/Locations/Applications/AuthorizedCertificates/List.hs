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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all SSL certificates the user is authorized to administer.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedCertificates.list@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.List
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsAuthorizedCertificatesListResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList (..)
    , newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.authorizedCertificates.list@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedCertificatesListResource
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
                           Core.QueryParam "pageSize" Core.Int32 Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "view"
                                     ProjectsLocationsApplicationsAuthorizedCertificatesListView
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] ListAuthorizedCertificatesResponse

-- | Lists all SSL certificates the user is authorized to administer.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesList' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
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
      -- | Maximum results to return per page.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Continuation token for fetching the next page of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Controls the set of fields returned in the LIST response.
    , view :: (Core.Maybe
   ProjectsLocationsApplicationsAuthorizedCertificatesListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesList 
    :: 
                                                                    Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'locationsId'.
    -> Core.Text
       -- ^  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
  applicationsId locationsId projectsId
  = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList{xgafv
                                                                       = Core.Nothing,
                                                                     accessToken = Core.Nothing,
                                                                     applicationsId =
                                                                       applicationsId,
                                                                     callback = Core.Nothing,
                                                                     locationsId = locationsId,
                                                                     pageSize = Core.Nothing,
                                                                     pageToken = Core.Nothing,
                                                                     projectsId = projectsId,
                                                                     uploadType = Core.Nothing,
                                                                     uploadProtocol = Core.Nothing,
                                                                     view = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
         where
        type Rs
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
             = ListAuthorizedCertificatesResponse
        type Scopes
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList
             =
             '[Appengine'Admin, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient
          AppEngineProjectsLocationsApplicationsAuthorizedCertificatesList{..}
          = go projectsId locationsId applicationsId xgafv accessToken
              callback
              pageSize
              pageToken
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesListResource)
                      Core.mempty

