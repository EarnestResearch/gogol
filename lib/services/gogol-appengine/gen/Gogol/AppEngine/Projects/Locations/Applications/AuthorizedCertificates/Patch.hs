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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate/data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display/name may also be updated.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedCertificates.patch@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedCertificates.Patch
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatchResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch (..)
    , newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.authorizedCertificates.patch@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatchResource
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
                             Core.QueryParam "updateMask" Core.FieldMask Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] AuthorizedCertificate Core.:>
                                       Core.Patch '[Core.JSON] AuthorizedCertificate

-- | Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate/data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display/name may also be updated.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
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
      -- | Multipart request metadata.
    , payload :: AuthorizedCertificate
      -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/authorizedCertificates\/12345.
    , projectsId :: Core.Text
      -- | Standard field mask for the set of fields to be updated. Updates are only supported on the certificate/raw/data and display_name fields.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch 
    :: 
                                                                     Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'authorizedCertificatesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> AuthorizedCertificate
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource to update. Example: apps\/myapp\/authorizedCertificates\/12345. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
newAppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
  applicationsId authorizedCertificatesId locationsId payload
  projectsId
  = AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch{xgafv
                                                                        = Core.Nothing,
                                                                      accessToken = Core.Nothing,
                                                                      applicationsId =
                                                                        applicationsId,
                                                                      authorizedCertificatesId =
                                                                        authorizedCertificatesId,
                                                                      callback = Core.Nothing,
                                                                      locationsId = locationsId,
                                                                      payload = payload,
                                                                      projectsId = projectsId,
                                                                      updateMask = Core.Nothing,
                                                                      uploadType = Core.Nothing,
                                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
         where
        type Rs
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
             = AuthorizedCertificate
        type Scopes
               AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatch{..}
          = go projectsId locationsId applicationsId authorizedCertificatesId
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
                           AppEngineProjectsLocationsApplicationsAuthorizedCertificatesPatchResource)
                      Core.mempty

