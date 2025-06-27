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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified playbook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Delete
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksDeleteResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksDelete (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksDeleteResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a specified playbook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksDelete = DialogFlowProjectsLocationsAgentsPlaybooksDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the playbook to delete. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksDelete 
    :: 
                                                    Core.Text
       -- ^  Required. The name of the playbook to delete. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksDelete
newDialogFlowProjectsLocationsAgentsPlaybooksDelete name
  = DialogFlowProjectsLocationsAgentsPlaybooksDelete{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, name = name,
                                                     uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksDelete
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksDelete =
             GoogleProtobufEmpty
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksDelete =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsPlaybooksDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksDeleteResource)
                      Core.mempty

