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
-- Module      : Gogol.CloudKMS.Projects.ShowEffectiveKeyAccessJustificationsPolicyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the KeyAccessJustificationsPolicyConfig of the resource closest to the given project in hierarchy.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.showEffectiveKeyAccessJustificationsPolicyConfig@.
module Gogol.CloudKMS.Projects.ShowEffectiveKeyAccessJustificationsPolicyConfig
    (
    -- * Resource
      CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfigResource

    -- ** Constructing a Request
    , CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig (..)
    , newCloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.showEffectiveKeyAccessJustificationsPolicyConfig@ method which the
-- 'CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig' request conforms to.
type CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfigResource
     =
     "v1" Core.:>
       Core.CaptureMode "project"
         "showEffectiveKeyAccessJustificationsPolicyConfig"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       ShowEffectiveKeyAccessJustificationsPolicyConfigResponse

-- | Returns the KeyAccessJustificationsPolicyConfig of the resource closest to the given project in hierarchy.
--
-- /See:/ 'newCloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig' smart constructor.
data CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig = CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The number or id of the project to get the effective KeyAccessJustificationsPolicyConfig. In the format of \"projects\/{|}\"
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig' with the minimum fields required to make a request.
newCloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig 
    :: 
                                                                    Core.Text
       -- ^  Required. The number or id of the project to get the effective KeyAccessJustificationsPolicyConfig. In the format of \"projects\/{|}\" See 'project'.
    -> CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
newCloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
  project
  = CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig{xgafv
                                                                       = Core.Nothing,
                                                                     accessToken = Core.Nothing,
                                                                     callback = Core.Nothing,
                                                                     project = project,
                                                                     uploadType = Core.Nothing,
                                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
         where
        type Rs
               CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
             = ShowEffectiveKeyAccessJustificationsPolicyConfigResponse
        type Scopes
               CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfig{..}
          = go project xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsShowEffectiveKeyAccessJustificationsPolicyConfigResource)
                      Core.mempty

