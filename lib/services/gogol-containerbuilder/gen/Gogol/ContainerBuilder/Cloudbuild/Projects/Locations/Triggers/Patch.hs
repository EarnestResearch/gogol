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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.patch@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Patch
    (
    -- * Resource
      CloudbuildProjectsLocationsTriggersPatchResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsTriggersPatch (..)
    , newCloudbuildProjectsLocationsTriggersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.triggers.patch@ method which the
-- 'CloudbuildProjectsLocationsTriggersPatch' request conforms to.
type CloudbuildProjectsLocationsTriggersPatchResource
     =
     "v1" Core.:>
       Core.Capture "resourceName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "projectId" Core.Text Core.:>
                 Core.QueryParam "triggerId" Core.Text Core.:>
                   Core.QueryParam "updateMask" Core.FieldMask Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] BuildTrigger Core.:>
                             Core.Patch '[Core.JSON] BuildTrigger

-- | Updates a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersPatch' smart constructor.
data CloudbuildProjectsLocationsTriggersPatch = CloudbuildProjectsLocationsTriggersPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BuildTrigger
      -- | Required. ID of the project that owns the trigger.
    , projectId :: (Core.Maybe Core.Text)
      -- | The @Trigger@ name with format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@, where {trigger} is a unique identifier generated by the service.
    , resourceName :: Core.Text
      -- | Required. ID of the @BuildTrigger@ to update.
    , triggerId :: (Core.Maybe Core.Text)
      -- | Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersPatch' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersPatch 
    ::  BuildTrigger
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The @Trigger@ name with format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@, where {trigger} is a unique identifier generated by the service. See 'resourceName'.
    -> CloudbuildProjectsLocationsTriggersPatch
newCloudbuildProjectsLocationsTriggersPatch payload resourceName =
  CloudbuildProjectsLocationsTriggersPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = Core.Nothing
    , resourceName = resourceName
    , triggerId = Core.Nothing
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsTriggersPatch
         where
        type Rs CloudbuildProjectsLocationsTriggersPatch =
             BuildTrigger
        type Scopes CloudbuildProjectsLocationsTriggersPatch
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsTriggersPatch{..}
          = go resourceName xgafv accessToken callback
              projectId
              triggerId
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsTriggersPatchResource)
                      Core.mempty

