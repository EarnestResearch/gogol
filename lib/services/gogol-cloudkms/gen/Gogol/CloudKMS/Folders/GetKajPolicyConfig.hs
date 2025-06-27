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
-- Module      : Gogol.CloudKMS.Folders.GetKajPolicyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the KeyAccessJustificationsPolicyConfig for a given organization\/folder\/projects.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.folders.getKajPolicyConfig@.
module Gogol.CloudKMS.Folders.GetKajPolicyConfig
    (
    -- * Resource
      CloudKMSFoldersGetKajPolicyConfigResource

    -- ** Constructing a Request
    , CloudKMSFoldersGetKajPolicyConfig (..)
    , newCloudKMSFoldersGetKajPolicyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.folders.getKajPolicyConfig@ method which the
-- 'CloudKMSFoldersGetKajPolicyConfig' request conforms to.
type CloudKMSFoldersGetKajPolicyConfigResource =
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
-- /See:/ 'newCloudKMSFoldersGetKajPolicyConfig' smart constructor.
data CloudKMSFoldersGetKajPolicyConfig = CloudKMSFoldersGetKajPolicyConfig
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

-- | Creates a value of 'CloudKMSFoldersGetKajPolicyConfig' with the minimum fields required to make a request.
newCloudKMSFoldersGetKajPolicyConfig 
    :: 
                                     Core.Text
       -- ^  Required. The name of the KeyAccessJustificationsPolicyConfig to get. See 'name'.
    -> CloudKMSFoldersGetKajPolicyConfig
newCloudKMSFoldersGetKajPolicyConfig name
  = CloudKMSFoldersGetKajPolicyConfig{xgafv = Core.Nothing,
                                      accessToken = Core.Nothing, callback = Core.Nothing,
                                      name = name, uploadType = Core.Nothing,
                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest CloudKMSFoldersGetKajPolicyConfig where
        type Rs CloudKMSFoldersGetKajPolicyConfig =
             KeyAccessJustificationsPolicyConfig
        type Scopes CloudKMSFoldersGetKajPolicyConfig =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient CloudKMSFoldersGetKajPolicyConfig{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudKMSFoldersGetKajPolicyConfigResource)
                      Core.mempty

