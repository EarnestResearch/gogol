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
-- Module      : Gogol.DLP.Organizations.Locations.InfoTypes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/infotypes-reference to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.infoTypes.list@.
module Gogol.DLP.Organizations.Locations.InfoTypes.List
    (
    -- * Resource
      DLPOrganizationsLocationsInfoTypesListResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsInfoTypesList (..)
    , newDLPOrganizationsLocationsInfoTypesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.infoTypes.list@ method which the
-- 'DLPOrganizationsLocationsInfoTypesList' request conforms to.
type DLPOrganizationsLocationsInfoTypesListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "infoTypes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "languageCode" Core.Text Core.:>
                     Core.QueryParam "locationId" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] GooglePrivacyDlpV2ListInfoTypesResponse

-- | Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/infotypes-reference to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsInfoTypesList' smart constructor.
data DLPOrganizationsLocationsInfoTypesList = DLPOrganizationsLocationsInfoTypesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT.
    , filter :: (Core.Maybe Core.Text)
      -- | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en-US strings will be returned.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Deprecated. This field has no effect.
    , locationId :: (Core.Maybe Core.Text)
      -- | The parent resource name. The format of this value is as follows: @locations\/{location_id}@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsInfoTypesList' with the minimum fields required to make a request.
newDLPOrganizationsLocationsInfoTypesList 
    :: 
                                          Core.Text
       -- ^  The parent resource name. The format of this value is as follows: @locations\/{location_id}@ See 'parent'.
    -> DLPOrganizationsLocationsInfoTypesList
newDLPOrganizationsLocationsInfoTypesList parent
  = DLPOrganizationsLocationsInfoTypesList{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           filter = Core.Nothing, languageCode = Core.Nothing,
                                           locationId = Core.Nothing, parent = parent,
                                           uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest DLPOrganizationsLocationsInfoTypesList
         where
        type Rs DLPOrganizationsLocationsInfoTypesList =
             GooglePrivacyDlpV2ListInfoTypesResponse
        type Scopes DLPOrganizationsLocationsInfoTypesList =
             '[CloudPlatform'FullControl]
        requestClient DLPOrganizationsLocationsInfoTypesList{..}
          = go parent xgafv accessToken callback filter languageCode
              locationId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DLPOrganizationsLocationsInfoTypesListResource)
                      Core.mempty

