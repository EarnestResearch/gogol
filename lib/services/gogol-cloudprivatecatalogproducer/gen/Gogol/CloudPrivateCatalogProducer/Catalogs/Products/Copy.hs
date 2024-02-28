{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a Product under another Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.copy@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Copy
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsProductsCopyResource

    -- ** Constructing a Request
    , CloudPrivateCatalogProducerCatalogsProductsCopy (..)
    , newCloudPrivateCatalogProducerCatalogsProductsCopy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.copy@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsCopy' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsCopyResource
     =
     "v1beta1" Core.:>
       Core.CaptureMode "name" "copy" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
                       Core.:>
                       Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Copies a Product under another Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsCopy' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsCopy = CloudPrivateCatalogProducerCatalogsProductsCopy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the current product that is copied from.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsCopy' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsCopy 
    ::  Core.Text
       -- ^  The resource name of the current product that is copied from. See 'name'.
    -> GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudPrivateCatalogProducerCatalogsProductsCopy
newCloudPrivateCatalogProducerCatalogsProductsCopy name payload =
  CloudPrivateCatalogProducerCatalogsProductsCopy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsProductsCopy
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsProductsCopy
             = GoogleLongrunningOperation
        type Scopes
               CloudPrivateCatalogProducerCatalogsProductsCopy
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogProducerCatalogsProductsCopy{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsProductsCopyResource)
                      Core.mempty
