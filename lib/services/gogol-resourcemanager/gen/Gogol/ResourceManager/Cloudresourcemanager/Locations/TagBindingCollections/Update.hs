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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Locations.TagBindingCollections.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates tag bindings directly attached to a GCP resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.locations.tagBindingCollections.update@.
module Gogol.ResourceManager.Cloudresourcemanager.Locations.TagBindingCollections.Update
    (
    -- * Resource
      CloudresourcemanagerLocationsTagBindingCollectionsUpdateResource

    -- ** Constructing a Request
    , CloudresourcemanagerLocationsTagBindingCollectionsUpdate (..)
    , newCloudresourcemanagerLocationsTagBindingCollectionsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.locations.tagBindingCollections.update@ method which the
-- 'CloudresourcemanagerLocationsTagBindingCollectionsUpdate' request conforms to.
type CloudresourcemanagerLocationsTagBindingCollectionsUpdateResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TagBindingCollection Core.:>
                       Core.Put '[Core.JSON] Operation

-- | Updates tag bindings directly attached to a GCP resource.
--
-- /See:/ 'newCloudresourcemanagerLocationsTagBindingCollectionsUpdate' smart constructor.
data CloudresourcemanagerLocationsTagBindingCollectionsUpdate = CloudresourcemanagerLocationsTagBindingCollectionsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. The name of the TagBindingCollection, following the convention: @locations\/{location}\/tagBindingCollections\/{encoded-full-resource-name}@ where the encoded-full-resource-name is the UTF-8 encoded name of the GCP resource the TagBindings are bound to. \"locations\/global\/tagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: TagBindingCollection
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLocationsTagBindingCollectionsUpdate' with the minimum fields required to make a request.
newCloudresourcemanagerLocationsTagBindingCollectionsUpdate 
    :: 
                                                            Core.Text
       -- ^  Identifier. The name of the TagBindingCollection, following the convention: @locations\/{location}\/tagBindingCollections\/{encoded-full-resource-name}@ where the encoded-full-resource-name is the UTF-8 encoded name of the GCP resource the TagBindings are bound to. \"locations\/global\/tagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\" See 'name'.
    -> TagBindingCollection
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudresourcemanagerLocationsTagBindingCollectionsUpdate
newCloudresourcemanagerLocationsTagBindingCollectionsUpdate name
  payload
  = CloudresourcemanagerLocationsTagBindingCollectionsUpdate{xgafv =
                                                               Core.Nothing,
                                                             accessToken = Core.Nothing,
                                                             callback = Core.Nothing, name = name,
                                                             payload = payload,
                                                             uploadType = Core.Nothing,
                                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudresourcemanagerLocationsTagBindingCollectionsUpdate
         where
        type Rs CloudresourcemanagerLocationsTagBindingCollectionsUpdate =
             Operation
        type Scopes
               CloudresourcemanagerLocationsTagBindingCollectionsUpdate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudresourcemanagerLocationsTagBindingCollectionsUpdate{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerLocationsTagBindingCollectionsUpdateResource)
                      Core.mempty

