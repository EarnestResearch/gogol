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
-- Module      : Gogol.Composer.Projects.Locations.Environments.RestartWebServer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restart Airflow web server.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.restartWebServer@.
module Gogol.Composer.Projects.Locations.Environments.RestartWebServer
    (
    -- * Resource
      ComposerProjectsLocationsEnvironmentsRestartWebServerResource

    -- ** Constructing a Request
    , ComposerProjectsLocationsEnvironmentsRestartWebServer (..)
    , newComposerProjectsLocationsEnvironmentsRestartWebServer
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Composer.Types

-- | A resource alias for @composer.projects.locations.environments.restartWebServer@ method which the
-- 'ComposerProjectsLocationsEnvironmentsRestartWebServer' request conforms to.
type ComposerProjectsLocationsEnvironmentsRestartWebServerResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "restartWebServer" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RestartWebServerRequest Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Restart Airflow web server.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsRestartWebServer' smart constructor.
data ComposerProjectsLocationsEnvironmentsRestartWebServer = ComposerProjectsLocationsEnvironmentsRestartWebServer
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the environment to restart the web server for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RestartWebServerRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsRestartWebServer' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsRestartWebServer 
    :: 
                                                         Core.Text
       -- ^  Required. The resource name of the environment to restart the web server for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'name'.
    -> RestartWebServerRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ComposerProjectsLocationsEnvironmentsRestartWebServer
newComposerProjectsLocationsEnvironmentsRestartWebServer name
  payload
  = ComposerProjectsLocationsEnvironmentsRestartWebServer{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          payload = payload,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComposerProjectsLocationsEnvironmentsRestartWebServer
         where
        type Rs ComposerProjectsLocationsEnvironmentsRestartWebServer =
             Operation
        type Scopes ComposerProjectsLocationsEnvironmentsRestartWebServer =
             '[CloudPlatform'FullControl]
        requestClient
          ComposerProjectsLocationsEnvironmentsRestartWebServer{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              composerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComposerProjectsLocationsEnvironmentsRestartWebServerResource)
                      Core.mempty

