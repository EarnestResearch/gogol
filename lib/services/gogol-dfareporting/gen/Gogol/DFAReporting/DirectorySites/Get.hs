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
-- Module      : Gogol.DFAReporting.DirectorySites.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one directory site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.directorySites.get@.
module Gogol.DFAReporting.DirectorySites.Get
    (
    -- * Resource
      DFAReportingDirectorySitesGetResource

    -- ** Constructing a Request
    , DFAReportingDirectorySitesGet (..)
    , newDFAReportingDirectorySitesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.directorySites.get@ method which the
-- 'DFAReportingDirectorySitesGet' request conforms to.
type DFAReportingDirectorySitesGetResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "directorySites" Core.:>
               Core.Capture "id" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] DirectorySite

-- | Gets one directory site by ID.
--
-- /See:/ 'newDFAReportingDirectorySitesGet' smart constructor.
data DFAReportingDirectorySitesGet = DFAReportingDirectorySitesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Directory site ID.
    , id :: Core.Int64
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDirectorySitesGet' with the minimum fields required to make a request.
newDFAReportingDirectorySitesGet 
    ::  Core.Int64
       -- ^  Directory site ID. See 'id'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingDirectorySitesGet
newDFAReportingDirectorySitesGet id profileId =
  DFAReportingDirectorySitesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingDirectorySitesGet
         where
        type Rs DFAReportingDirectorySitesGet = DirectorySite
        type Scopes DFAReportingDirectorySitesGet =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingDirectorySitesGet{..}
          = go profileId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingDirectorySitesGetResource)
                      Core.mempty
