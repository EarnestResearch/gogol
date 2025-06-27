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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Locations.TagBindingCollections.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns tag bindings directly attached to a GCP resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.locations.tagBindingCollections.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Locations.TagBindingCollections.Get
    (
    -- * Resource
      CloudresourcemanagerLocationsTagBindingCollectionsGetResource

    -- ** Constructing a Request
    , CloudresourcemanagerLocationsTagBindingCollectionsGet (..)
    , newCloudresourcemanagerLocationsTagBindingCollectionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.locations.tagBindingCollections.get@ method which the
-- 'CloudresourcemanagerLocationsTagBindingCollectionsGet' request conforms to.
type CloudresourcemanagerLocationsTagBindingCollectionsGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] TagBindingCollection

-- | Returns tag bindings directly attached to a GCP resource.
--
-- /See:/ 'newCloudresourcemanagerLocationsTagBindingCollectionsGet' smart constructor.
data CloudresourcemanagerLocationsTagBindingCollectionsGet = CloudresourcemanagerLocationsTagBindingCollectionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The full name of the TagBindingCollection in format: @locations\/{location}\/tagBindingCollections\/{encoded-full-resource-name}@ where the enoded-full-resource-name is the UTF-8 encoded name of the resource the TagBindings are bound to. E.g. \"locations\/global\/tagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLocationsTagBindingCollectionsGet' with the minimum fields required to make a request.
newCloudresourcemanagerLocationsTagBindingCollectionsGet 
    :: 
                                                         Core.Text
       -- ^  Required. The full name of the TagBindingCollection in format: @locations\/{location}\/tagBindingCollections\/{encoded-full-resource-name}@ where the enoded-full-resource-name is the UTF-8 encoded name of the resource the TagBindings are bound to. E.g. \"locations\/global\/tagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\" See 'name'.
    -> CloudresourcemanagerLocationsTagBindingCollectionsGet
newCloudresourcemanagerLocationsTagBindingCollectionsGet name
  = CloudresourcemanagerLocationsTagBindingCollectionsGet{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudresourcemanagerLocationsTagBindingCollectionsGet
         where
        type Rs CloudresourcemanagerLocationsTagBindingCollectionsGet =
             TagBindingCollection
        type Scopes CloudresourcemanagerLocationsTagBindingCollectionsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient
          CloudresourcemanagerLocationsTagBindingCollectionsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerLocationsTagBindingCollectionsGetResource)
                      Core.mempty

