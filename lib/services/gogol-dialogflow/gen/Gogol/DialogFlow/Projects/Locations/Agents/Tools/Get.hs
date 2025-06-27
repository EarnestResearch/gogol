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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Tool.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsGetResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsGet (..)
    , newDialogFlowProjectsLocationsAgentsToolsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Tool

-- | Retrieves the specified Tool.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsGet = DialogFlowProjectsLocationsAgentsToolsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Tool. Format: @projects\/\/locations\/\/agents\/\/tools\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsGet 
    :: 
                                             Core.Text
       -- ^  Required. The name of the Tool. Format: @projects\/\/locations\/\/agents\/\/tools\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsToolsGet
newDialogFlowProjectsLocationsAgentsToolsGet name
  = DialogFlowProjectsLocationsAgentsToolsGet{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              name = name, uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsGet
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsGet =
             GoogleCloudDialogflowCxV3Tool
        type Scopes DialogFlowProjectsLocationsAgentsToolsGet =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsToolsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DialogFlowProjectsLocationsAgentsToolsGetResource)
                      Core.mempty

