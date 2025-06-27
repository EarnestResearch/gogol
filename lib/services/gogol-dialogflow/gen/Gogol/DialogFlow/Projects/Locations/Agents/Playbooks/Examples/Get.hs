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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Examples.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified example.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.examples.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Examples.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksExamplesGetResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksExamplesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.examples.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksExamplesGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Example

-- | Retrieves the specified example.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksExamplesGet' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet = DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the example. Format: @projects\/\/locations\/\/agents\/\/playbooks\/\/examples\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksExamplesGet 
    :: 
                                                         Core.Text
       -- ^  Required. The name of the example. Format: @projects\/\/locations\/\/agents\/\/playbooks\/\/examples\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet
newDialogFlowProjectsLocationsAgentsPlaybooksExamplesGet name
  = DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet =
             GoogleCloudDialogflowCxV3Example
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsPlaybooksExamplesGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksExamplesGetResource)
                      Core.mempty

