{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a build with the specified configuration. This method returns a long-running @Operation@, which includes the build ID. Pass the build ID to @GetBuild@ to determine the build status (such as @SUCCESS@ or @FAILURE@).
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Create
    (
    -- * Resource
      CloudbuildProjectsBuildsCreateResource

    -- ** Constructing a Request
    , CloudbuildProjectsBuildsCreate (..)
    , newCloudbuildProjectsBuildsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.builds.create@ method which the
-- 'CloudbuildProjectsBuildsCreate' request conforms to.
type CloudbuildProjectsBuildsCreateResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "builds" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "parent" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Build Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Starts a build with the specified configuration. This method returns a long-running @Operation@, which includes the build ID. Pass the build ID to @GetBuild@ to determine the build status (such as @SUCCESS@ or @FAILURE@).
--
-- /See:/ 'newCloudbuildProjectsBuildsCreate' smart constructor.
data CloudbuildProjectsBuildsCreate = CloudbuildProjectsBuildsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The parent resource where this build will be created. Format: @projects\/{project}\/locations\/{location}@
    , parent :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Build
      -- | Required. ID of the project.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsBuildsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsBuildsCreate 
    ::  Build
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. ID of the project. See 'projectId'.
    -> CloudbuildProjectsBuildsCreate
newCloudbuildProjectsBuildsCreate payload projectId =
  CloudbuildProjectsBuildsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsBuildsCreate
         where
        type Rs CloudbuildProjectsBuildsCreate = Operation
        type Scopes CloudbuildProjectsBuildsCreate =
             '[CloudPlatform'FullControl]
        requestClient CloudbuildProjectsBuildsCreate{..}
          = go projectId xgafv accessToken callback parent
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbuildProjectsBuildsCreateResource)
                      Core.mempty
