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
-- Module      : Gogol.CloudKMS.Projects.GetKajPolicyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the KeyAccessJustificationsPolicyConfig for a given organization\/folder\/projects.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.getKajPolicyConfig@.
module Gogol.CloudKMS.Projects.GetKajPolicyConfig
    (
    -- * Resource
      CloudKMSProjectsGetKajPolicyConfigResource

    -- ** Constructing a Request
    , CloudKMSProjectsGetKajPolicyConfig (..)
    , newCloudKMSProjectsGetKajPolicyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.getKajPolicyConfig@ method which the
-- 'CloudKMSProjectsGetKajPolicyConfig' request conforms to.
type CloudKMSProjectsGetKajPolicyConfigResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] KeyAccessJustificationsPolicyConfig

-- | Gets the KeyAccessJustificationsPolicyConfig for a given organization\/folder\/projects.
--
-- /See:/ 'newCloudKMSProjectsGetKajPolicyConfig' smart constructor.
data CloudKMSProjectsGetKajPolicyConfig = CloudKMSProjectsGetKajPolicyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the KeyAccessJustificationsPolicyConfig to get.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsGetKajPolicyConfig' with the minimum fields required to make a request.
newCloudKMSProjectsGetKajPolicyConfig 
    :: 
                                      Core.Text
       -- ^  Required. The name of the KeyAccessJustificationsPolicyConfig to get. See 'name'.
    -> CloudKMSProjectsGetKajPolicyConfig
newCloudKMSProjectsGetKajPolicyConfig name
  = CloudKMSProjectsGetKajPolicyConfig{xgafv = Core.Nothing,
                                       accessToken = Core.Nothing, callback = Core.Nothing,
                                       name = name, uploadType = Core.Nothing,
                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest CloudKMSProjectsGetKajPolicyConfig
         where
        type Rs CloudKMSProjectsGetKajPolicyConfig =
             KeyAccessJustificationsPolicyConfig
        type Scopes CloudKMSProjectsGetKajPolicyConfig =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient CloudKMSProjectsGetKajPolicyConfig{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudKMSProjectsGetKajPolicyConfigResource)
                      Core.mempty

