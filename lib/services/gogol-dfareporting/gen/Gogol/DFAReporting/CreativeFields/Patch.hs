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
-- Module      : Gogol.DFAReporting.CreativeFields.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.patch@.
module Gogol.DFAReporting.CreativeFields.Patch
    (
    -- * Resource
      DFAReportingCreativeFieldsPatchResource

    -- ** Constructing a Request
    , newDFAReportingCreativeFieldsPatch
    , DFAReportingCreativeFieldsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.creativeFields.patch@ method which the
-- 'DFAReportingCreativeFieldsPatch' request conforms to.
type DFAReportingCreativeFieldsPatchResource =
     "dfareporting" Core.:>
       "v3.5" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "creativeFields" Core.:>
               Core.QueryParam "id" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] CreativeField Core.:>
                               Core.Patch '[Core.JSON] CreativeField

-- | Updates an existing creative field. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingCreativeFieldsPatch' smart constructor.
data DFAReportingCreativeFieldsPatch = DFAReportingCreativeFieldsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | CreativeField ID.
    , id :: Core.Int64
      -- | Multipart request metadata.
    , payload :: CreativeField
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeFieldsPatch' with the minimum fields required to make a request.
newDFAReportingCreativeFieldsPatch 
    ::  Core.Int64
       -- ^  CreativeField ID. See 'id'.
    -> CreativeField
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingCreativeFieldsPatch
newDFAReportingCreativeFieldsPatch id payload profileId =
  DFAReportingCreativeFieldsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , payload = payload
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingCreativeFieldsPatch
         where
        type Rs DFAReportingCreativeFieldsPatch =
             CreativeField
        type Scopes DFAReportingCreativeFieldsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DFAReportingCreativeFieldsPatch{..}
          = go profileId (Core.Just id) xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingCreativeFieldsPatchResource)
                      Core.mempty

