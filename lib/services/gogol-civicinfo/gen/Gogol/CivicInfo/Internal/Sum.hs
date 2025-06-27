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
-- Module      : Gogol.CivicInfo.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CivicInfo.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CivicinfoSchemaV2Contest_LevelItem
    CivicinfoSchemaV2Contest_LevelItem
      (
        CivicinfoSchemaV2Contest_LevelItem_International,
        CivicinfoSchemaV2Contest_LevelItem_Country,
        CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA1,
        CivicinfoSchemaV2Contest_LevelItem_Regional,
        CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA2,
        CivicinfoSchemaV2Contest_LevelItem_Locality,
        CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY1,
        CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY2,
        CivicinfoSchemaV2Contest_LevelItem_Special,
        ..
      ),

    -- * CivicinfoSchemaV2Contest_RolesItem
    CivicinfoSchemaV2Contest_RolesItem
      (
        CivicinfoSchemaV2Contest_RolesItem_HeadOfState,
        CivicinfoSchemaV2Contest_RolesItem_HeadOfGovernment,
        CivicinfoSchemaV2Contest_RolesItem_DeputyHeadOfGovernment,
        CivicinfoSchemaV2Contest_RolesItem_GovernmentOfficer,
        CivicinfoSchemaV2Contest_RolesItem_ExecutiveCouncil,
        CivicinfoSchemaV2Contest_RolesItem_LegislatorUpperBody,
        CivicinfoSchemaV2Contest_RolesItem_LegislatorLowerBody,
        CivicinfoSchemaV2Contest_RolesItem_HighestCourtJudge,
        CivicinfoSchemaV2Contest_RolesItem_Judge,
        CivicinfoSchemaV2Contest_RolesItem_SchoolBoard,
        CivicinfoSchemaV2Contest_RolesItem_SpecialPurposeOfficer,
        CivicinfoSchemaV2Contest_RolesItem_OtherRole,
        ..
      ),

    -- * CivicinfoSchemaV2Election_ShapeLookupBehavior
    CivicinfoSchemaV2Election_ShapeLookupBehavior
      (
        CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDefault,
        CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDisabled,
        CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupEnabled,
        ..
      ),

    -- * CivicinfoSchemaV2ElectoralDistrict_Scope
    CivicinfoSchemaV2ElectoralDistrict_Scope
      (
        CivicinfoSchemaV2ElectoralDistrict_Scope_Statewide,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Congressional,
        CivicinfoSchemaV2ElectoralDistrict_Scope_StateUpper,
        CivicinfoSchemaV2ElectoralDistrict_Scope_StateLower,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Countywide,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Judicial,
        CivicinfoSchemaV2ElectoralDistrict_Scope_SchoolBoard,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Citywide,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Special,
        CivicinfoSchemaV2ElectoralDistrict_Scope_CountyCouncil,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Township,
        CivicinfoSchemaV2ElectoralDistrict_Scope_Ward,
        CivicinfoSchemaV2ElectoralDistrict_Scope_CityCouncil,
        CivicinfoSchemaV2ElectoralDistrict_Scope_National,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

newtype CivicinfoSchemaV2Contest_LevelItem = CivicinfoSchemaV2Contest_LevelItem { fromCivicinfoSchemaV2Contest_LevelItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )


pattern CivicinfoSchemaV2Contest_LevelItem_International :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_International = CivicinfoSchemaV2Contest_LevelItem "international"


pattern CivicinfoSchemaV2Contest_LevelItem_Country :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_Country = CivicinfoSchemaV2Contest_LevelItem "country"


pattern CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA1 :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA1 = CivicinfoSchemaV2Contest_LevelItem "administrativeArea1"


pattern CivicinfoSchemaV2Contest_LevelItem_Regional :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_Regional = CivicinfoSchemaV2Contest_LevelItem "regional"


pattern CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA2 :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA2 = CivicinfoSchemaV2Contest_LevelItem "administrativeArea2"


pattern CivicinfoSchemaV2Contest_LevelItem_Locality :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_Locality = CivicinfoSchemaV2Contest_LevelItem "locality"


pattern CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY1 :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY1 = CivicinfoSchemaV2Contest_LevelItem "subLocality1"


pattern CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY2 :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY2 = CivicinfoSchemaV2Contest_LevelItem "subLocality2"


pattern CivicinfoSchemaV2Contest_LevelItem_Special :: CivicinfoSchemaV2Contest_LevelItem
pattern CivicinfoSchemaV2Contest_LevelItem_Special = CivicinfoSchemaV2Contest_LevelItem "special"

{-# COMPLETE
  CivicinfoSchemaV2Contest_LevelItem_International,
  CivicinfoSchemaV2Contest_LevelItem_Country,
  CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA1,
  CivicinfoSchemaV2Contest_LevelItem_Regional,
  CivicinfoSchemaV2Contest_LevelItem_ADMINISTRATIVEAREA2,
  CivicinfoSchemaV2Contest_LevelItem_Locality,
  CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY1,
  CivicinfoSchemaV2Contest_LevelItem_SUBLOCALITY2,
  CivicinfoSchemaV2Contest_LevelItem_Special,
  CivicinfoSchemaV2Contest_LevelItem #-}

newtype CivicinfoSchemaV2Contest_RolesItem = CivicinfoSchemaV2Contest_RolesItem { fromCivicinfoSchemaV2Contest_RolesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )


pattern CivicinfoSchemaV2Contest_RolesItem_HeadOfState :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_HeadOfState = CivicinfoSchemaV2Contest_RolesItem "headOfState"


pattern CivicinfoSchemaV2Contest_RolesItem_HeadOfGovernment :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_HeadOfGovernment = CivicinfoSchemaV2Contest_RolesItem "headOfGovernment"


pattern CivicinfoSchemaV2Contest_RolesItem_DeputyHeadOfGovernment :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_DeputyHeadOfGovernment = CivicinfoSchemaV2Contest_RolesItem "deputyHeadOfGovernment"


pattern CivicinfoSchemaV2Contest_RolesItem_GovernmentOfficer :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_GovernmentOfficer = CivicinfoSchemaV2Contest_RolesItem "governmentOfficer"


pattern CivicinfoSchemaV2Contest_RolesItem_ExecutiveCouncil :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_ExecutiveCouncil = CivicinfoSchemaV2Contest_RolesItem "executiveCouncil"


pattern CivicinfoSchemaV2Contest_RolesItem_LegislatorUpperBody :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_LegislatorUpperBody = CivicinfoSchemaV2Contest_RolesItem "legislatorUpperBody"


pattern CivicinfoSchemaV2Contest_RolesItem_LegislatorLowerBody :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_LegislatorLowerBody = CivicinfoSchemaV2Contest_RolesItem "legislatorLowerBody"


pattern CivicinfoSchemaV2Contest_RolesItem_HighestCourtJudge :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_HighestCourtJudge = CivicinfoSchemaV2Contest_RolesItem "highestCourtJudge"


pattern CivicinfoSchemaV2Contest_RolesItem_Judge :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_Judge = CivicinfoSchemaV2Contest_RolesItem "judge"


pattern CivicinfoSchemaV2Contest_RolesItem_SchoolBoard :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_SchoolBoard = CivicinfoSchemaV2Contest_RolesItem "schoolBoard"


pattern CivicinfoSchemaV2Contest_RolesItem_SpecialPurposeOfficer :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_SpecialPurposeOfficer = CivicinfoSchemaV2Contest_RolesItem "specialPurposeOfficer"


pattern CivicinfoSchemaV2Contest_RolesItem_OtherRole :: CivicinfoSchemaV2Contest_RolesItem
pattern CivicinfoSchemaV2Contest_RolesItem_OtherRole = CivicinfoSchemaV2Contest_RolesItem "otherRole"

{-# COMPLETE
  CivicinfoSchemaV2Contest_RolesItem_HeadOfState,
  CivicinfoSchemaV2Contest_RolesItem_HeadOfGovernment,
  CivicinfoSchemaV2Contest_RolesItem_DeputyHeadOfGovernment,
  CivicinfoSchemaV2Contest_RolesItem_GovernmentOfficer,
  CivicinfoSchemaV2Contest_RolesItem_ExecutiveCouncil,
  CivicinfoSchemaV2Contest_RolesItem_LegislatorUpperBody,
  CivicinfoSchemaV2Contest_RolesItem_LegislatorLowerBody,
  CivicinfoSchemaV2Contest_RolesItem_HighestCourtJudge,
  CivicinfoSchemaV2Contest_RolesItem_Judge,
  CivicinfoSchemaV2Contest_RolesItem_SchoolBoard,
  CivicinfoSchemaV2Contest_RolesItem_SpecialPurposeOfficer,
  CivicinfoSchemaV2Contest_RolesItem_OtherRole,
  CivicinfoSchemaV2Contest_RolesItem #-}

newtype CivicinfoSchemaV2Election_ShapeLookupBehavior = CivicinfoSchemaV2Election_ShapeLookupBehavior { fromCivicinfoSchemaV2Election_ShapeLookupBehavior :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )


pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDefault :: CivicinfoSchemaV2Election_ShapeLookupBehavior
pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDefault = CivicinfoSchemaV2Election_ShapeLookupBehavior "shapeLookupDefault"


pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDisabled :: CivicinfoSchemaV2Election_ShapeLookupBehavior
pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDisabled = CivicinfoSchemaV2Election_ShapeLookupBehavior "shapeLookupDisabled"


pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupEnabled :: CivicinfoSchemaV2Election_ShapeLookupBehavior
pattern CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupEnabled = CivicinfoSchemaV2Election_ShapeLookupBehavior "shapeLookupEnabled"

{-# COMPLETE
  CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDefault,
  CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupDisabled,
  CivicinfoSchemaV2Election_ShapeLookupBehavior_ShapeLookupEnabled,
  CivicinfoSchemaV2Election_ShapeLookupBehavior #-}

-- | The geographic scope of this district. If unspecified the district\'s geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
newtype CivicinfoSchemaV2ElectoralDistrict_Scope = CivicinfoSchemaV2ElectoralDistrict_Scope { fromCivicinfoSchemaV2ElectoralDistrict_Scope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Statewide :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Statewide = CivicinfoSchemaV2ElectoralDistrict_Scope "statewide"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Congressional :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Congressional = CivicinfoSchemaV2ElectoralDistrict_Scope "congressional"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_StateUpper :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_StateUpper = CivicinfoSchemaV2ElectoralDistrict_Scope "stateUpper"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_StateLower :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_StateLower = CivicinfoSchemaV2ElectoralDistrict_Scope "stateLower"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Countywide :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Countywide = CivicinfoSchemaV2ElectoralDistrict_Scope "countywide"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Judicial :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Judicial = CivicinfoSchemaV2ElectoralDistrict_Scope "judicial"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_SchoolBoard :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_SchoolBoard = CivicinfoSchemaV2ElectoralDistrict_Scope "schoolBoard"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Citywide :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Citywide = CivicinfoSchemaV2ElectoralDistrict_Scope "citywide"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Special :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Special = CivicinfoSchemaV2ElectoralDistrict_Scope "special"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_CountyCouncil :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_CountyCouncil = CivicinfoSchemaV2ElectoralDistrict_Scope "countyCouncil"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Township :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Township = CivicinfoSchemaV2ElectoralDistrict_Scope "township"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Ward :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_Ward = CivicinfoSchemaV2ElectoralDistrict_Scope "ward"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_CityCouncil :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_CityCouncil = CivicinfoSchemaV2ElectoralDistrict_Scope "cityCouncil"


pattern CivicinfoSchemaV2ElectoralDistrict_Scope_National :: CivicinfoSchemaV2ElectoralDistrict_Scope
pattern CivicinfoSchemaV2ElectoralDistrict_Scope_National = CivicinfoSchemaV2ElectoralDistrict_Scope "national"

{-# COMPLETE
  CivicinfoSchemaV2ElectoralDistrict_Scope_Statewide,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Congressional,
  CivicinfoSchemaV2ElectoralDistrict_Scope_StateUpper,
  CivicinfoSchemaV2ElectoralDistrict_Scope_StateLower,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Countywide,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Judicial,
  CivicinfoSchemaV2ElectoralDistrict_Scope_SchoolBoard,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Citywide,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Special,
  CivicinfoSchemaV2ElectoralDistrict_Scope_CountyCouncil,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Township,
  CivicinfoSchemaV2ElectoralDistrict_Scope_Ward,
  CivicinfoSchemaV2ElectoralDistrict_Scope_CityCouncil,
  CivicinfoSchemaV2ElectoralDistrict_Scope_National,
  CivicinfoSchemaV2ElectoralDistrict_Scope #-}
