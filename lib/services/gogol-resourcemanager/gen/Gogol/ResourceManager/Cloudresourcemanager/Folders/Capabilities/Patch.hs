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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Capabilities.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Capability.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.capabilities.patch@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Capabilities.Patch
    (
    -- * Resource
      CloudresourcemanagerFoldersCapabilitiesPatchResource

    -- ** Constructing a Request
    , CloudresourcemanagerFoldersCapabilitiesPatch (..)
    , newCloudresourcemanagerFoldersCapabilitiesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.capabilities.patch@ method which the
-- 'CloudresourcemanagerFoldersCapabilitiesPatch' request conforms to.
type CloudresourcemanagerFoldersCapabilitiesPatchResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Capability Core.:>
                         Core.Patch '[Core.JSON] Operation

-- | Updates the Capability.
--
-- /See:/ 'newCloudresourcemanagerFoldersCapabilitiesPatch' smart constructor.
data CloudresourcemanagerFoldersCapabilitiesPatch = CloudresourcemanagerFoldersCapabilitiesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable. Identifier. The resource name of the capability. Must be in the following form: * @folders\/{folder_id}\/capabilities\/{capability_name}@ For example, @folders\/123\/capabilities\/app-management@ Following are the allowed {capability_name} values: * @app-management@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Capability
      -- | Optional. The list of fields to update. Only [Capability.value] can be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersCapabilitiesPatch' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersCapabilitiesPatch 
    :: 
                                                Core.Text
       -- ^  Immutable. Identifier. The resource name of the capability. Must be in the following form: * @folders\/{folder_id}\/capabilities\/{capability_name}@ For example, @folders\/123\/capabilities\/app-management@ Following are the allowed {capability_name} values: * @app-management@ See 'name'.
    -> Capability
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudresourcemanagerFoldersCapabilitiesPatch
newCloudresourcemanagerFoldersCapabilitiesPatch name payload
  = CloudresourcemanagerFoldersCapabilitiesPatch{xgafv =
                                                   Core.Nothing,
                                                 accessToken = Core.Nothing,
                                                 callback = Core.Nothing, name = name,
                                                 payload = payload, updateMask = Core.Nothing,
                                                 uploadType = Core.Nothing,
                                                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudresourcemanagerFoldersCapabilitiesPatch
         where
        type Rs CloudresourcemanagerFoldersCapabilitiesPatch = Operation
        type Scopes CloudresourcemanagerFoldersCapabilitiesPatch =
             '[CloudPlatform'FullControl]
        requestClient CloudresourcemanagerFoldersCapabilitiesPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudresourcemanagerFoldersCapabilitiesPatchResource)
                      Core.mempty

