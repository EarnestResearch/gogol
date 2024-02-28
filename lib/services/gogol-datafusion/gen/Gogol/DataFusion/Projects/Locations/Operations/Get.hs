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
-- Module      : Gogol.DataFusion.Projects.Locations.Operations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.operations.get@.
module Gogol.DataFusion.Projects.Locations.Operations.Get
    (
    -- * Resource
      DataFusionProjectsLocationsOperationsGetResource

    -- ** Constructing a Request
    , DataFusionProjectsLocationsOperationsGet (..)
    , newDataFusionProjectsLocationsOperationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DataFusion.Types

-- | A resource alias for @datafusion.projects.locations.operations.get@ method which the
-- 'DataFusionProjectsLocationsOperationsGet' request conforms to.
type DataFusionProjectsLocationsOperationsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ 'newDataFusionProjectsLocationsOperationsGet' smart constructor.
data DataFusionProjectsLocationsOperationsGet = DataFusionProjectsLocationsOperationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation resource.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsOperationsGet' with the minimum fields required to make a request.
newDataFusionProjectsLocationsOperationsGet 
    ::  Core.Text
       -- ^  The name of the operation resource. See 'name'.
    -> DataFusionProjectsLocationsOperationsGet
newDataFusionProjectsLocationsOperationsGet name =
  DataFusionProjectsLocationsOperationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataFusionProjectsLocationsOperationsGet
         where
        type Rs DataFusionProjectsLocationsOperationsGet =
             Operation
        type Scopes DataFusionProjectsLocationsOperationsGet
             = '[CloudPlatform'FullControl]
        requestClient
          DataFusionProjectsLocationsOperationsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataFusionService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataFusionProjectsLocationsOperationsGetResource)
                      Core.mempty
