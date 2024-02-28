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
-- Module      : Gogol.DLP.Organizations.Locations.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.delete@.
module Gogol.DLP.Organizations.Locations.StoredInfoTypes.Delete
    (
    -- * Resource
      DLPOrganizationsLocationsStoredInfoTypesDeleteResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsStoredInfoTypesDelete (..)
    , newDLPOrganizationsLocationsStoredInfoTypesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.delete@ method which the
-- 'DLPOrganizationsLocationsStoredInfoTypesDelete' request conforms to.
type DLPOrganizationsLocationsStoredInfoTypesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a stored infoType. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsStoredInfoTypesDelete' smart constructor.
data DLPOrganizationsLocationsStoredInfoTypesDelete = DLPOrganizationsLocationsStoredInfoTypesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization and storedInfoType to be deleted, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsStoredInfoTypesDelete' with the minimum fields required to make a request.
newDLPOrganizationsLocationsStoredInfoTypesDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the organization and storedInfoType to be deleted, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342. See 'name'.
    -> DLPOrganizationsLocationsStoredInfoTypesDelete
newDLPOrganizationsLocationsStoredInfoTypesDelete name =
  DLPOrganizationsLocationsStoredInfoTypesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsStoredInfoTypesDelete
         where
        type Rs
               DLPOrganizationsLocationsStoredInfoTypesDelete
             = GoogleProtobufEmpty
        type Scopes
               DLPOrganizationsLocationsStoredInfoTypesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsStoredInfoTypesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsStoredInfoTypesDeleteResource)
                      Core.mempty
