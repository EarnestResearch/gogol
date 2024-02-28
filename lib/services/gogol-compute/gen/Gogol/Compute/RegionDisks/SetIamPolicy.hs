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
-- Module      : Gogol.Compute.RegionDisks.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionDisks.setIamPolicy@.
module Gogol.Compute.RegionDisks.SetIamPolicy
    (
    -- * Resource
      ComputeRegionDisksSetIamPolicyResource

    -- ** Constructing a Request
    , ComputeRegionDisksSetIamPolicy (..)
    , newComputeRegionDisksSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionDisks.setIamPolicy@ method which the
-- 'ComputeRegionDisksSetIamPolicy' request conforms to.
type ComputeRegionDisksSetIamPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "disks" Core.:>
                   Core.Capture "resource" Core.Text Core.:>
                     "setIamPolicy" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     RegionSetPolicyRequest
                                     Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ 'newComputeRegionDisksSetIamPolicy' smart constructor.
data ComputeRegionDisksSetIamPolicy = ComputeRegionDisksSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RegionSetPolicyRequest
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

-- | Creates a value of 'ComputeRegionDisksSetIamPolicy' with the minimum fields required to make a request.
newComputeRegionDisksSetIamPolicy 
    ::  RegionSetPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the region for this request. See 'region'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeRegionDisksSetIamPolicy
newComputeRegionDisksSetIamPolicy payload project region resource =
  ComputeRegionDisksSetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , region = region
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionDisksSetIamPolicy
         where
        type Rs ComputeRegionDisksSetIamPolicy = Policy
        type Scopes ComputeRegionDisksSetIamPolicy =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeRegionDisksSetIamPolicy{..}
          = go project region resource xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionDisksSetIamPolicyResource)
                      Core.mempty

