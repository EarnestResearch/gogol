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
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.getIamPolicy@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.GetIamPolicy
    (
    -- * Resource
      DataprocProjectsRegionsWorkflowTemplatesGetIamPolicyResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy (..)
    , newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.getIamPolicy@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesGetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy = DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being requested. See Resource names (https:\/\/cloud.google.com\/apis\/design\/resource_names) for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy 
    ::  GetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being requested. See Resource names (https:\/\/cloud.google.com\/apis\/design\/resource_names) for the appropriate value for this field. See 'resource'.
    -> DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy payload resource =
  DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
         where
        type Rs
               DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
             = Policy
        type Scopes
               DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsWorkflowTemplatesGetIamPolicyResource)
                      Core.mempty
