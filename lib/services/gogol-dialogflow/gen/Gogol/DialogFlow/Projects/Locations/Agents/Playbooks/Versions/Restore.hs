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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Versions.Restore
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified version of the Playbook and stores it as the current playbook draft, returning the playbook with resources updated.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.versions.restore@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Versions.Restore
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestoreResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.versions.restore@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestoreResource
     =
     "v3" Core.:>
       Core.CaptureMode "name" "restore" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse

-- | Retrieves the specified version of the Playbook and stores it as the current playbook draft, returning the playbook with resources updated.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore = DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the playbook version. Format: @projects\/\/locations\/\/agents\/\/playbooks\/\/versions\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore 
    :: 
                                                             Core.Text
       -- ^  Required. The name of the playbook version. Format: @projects\/\/locations\/\/agents\/\/playbooks\/\/versions\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore
newDialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore name
  payload
  = DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore{xgafv =
                                                                Core.Nothing,
                                                              accessToken = Core.Nothing,
                                                              callback = Core.Nothing, name = name,
                                                              payload = payload,
                                                              uploadType = Core.Nothing,
                                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore =
             GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore
             = '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestore{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksVersionsRestoreResource)
                      Core.mempty

