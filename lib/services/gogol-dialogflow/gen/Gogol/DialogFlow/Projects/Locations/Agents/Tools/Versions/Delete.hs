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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.Versions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified version of the Tool.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.versions.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.Versions.Delete
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsVersionsDeleteResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsVersionsDelete (..)
    , newDialogFlowProjectsLocationsAgentsToolsVersionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.versions.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsVersionsDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsVersionsDeleteResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "force" Core.Bool Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the specified version of the Tool.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsVersionsDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsVersionsDelete = DialogFlowProjectsLocationsAgentsToolsVersionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. This field has no effect for Tools not being used. For Tools that are used: * If @force@ is set to false, an error will be returned with message indicating the referenced resources. * If @force@ is set to true, Dialogflow will remove the tool, as well as any references to the tool.
    , force :: (Core.Maybe Core.Bool)
      -- | Required. The name of the tool version to delete. Format: @projects\/\/locations\/\/agents\/\/tools\/\/versions\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsVersionsDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsVersionsDelete 
    :: 
                                                        Core.Text
       -- ^  Required. The name of the tool version to delete. Format: @projects\/\/locations\/\/agents\/\/tools\/\/versions\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsToolsVersionsDelete
newDialogFlowProjectsLocationsAgentsToolsVersionsDelete name
  = DialogFlowProjectsLocationsAgentsToolsVersionsDelete{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing,
                                                         force = Core.Nothing, name = name,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsVersionsDelete
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsVersionsDelete =
             GoogleProtobufEmpty
        type Scopes DialogFlowProjectsLocationsAgentsToolsVersionsDelete =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsToolsVersionsDelete{..}
          = go name xgafv accessToken callback force uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsToolsVersionsDeleteResource)
                      Core.mempty

