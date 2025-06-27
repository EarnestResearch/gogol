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
-- Module      : Gogol.IAMCredentials.Locations.WorkforcePools.GetAllowedLocations
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the trust boundary info for a given workforce pool.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.locations.workforcePools.getAllowedLocations@.
module Gogol.IAMCredentials.Locations.WorkforcePools.GetAllowedLocations
    (
    -- * Resource
      IAMCredentialsLocationsWorkforcePoolsGetAllowedLocationsResource

    -- ** Constructing a Request
    , IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations (..)
    , newIAMCredentialsLocationsWorkforcePoolsGetAllowedLocations
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAMCredentials.Types

-- | A resource alias for @iamcredentials.locations.workforcePools.getAllowedLocations@ method which the
-- 'IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations' request conforms to.
type IAMCredentialsLocationsWorkforcePoolsGetAllowedLocationsResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "allowedLocations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] WorkforcePoolAllowedLocations

-- | Returns the trust boundary info for a given workforce pool.
--
-- /See:/ 'newIAMCredentialsLocationsWorkforcePoolsGetAllowedLocations' smart constructor.
data IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations = IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of workforce pool.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations' with the minimum fields required to make a request.
newIAMCredentialsLocationsWorkforcePoolsGetAllowedLocations 
    :: 
                                                            Core.Text
       -- ^  Required. Resource name of workforce pool. See 'name'.
    -> IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations
newIAMCredentialsLocationsWorkforcePoolsGetAllowedLocations name
  = IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations{xgafv =
                                                               Core.Nothing,
                                                             accessToken = Core.Nothing,
                                                             callback = Core.Nothing, name = name,
                                                             uploadType = Core.Nothing,
                                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations
         where
        type Rs IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations =
             WorkforcePoolAllowedLocations
        type Scopes
               IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations
             = '[]
        requestClient
          IAMCredentialsLocationsWorkforcePoolsGetAllowedLocations{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              iAMCredentialsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMCredentialsLocationsWorkforcePoolsGetAllowedLocationsResource)
                      Core.mempty

