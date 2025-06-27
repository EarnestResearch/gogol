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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Locations.EffectiveTagBindingCollections.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns effective tag bindings on a GCP resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.locations.effectiveTagBindingCollections.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Locations.EffectiveTagBindingCollections.Get
    (
    -- * Resource
      CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGetResource

    -- ** Constructing a Request
    , CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet (..)
    , newCloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.locations.effectiveTagBindingCollections.get@ method which the
-- 'CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet' request conforms to.
type CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] EffectiveTagBindingCollection

-- | Returns effective tag bindings on a GCP resource.
--
-- /See:/ 'newCloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet' smart constructor.
data CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet = CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The full name of the EffectiveTagBindingCollection in format: @locations\/{location}\/effectiveTagBindingCollections\/{encoded-full-resource-name}@ where the encoded-full-resource-name is the UTF-8 encoded name of the resource the TagBindings are bound to. E.g. \"locations\/global\/effectiveTagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet' with the minimum fields required to make a request.
newCloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet 
    :: 
                                                                  Core.Text
       -- ^  Required. The full name of the EffectiveTagBindingCollection in format: @locations\/{location}\/effectiveTagBindingCollections\/{encoded-full-resource-name}@ where the encoded-full-resource-name is the UTF-8 encoded name of the resource the TagBindings are bound to. E.g. \"locations\/global\/effectiveTagBindingCollections\/%2f%2fcloudresourcemanager.googleapis.com%2fprojects%2f123\" See 'name'.
    -> CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
newCloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
  name
  = CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet{xgafv
                                                                     = Core.Nothing,
                                                                   accessToken = Core.Nothing,
                                                                   callback = Core.Nothing,
                                                                   name = name,
                                                                   uploadType = Core.Nothing,
                                                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
         where
        type Rs
               CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
             = EffectiveTagBindingCollection
        type Scopes
               CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet
             = '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient
          CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerLocationsEffectiveTagBindingCollectionsGetResource)
                      Core.mempty

