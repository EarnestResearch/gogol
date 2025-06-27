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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Import
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the specified playbook to the specified agent from a binary file.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.import@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Import
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksImportResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksImport (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksImport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.import@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksImport' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksImportResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "playbooks:import" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudDialogflowCxV3ImportPlaybookRequest
                         Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Imports the specified playbook to the specified agent from a binary file.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksImport' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksImport = DialogFlowProjectsLocationsAgentsPlaybooksImport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The agent to import the playbook into. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3ImportPlaybookRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksImport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksImport 
    :: 
                                                    Core.Text
       -- ^  Required. The agent to import the playbook into. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> GoogleCloudDialogflowCxV3ImportPlaybookRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksImport
newDialogFlowProjectsLocationsAgentsPlaybooksImport parent payload
  = DialogFlowProjectsLocationsAgentsPlaybooksImport{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, parent = parent,
                                                     payload = payload, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksImport
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksImport =
             GoogleLongrunningOperation
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksImport =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsPlaybooksImport{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksImportResource)
                      Core.mempty

