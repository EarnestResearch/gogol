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
-- Module      : Gogol.Logging.Projects.Sinks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.sinks.get@.
module Gogol.Logging.Projects.Sinks.Get
    (
    -- * Resource
      LoggingProjectsSinksGetResource

    -- ** Constructing a Request
    , LoggingProjectsSinksGet (..)
    , newLoggingProjectsSinksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.projects.sinks.get@ method which the
-- 'LoggingProjectsSinksGet' request conforms to.
type LoggingProjectsSinksGetResource =
     "v2" Core.:>
       Core.Capture "sinkName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'newLoggingProjectsSinksGet' smart constructor.
data LoggingProjectsSinksGet = LoggingProjectsSinksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the sink: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\"
    , sinkName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsSinksGet' with the minimum fields required to make a request.
newLoggingProjectsSinksGet 
    ::  Core.Text
       -- ^  Required. The resource name of the sink: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\" See 'sinkName'.
    -> LoggingProjectsSinksGet
newLoggingProjectsSinksGet sinkName =
  LoggingProjectsSinksGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , sinkName = sinkName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsSinksGet
         where
        type Rs LoggingProjectsSinksGet = LogSink
        type Scopes LoggingProjectsSinksGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Logging'Admin, Logging'Read]
        requestClient LoggingProjectsSinksGet{..}
          = go sinkName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingProjectsSinksGetResource)
                      Core.mempty
