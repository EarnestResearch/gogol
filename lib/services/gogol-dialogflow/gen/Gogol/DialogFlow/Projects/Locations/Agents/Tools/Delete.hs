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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified Tool.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.Delete
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsDeleteResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsDelete (..)
    , newDialogFlowProjectsLocationsAgentsToolsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsDeleteResource =
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

-- | Deletes a specified Tool.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsDelete = DialogFlowProjectsLocationsAgentsToolsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | This field has no effect for Tools not being used. For Tools that are used: * If @force@ is set to false, an error will be returned with message indicating the referenced resources. * If @force@ is set to true, Dialogflow will remove the tool, as well as any references to the tool.
    , force :: (Core.Maybe Core.Bool)
      -- | Required. The name of the Tool to be deleted. Format: @projects\/\/locations\/\/agents\/\/tools\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsDelete 
    :: 
                                                Core.Text
       -- ^  Required. The name of the Tool to be deleted. Format: @projects\/\/locations\/\/agents\/\/tools\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsToolsDelete
newDialogFlowProjectsLocationsAgentsToolsDelete name
  = DialogFlowProjectsLocationsAgentsToolsDelete{xgafv =
                                                   Core.Nothing,
                                                 accessToken = Core.Nothing,
                                                 callback = Core.Nothing, force = Core.Nothing,
                                                 name = name, uploadType = Core.Nothing,
                                                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsDelete
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsDelete =
             GoogleProtobufEmpty
        type Scopes DialogFlowProjectsLocationsAgentsToolsDelete =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsToolsDelete{..}
          = go name xgafv accessToken callback force uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DialogFlowProjectsLocationsAgentsToolsDeleteResource)
                      Core.mempty

