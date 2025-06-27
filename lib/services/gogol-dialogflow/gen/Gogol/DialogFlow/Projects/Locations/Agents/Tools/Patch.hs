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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the specified Tool.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.Patch
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsPatchResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsPatch (..)
    , newDialogFlowProjectsLocationsAgentsToolsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsPatchResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3Tool Core.:>
                         Core.Patch '[Core.JSON] GoogleCloudDialogflowCxV3Tool

-- | Update the specified Tool.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsPatch = DialogFlowProjectsLocationsAgentsToolsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique identifier of the Tool. Format: @projects\/\/locations\/\/agents\/\/tools\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3Tool
      -- | The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsPatch 
    :: 
                                               Core.Text
       -- ^  The unique identifier of the Tool. Format: @projects\/\/locations\/\/agents\/\/tools\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3Tool
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsToolsPatch
newDialogFlowProjectsLocationsAgentsToolsPatch name payload
  = DialogFlowProjectsLocationsAgentsToolsPatch{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                name = name, payload = payload,
                                                updateMask = Core.Nothing,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsPatch
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsPatch =
             GoogleCloudDialogflowCxV3Tool
        type Scopes DialogFlowProjectsLocationsAgentsToolsPatch =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient DialogFlowProjectsLocationsAgentsToolsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DialogFlowProjectsLocationsAgentsToolsPatchResource)
                      Core.mempty

