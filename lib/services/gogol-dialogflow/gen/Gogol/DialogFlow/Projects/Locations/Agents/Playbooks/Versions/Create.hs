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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Versions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version for the specified Playbook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.versions.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Versions.Create
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreateResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.versions.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreateResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "versions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3PlaybookVersion
                         Core.:>
                         Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3PlaybookVersion

-- | Creates a version for the specified Playbook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate = DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The playbook to create a version for. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3PlaybookVersion
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate 
    :: 
                                                            Core.Text
       -- ^  Required. The playbook to create a version for. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@. See 'parent'.
    -> GoogleCloudDialogflowCxV3PlaybookVersion
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate
newDialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate parent
  payload
  = DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate{xgafv =
                                                               Core.Nothing,
                                                             accessToken = Core.Nothing,
                                                             callback = Core.Nothing,
                                                             parent = parent, payload = payload,
                                                             uploadType = Core.Nothing,
                                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate =
             GoogleCloudDialogflowCxV3PlaybookVersion
        type Scopes
               DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate
             = '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreate{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksVersionsCreateResource)
                      Core.mempty

