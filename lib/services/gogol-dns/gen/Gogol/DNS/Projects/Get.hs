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
-- Module      : Gogol.DNS.Projects.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the representation of an existing Project.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.projects.get@.
module Gogol.DNS.Projects.Get
    (
    -- * Resource
      DNSProjectsGetResource

    -- ** Constructing a Request
    , DNSProjectsGet (..)
    , newDNSProjectsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DNS.Types

-- | A resource alias for @dns.projects.get@ method which the
-- 'DNSProjectsGet' request conforms to.
type DNSProjectsGetResource =
     "dns" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "locations" Core.:>
               Core.Capture "location" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "clientOperationId" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] Project

-- | Fetches the representation of an existing Project.
--
-- /See:/ 'newDNSProjectsGet' smart constructor.
data DNSProjectsGet = DNSProjectsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    , clientOperationId :: (Core.Maybe Core.Text)
      -- | 
    , location :: Core.Text
      -- | Identifies the project addressed by this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSProjectsGet' with the minimum fields required to make a request.
newDNSProjectsGet 
    ::  Core.Text
       -- ^  Identifies the project addressed by this request. See 'project'.
    -> DNSProjectsGet
newDNSProjectsGet project =
  DNSProjectsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clientOperationId = Core.Nothing
    , location = "global"
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSProjectsGet where
        type Rs DNSProjectsGet = Project
        type Scopes DNSProjectsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Ndev'Clouddns'Readonly, Ndev'Clouddns'Readwrite]
        requestClient DNSProjectsGet{..}
          = go project location xgafv accessToken callback
              clientOperationId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dNSService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DNSProjectsGetResource)
                      Core.mempty
