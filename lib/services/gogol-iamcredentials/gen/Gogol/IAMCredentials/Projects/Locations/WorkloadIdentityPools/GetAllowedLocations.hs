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
-- Module      : Gogol.IAMCredentials.Projects.Locations.WorkloadIdentityPools.GetAllowedLocations
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the trust boundary info for a given workload identity pool.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.locations.workloadIdentityPools.getAllowedLocations@.
module Gogol.IAMCredentials.Projects.Locations.WorkloadIdentityPools.GetAllowedLocations
    (
    -- * Resource
      IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocationsResource

    -- ** Constructing a Request
    , IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations (..)
    , newIAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAMCredentials.Types

-- | A resource alias for @iamcredentials.projects.locations.workloadIdentityPools.getAllowedLocations@ method which the
-- 'IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations' request conforms to.
type IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocationsResource
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
                       Core.Get '[Core.JSON] WorkloadIdentityPoolAllowedLocations

-- | Returns the trust boundary info for a given workload identity pool.
--
-- /See:/ 'newIAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations' smart constructor.
data IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations = IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of workload identity pool.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations' with the minimum fields required to make a request.
newIAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations 
    :: 
                                                                           Core.Text
       -- ^  Required. Resource name of workload identity pool. See 'name'.
    -> IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
newIAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
  name
  = IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations{xgafv
                                                                              = Core.Nothing,
                                                                            accessToken =
                                                                              Core.Nothing,
                                                                            callback = Core.Nothing,
                                                                            name = name,
                                                                            uploadType =
                                                                              Core.Nothing,
                                                                            uploadProtocol =
                                                                              Core.Nothing}
instance Core.GoogleRequest
           IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
         where
        type Rs
               IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
             = WorkloadIdentityPoolAllowedLocations
        type Scopes
               IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations
             = '[]
        requestClient
          IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocations{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              iAMCredentialsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMCredentialsProjectsLocationsWorkloadIdentityPoolsGetAllowedLocationsResource)
                      Core.mempty

