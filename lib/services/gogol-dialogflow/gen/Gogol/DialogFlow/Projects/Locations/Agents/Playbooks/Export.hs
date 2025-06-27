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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Export
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the specified playbook to a binary file. Note that resources (e.g. examples, tools) that the playbook references will also be exported.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.playbooks.export@.
module Gogol.DialogFlow.Projects.Locations.Agents.Playbooks.Export
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsPlaybooksExportResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsPlaybooksExport (..)
    , newDialogFlowProjectsLocationsAgentsPlaybooksExport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.playbooks.export@ method which the
-- 'DialogFlowProjectsLocationsAgentsPlaybooksExport' request conforms to.
type DialogFlowProjectsLocationsAgentsPlaybooksExportResource =
     "v3" Core.:>
       Core.CaptureMode "name" "export" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3ExportPlaybookRequest
                       Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports the specified playbook to a binary file. Note that resources (e.g. examples, tools) that the playbook references will also be exported.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPlaybooksExport' smart constructor.
data DialogFlowProjectsLocationsAgentsPlaybooksExport = DialogFlowProjectsLocationsAgentsPlaybooksExport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the playbook to export. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3ExportPlaybookRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPlaybooksExport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPlaybooksExport 
    :: 
                                                    Core.Text
       -- ^  Required. The name of the playbook to export. Format: @projects\/\/locations\/\/agents\/\/playbooks\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3ExportPlaybookRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsPlaybooksExport
newDialogFlowProjectsLocationsAgentsPlaybooksExport name payload
  = DialogFlowProjectsLocationsAgentsPlaybooksExport{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, name = name,
                                                     payload = payload, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsPlaybooksExport
         where
        type Rs DialogFlowProjectsLocationsAgentsPlaybooksExport =
             GoogleLongrunningOperation
        type Scopes DialogFlowProjectsLocationsAgentsPlaybooksExport =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsPlaybooksExport{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsPlaybooksExportResource)
                      Core.mempty

