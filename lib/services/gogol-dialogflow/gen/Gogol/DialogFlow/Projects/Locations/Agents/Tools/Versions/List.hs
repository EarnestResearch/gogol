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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Tools.Versions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List versions of the specified Tool.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.tools.versions.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Tools.Versions.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsToolsVersionsListResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsToolsVersionsList (..)
    , newDialogFlowProjectsLocationsAgentsToolsVersionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.tools.versions.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsToolsVersionsList' request conforms to.
type DialogFlowProjectsLocationsAgentsToolsVersionsListResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "versions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleCloudDialogflowCxV3ListToolVersionsResponse

-- | List versions of the specified Tool.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsToolsVersionsList' smart constructor.
data DialogFlowProjectsLocationsAgentsToolsVersionsList = DialogFlowProjectsLocationsAgentsToolsVersionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of items to return in a single page. By default 100 and at most 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The next/page/token value returned from a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent of the tool versions. Format: @projects\/\/locations\/\/agents\/\/tools\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsToolsVersionsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsToolsVersionsList 
    :: 
                                                      Core.Text
       -- ^  Required. The parent of the tool versions. Format: @projects\/\/locations\/\/agents\/\/tools\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsToolsVersionsList
newDialogFlowProjectsLocationsAgentsToolsVersionsList parent
  = DialogFlowProjectsLocationsAgentsToolsVersionsList{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing,
                                                       pageSize = Core.Nothing,
                                                       pageToken = Core.Nothing, parent = parent,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsToolsVersionsList
         where
        type Rs DialogFlowProjectsLocationsAgentsToolsVersionsList =
             GoogleCloudDialogflowCxV3ListToolVersionsResponse
        type Scopes DialogFlowProjectsLocationsAgentsToolsVersionsList =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsToolsVersionsList{..}
          = go parent xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsToolsVersionsListResource)
                      Core.mempty

