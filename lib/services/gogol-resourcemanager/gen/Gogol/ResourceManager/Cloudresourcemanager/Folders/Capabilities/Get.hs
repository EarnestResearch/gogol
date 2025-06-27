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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Capabilities.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Capability identified by the supplied resource name.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.capabilities.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Capabilities.Get
    (
    -- * Resource
      CloudresourcemanagerFoldersCapabilitiesGetResource

    -- ** Constructing a Request
    , CloudresourcemanagerFoldersCapabilitiesGet (..)
    , newCloudresourcemanagerFoldersCapabilitiesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.capabilities.get@ method which the
-- 'CloudresourcemanagerFoldersCapabilitiesGet' request conforms to.
type CloudresourcemanagerFoldersCapabilitiesGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Capability

-- | Retrieves the Capability identified by the supplied resource name.
--
-- /See:/ 'newCloudresourcemanagerFoldersCapabilitiesGet' smart constructor.
data CloudresourcemanagerFoldersCapabilitiesGet = CloudresourcemanagerFoldersCapabilitiesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the capability to get. For example, @folders\/123\/capabilities\/app-management@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersCapabilitiesGet' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersCapabilitiesGet 
    :: 
                                              Core.Text
       -- ^  Required. The name of the capability to get. For example, @folders\/123\/capabilities\/app-management@ See 'name'.
    -> CloudresourcemanagerFoldersCapabilitiesGet
newCloudresourcemanagerFoldersCapabilitiesGet name
  = CloudresourcemanagerFoldersCapabilitiesGet{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               name = name, uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudresourcemanagerFoldersCapabilitiesGet
         where
        type Rs CloudresourcemanagerFoldersCapabilitiesGet = Capability
        type Scopes CloudresourcemanagerFoldersCapabilitiesGet =
             '[CloudPlatform'FullControl]
        requestClient CloudresourcemanagerFoldersCapabilitiesGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudresourcemanagerFoldersCapabilitiesGetResource)
                      Core.mempty

