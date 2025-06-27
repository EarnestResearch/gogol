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
-- Module      : Gogol.CloudKMS.Projects.ShowEffectiveKeyAccessJustificationsEnrollmentConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the KeyAccessJustificationsEnrollmentConfig of the resource closest to the given project in hierarchy.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.showEffectiveKeyAccessJustificationsEnrollmentConfig@.
module Gogol.CloudKMS.Projects.ShowEffectiveKeyAccessJustificationsEnrollmentConfig
    (
    -- * Resource
      CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfigResource

    -- ** Constructing a Request
    , CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig (..)
    , newCloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.showEffectiveKeyAccessJustificationsEnrollmentConfig@ method which the
-- 'CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig' request conforms to.
type CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfigResource
     =
     "v1" Core.:>
       Core.CaptureMode "project"
         "showEffectiveKeyAccessJustificationsEnrollmentConfig"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       ShowEffectiveKeyAccessJustificationsEnrollmentConfigResponse

-- | Returns the KeyAccessJustificationsEnrollmentConfig of the resource closest to the given project in hierarchy.
--
-- /See:/ 'newCloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig' smart constructor.
data CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig = CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The number or id of the project to get the effective KeyAccessJustificationsEnrollmentConfig for.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig' with the minimum fields required to make a request.
newCloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig 
    :: 
                                                                        Core.Text
       -- ^  Required. The number or id of the project to get the effective KeyAccessJustificationsEnrollmentConfig for. See 'project'.
    -> CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
newCloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
  project
  = CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig{xgafv
                                                                           = Core.Nothing,
                                                                         accessToken = Core.Nothing,
                                                                         callback = Core.Nothing,
                                                                         project = project,
                                                                         uploadType = Core.Nothing,
                                                                         uploadProtocol =
                                                                           Core.Nothing}
instance Core.GoogleRequest
           CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
         where
        type Rs
               CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
             = ShowEffectiveKeyAccessJustificationsEnrollmentConfigResponse
        type Scopes
               CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfig{..}
          = go project xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsShowEffectiveKeyAccessJustificationsEnrollmentConfigResource)
                      Core.mempty

