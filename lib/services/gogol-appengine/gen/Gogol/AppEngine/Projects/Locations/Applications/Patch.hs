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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Application resource. You can update the following fields: auth/domain - Google authentication domain for controlling user access to the application. default/cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.patch@.
module Gogol.AppEngine.Projects.Locations.Applications.Patch
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsPatchResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsPatch (..)
    , newAppEngineProjectsLocationsApplicationsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.patch@ method which the
-- 'AppEngineProjectsLocationsApplicationsPatch' request conforms to.
type AppEngineProjectsLocationsApplicationsPatchResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "updateMask" Core.FieldMask Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] Application Core.:>
                                   Core.Patch '[Core.JSON] Operation

-- | Updates the specified Application resource. You can update the following fields: auth/domain - Google authentication domain for controlling user access to the application. default/cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsPatch' smart constructor.
data AppEngineProjectsLocationsApplicationsPatch = AppEngineProjectsLocationsApplicationsPatch
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
    , payload :: Application
      -- | Part of @name@. Name of the Application resource to update. Example: apps\/myapp.
    , projectsId :: Core.Text
      -- | Required. Standard field mask for the set of fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsPatch' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsPatch 
    :: 
                                               Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Application
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @name@. Name of the Application resource to update. Example: apps\/myapp. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsPatch
newAppEngineProjectsLocationsApplicationsPatch applicationsId
  locationsId payload projectsId
  = AppEngineProjectsLocationsApplicationsPatch{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing,
                                                applicationsId = applicationsId,
                                                callback = Core.Nothing, locationsId = locationsId,
                                                payload = payload, projectsId = projectsId,
                                                updateMask = Core.Nothing,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsPatch
         where
        type Rs AppEngineProjectsLocationsApplicationsPatch = Operation
        type Scopes AppEngineProjectsLocationsApplicationsPatch =
             '[CloudPlatform'FullControl]
        requestClient AppEngineProjectsLocationsApplicationsPatch{..}
          = go projectsId locationsId applicationsId xgafv accessToken
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
                         Core.Proxy AppEngineProjectsLocationsApplicationsPatchResource)
                      Core.mempty

