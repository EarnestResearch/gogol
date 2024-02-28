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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcevalidate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates an input FHIR resource\'s conformance to its profiles and the profiles configured on the FHIR store. Implements the FHIR extended operation $validate (<http://hl7.org/implement/standards/fhir/DSTU2/resource-operations.html#validate DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resource-operations.html#validate STU3>, or <http://hl7.org/implement/standards/fhir/R4/resource-operation-validate.html R4>). The request body must contain a JSON-encoded FHIR resource, and the request headers must contain @Content-Type: application\/fhir+json@. The @Parameters@ input syntax is not supported. The @profile@ query parameter can be used to request that the resource only be validated against a specific profile. If a profile with the given URL cannot be found in the FHIR store then an error is returned. Errors generated by validation contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP
-- error might be returned instead.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Resourcevalidate@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcevalidate
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidateResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Resourcevalidate@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "fhir" Core.:>
           Core.Capture "type" Core.Text Core.:>
             "$validate" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "profile" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] HttpBody Core.:>
                               Core.Post '[Core.JSON] HttpBody

-- | Validates an input FHIR resource\'s conformance to its profiles and the profiles configured on the FHIR store. Implements the FHIR extended operation $validate (<http://hl7.org/implement/standards/fhir/DSTU2/resource-operations.html#validate DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resource-operations.html#validate STU3>, or <http://hl7.org/implement/standards/fhir/R4/resource-operation-validate.html R4>). The request body must contain a JSON-encoded FHIR resource, and the request headers must contain @Content-Type: application\/fhir+json@. The @Parameters@ input syntax is not supported. The @profile@ query parameter can be used to request that the resource only be validated against a specific profile. If a profile with the given URL cannot be found in the FHIR store then an error is returned. Errors generated by validation contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP
-- error might be returned instead.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate = HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the FHIR store that holds the profiles being used for validation.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: HttpBody
      -- | The canonical URL of a profile that this resource should be validated against. For example, to validate a Patient resource against the US Core Patient profile this parameter would be @http:\/\/hl7.org\/fhir\/us\/core\/StructureDefinition\/us-core-patient@. A StructureDefinition with this canonical URL must exist in the FHIR store.
    , profile :: (Core.Maybe Core.Text)
      -- | The FHIR resource type of the resource being validated. For a complete list, see the FHIR Resource Index (<http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, or <http://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>). Must match the resource type in the provided content.
    , type' :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate 
    ::  Core.Text
       -- ^  The name of the FHIR store that holds the profiles being used for validation. See 'parent'.
    -> HttpBody
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The FHIR resource type of the resource being validated. For a complete list, see the FHIR Resource Index (<http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, or <http://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>). Must match the resource type in the provided content. See 'type''.
    -> HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate parent payload type' =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , profile = Core.Nothing
    , type' = type'
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate
             = '[CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate{..}
          = go parent type' xgafv accessToken callback profile
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidateResource)
                      Core.mempty

