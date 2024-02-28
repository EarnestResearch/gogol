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
-- Module      : Gogol.ServiceNetworking.Services.DnsRecordSets.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to update DNS record sets from private DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.update@.
module Gogol.ServiceNetworking.Services.DnsRecordSets.Update
    (
    -- * Resource
      ServiceNetworkingServicesDnsRecordSetsUpdateResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesDnsRecordSetsUpdate (..)
    , newServiceNetworkingServicesDnsRecordSetsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.update@ method which the
-- 'ServiceNetworkingServicesDnsRecordSetsUpdate' request conforms to.
type ServiceNetworkingServicesDnsRecordSetsUpdateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dnsRecordSets:update" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] UpdateDnsRecordSetRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to update DNS record sets from private DNS zones in the shared producer host project.
--
-- /See:/ 'newServiceNetworkingServicesDnsRecordSetsUpdate' smart constructor.
data ServiceNetworkingServicesDnsRecordSetsUpdate = ServiceNetworkingServicesDnsRecordSetsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: UpdateDnsRecordSetRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsRecordSetsUpdate' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsRecordSetsUpdate 
    ::  Core.Text
       -- ^  Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
    -> UpdateDnsRecordSetRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceNetworkingServicesDnsRecordSetsUpdate
newServiceNetworkingServicesDnsRecordSetsUpdate parent payload =
  ServiceNetworkingServicesDnsRecordSetsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesDnsRecordSetsUpdate
         where
        type Rs ServiceNetworkingServicesDnsRecordSetsUpdate
             = Operation
        type Scopes
               ServiceNetworkingServicesDnsRecordSetsUpdate
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesDnsRecordSetsUpdate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesDnsRecordSetsUpdateResource)
                      Core.mempty
