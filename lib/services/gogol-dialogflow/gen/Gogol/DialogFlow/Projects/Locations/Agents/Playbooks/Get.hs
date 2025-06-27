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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Playbook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksGetResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksGet (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksGet' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Playbook

-- | Retrieves the specified Playbook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksGet' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksGet = DialogFlowProjectsLocationsAgentsPlaybooksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the playbook. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksGet 
    :: 
                                                 Core.Text
       -- ^  Required. The name of the playbook. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksGet
newDialogFlowProjectsLocationsAgentsPlaybooksGet name
  = DialogFlowProjectsLocationsAgentsPlaybooksGet{xgafv =
                                                    Core.Nothing,
                                                  accessToken = Core.Nothing,
                                                  callback = Core.Nothing, name = name,
                                                  uploadType = Core.Nothing,
                                                  uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksGet
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksGet =
             GoogleCloudDialogflowCxV3Playbook
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksGet =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsPlaybooksGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DialogFlowProjectsLocationsAgentsPlaybooksGetResource)
                      Core.mempty

