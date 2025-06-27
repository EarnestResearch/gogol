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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Examples.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of examples in the specified playbook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.examples.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Examples.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksExamplesListResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksExamplesList (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksExamplesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.examples.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksExamplesList' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksExamplesListResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "examples" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3ListExamplesResponse

-- | Returns a list of examples in the specified playbook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksExamplesList' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksExamplesList = DialogFlowProjectsLocationsAgentsPlaybooksExamplesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The language to list examples for. If not specified, list all examples under the playbook. Note: languages must be enabled in the agent before they can be used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of items to return in a single page. By default 100 and at most 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The next/page/token value returned from a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The playbook to list the examples from. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksExamplesList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksExamplesList 
    :: 
                                                          Core.Text
       -- ^  Required. The playbook to list the examples from. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksExamplesList
newDialogFlowProjectsLocationsAgentsPlaybooksExamplesList parent
  = DialogFlowProjectsLocationsAgentsPlaybooksExamplesList{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing,
                                                           languageCode = Core.Nothing,
                                                           pageSize = Core.Nothing,
                                                           pageToken = Core.Nothing,
                                                           parent = parent,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksExamplesList
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksExamplesList =
             GoogleCloudDialogflowCxV3ListExamplesResponse
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksExamplesList
             = '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsPlaybooksExamplesList{..}
          = go parent xgafv accessToken callback languageCode pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksExamplesListResource)
                      Core.mempty

