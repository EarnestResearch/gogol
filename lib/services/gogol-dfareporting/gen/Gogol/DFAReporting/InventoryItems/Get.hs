{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.InventoryItems.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one inventory item by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.inventoryItems.get@.
module Gogol.DFAReporting.InventoryItems.Get
    (
    -- * Resource
      DFAReportingInventoryItemsGetResource

    -- ** Constructing a Request
    , newDFAReportingInventoryItemsGet
    , DFAReportingInventoryItemsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.inventoryItems.get@ method which the
-- 'DFAReportingInventoryItemsGet' request conforms to.
type DFAReportingInventoryItemsGetResource =
     "dfareporting" Core.:>
       "v3.5" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "projects" Core.:>
               Core.Capture "projectId" Core.Int64 Core.:>
                 "inventoryItems" Core.:>
                   Core.Capture "id" Core.Int64 Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] InventoryItem

-- | Gets one inventory item by ID.
--
-- /See:/ 'newDFAReportingInventoryItemsGet' smart constructor.
data DFAReportingInventoryItemsGet = DFAReportingInventoryItemsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Inventory item ID.
    , id :: Core.Int64
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Project ID for order documents.
    , projectId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingInventoryItemsGet' with the minimum fields required to make a request.
newDFAReportingInventoryItemsGet 
    ::  Core.Int64
       -- ^  Inventory item ID. See 'id'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> Core.Int64
       -- ^  Project ID for order documents. See 'projectId'.
    -> DFAReportingInventoryItemsGet
newDFAReportingInventoryItemsGet id profileId projectId =
  DFAReportingInventoryItemsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , profileId = profileId
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingInventoryItemsGet
         where
        type Rs DFAReportingInventoryItemsGet = InventoryItem
        type Scopes DFAReportingInventoryItemsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DFAReportingInventoryItemsGet{..}
          = go profileId projectId id xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingInventoryItemsGetResource)
                      Core.mempty

