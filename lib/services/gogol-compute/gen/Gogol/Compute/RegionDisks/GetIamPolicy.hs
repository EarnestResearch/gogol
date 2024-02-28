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
-- Module      : Gogol.Compute.RegionDisks.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionDisks.getIamPolicy@.
module Gogol.Compute.RegionDisks.GetIamPolicy
    (
    -- * Resource
      ComputeRegionDisksGetIamPolicyResource

    -- ** Constructing a Request
    , ComputeRegionDisksGetIamPolicy (..)
    , newComputeRegionDisksGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionDisks.getIamPolicy@ method which the
-- 'ComputeRegionDisksGetIamPolicy' request conforms to.
type ComputeRegionDisksGetIamPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "disks" Core.:>
                   Core.Capture "resource" Core.Text Core.:>
                     "getIamPolicy" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "optionsRequestedPolicyVersion"
                               Core.Int32
                               Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ 'newComputeRegionDisksGetIamPolicy' smart constructor.
data ComputeRegionDisksGetIamPolicy = ComputeRegionDisksGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Requested IAM Policy version.
    , optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the region for this request.
    , region :: Core.Text
      -- | Name or id of the resource for this request.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionDisksGetIamPolicy' with the minimum fields required to make a request.
newComputeRegionDisksGetIamPolicy 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the region for this request. See 'region'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeRegionDisksGetIamPolicy
newComputeRegionDisksGetIamPolicy project region resource =
  ComputeRegionDisksGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , optionsRequestedPolicyVersion = Core.Nothing
    , project = project
    , region = region
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionDisksGetIamPolicy
         where
        type Rs ComputeRegionDisksGetIamPolicy = Policy
        type Scopes ComputeRegionDisksGetIamPolicy =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeRegionDisksGetIamPolicy{..}
          = go project region resource xgafv accessToken
              callback
              optionsRequestedPolicyVersion
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionDisksGetIamPolicyResource)
                      Core.mempty

