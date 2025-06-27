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
-- Module      : Gogol.CivicInfo.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CivicInfo.Types
    (
    -- * Configuration
      civicInfoService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CivicinfoApiprotosV2DivisionByAddressResponse
    , CivicinfoApiprotosV2DivisionByAddressResponse (..)
    , newCivicinfoApiprotosV2DivisionByAddressResponse

    -- ** CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
    , CivicinfoApiprotosV2DivisionByAddressResponse_Divisions (..)
    , newCivicinfoApiprotosV2DivisionByAddressResponse_Divisions

    -- ** CivicinfoApiprotosV2DivisionSearchResponse
    , CivicinfoApiprotosV2DivisionSearchResponse (..)
    , newCivicinfoApiprotosV2DivisionSearchResponse

    -- ** CivicinfoApiprotosV2DivisionSearchResult
    , CivicinfoApiprotosV2DivisionSearchResult (..)
    , newCivicinfoApiprotosV2DivisionSearchResult

    -- ** CivicinfoApiprotosV2ElectionsQueryResponse
    , CivicinfoApiprotosV2ElectionsQueryResponse (..)
    , newCivicinfoApiprotosV2ElectionsQueryResponse

    -- ** CivicinfoApiprotosV2VoterInfoResponse
    , CivicinfoApiprotosV2VoterInfoResponse (..)
    , newCivicinfoApiprotosV2VoterInfoResponse

    -- ** CivicinfoSchemaV2AdministrationRegion
    , CivicinfoSchemaV2AdministrationRegion (..)
    , newCivicinfoSchemaV2AdministrationRegion

    -- ** CivicinfoSchemaV2AdministrativeBody
    , CivicinfoSchemaV2AdministrativeBody (..)
    , newCivicinfoSchemaV2AdministrativeBody

    -- ** CivicinfoSchemaV2Candidate
    , CivicinfoSchemaV2Candidate (..)
    , newCivicinfoSchemaV2Candidate

    -- ** CivicinfoSchemaV2Channel
    , CivicinfoSchemaV2Channel (..)
    , newCivicinfoSchemaV2Channel

    -- ** CivicinfoSchemaV2Contest
    , CivicinfoSchemaV2Contest (..)
    , newCivicinfoSchemaV2Contest

    -- ** CivicinfoSchemaV2Contest_LevelItem
    , CivicinfoSchemaV2Contest_LevelItem (..)

    -- ** CivicinfoSchemaV2Contest_RolesItem
    , CivicinfoSchemaV2Contest_RolesItem (..)

    -- ** CivicinfoSchemaV2Election
    , CivicinfoSchemaV2Election (..)
    , newCivicinfoSchemaV2Election

    -- ** CivicinfoSchemaV2Election_ShapeLookupBehavior
    , CivicinfoSchemaV2Election_ShapeLookupBehavior (..)

    -- ** CivicinfoSchemaV2ElectionOfficial
    , CivicinfoSchemaV2ElectionOfficial (..)
    , newCivicinfoSchemaV2ElectionOfficial

    -- ** CivicinfoSchemaV2ElectoralDistrict
    , CivicinfoSchemaV2ElectoralDistrict (..)
    , newCivicinfoSchemaV2ElectoralDistrict

    -- ** CivicinfoSchemaV2ElectoralDistrict_Scope
    , CivicinfoSchemaV2ElectoralDistrict_Scope (..)

    -- ** CivicinfoSchemaV2GeographicDivision
    , CivicinfoSchemaV2GeographicDivision (..)
    , newCivicinfoSchemaV2GeographicDivision

    -- ** CivicinfoSchemaV2PollingLocation
    , CivicinfoSchemaV2PollingLocation (..)
    , newCivicinfoSchemaV2PollingLocation

    -- ** CivicinfoSchemaV2Precinct
    , CivicinfoSchemaV2Precinct (..)
    , newCivicinfoSchemaV2Precinct

    -- ** CivicinfoSchemaV2SimpleAddressType
    , CivicinfoSchemaV2SimpleAddressType (..)
    , newCivicinfoSchemaV2SimpleAddressType

    -- ** CivicinfoSchemaV2Source
    , CivicinfoSchemaV2Source (..)
    , newCivicinfoSchemaV2Source
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CivicInfo.Internal.Product
import Gogol.CivicInfo.Internal.Sum

-- | Default request referring to version @v2@ of the Google Civic Information API. This contains the host and root path used as a starting point for constructing service requests.
civicInfoService :: Core.ServiceConfig
civicInfoService
  = Core.defaultService (Core.ServiceId "civicinfo:v2")
      "civicinfo.googleapis.com"
