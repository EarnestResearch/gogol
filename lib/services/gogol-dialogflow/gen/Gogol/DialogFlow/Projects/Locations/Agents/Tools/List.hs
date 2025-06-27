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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Tools in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsListResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsList (..)
    , newDialogFlowProjectsLocationsAgentsToolsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsList' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsListResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tools" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3ListToolsResponse

-- | Returns a list of Tools in the specified agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsList' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsList = DialogFlowProjectsLocationsAgentsToolsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The agent to list the Tools from. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsList 
    :: 
                                              Core.Text
       -- ^  Required. The agent to list the Tools from. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsToolsList
newDialogFlowProjectsLocationsAgentsToolsList parent
  = DialogFlowProjectsLocationsAgentsToolsList{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               pageSize = Core.Nothing, pageToken = Core.Nothing,
                                               parent = parent, uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsList
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsList =
             GoogleCloudDialogflowCxV3ListToolsResponse
        type Scopes DialogFlowProjectsLocationsAgentsToolsList =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsToolsList{..}
          = go parent xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DialogFlowProjectsLocationsAgentsToolsListResource)
                      Core.mempty

