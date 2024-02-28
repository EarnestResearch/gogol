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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the entire contents of a resource. Implements the FHIR standard update interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#update DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#update STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#update R4>). If the specified resource does not exist and the FHIR store has enable/update/create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub\/Sub notifications. Those IDs can also be contained in reference fields within other resources. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain @Content-Type: application\/fhir+json@. The resource must contain an @id@ element having an identical value to the ID in the REST path of the request. On success, the response
-- body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @update@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource Updating a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.update@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Update
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdateResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.update@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdateResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] HttpBody Core.:>
                       Core.Put '[Core.JSON] HttpBody

-- | Updates the entire contents of a resource. Implements the FHIR standard update interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#update DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#update STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#update R4>). If the specified resource does not exist and the FHIR store has enable/update/create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub\/Sub notifications. Those IDs can also be contained in reference fields within other resources. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain @Content-Type: application\/fhir+json@. The resource must contain an @id@ element having an identical value to the ID in the REST path of the request. On success, the response
-- body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @update@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource Updating a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate = HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the resource to update.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: HttpBody
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate 
    ::  Core.Text
       -- ^  The name of the resource to update. See 'name'.
    -> HttpBody
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate name payload =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate
             = '[CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdateResource)
                      Core.mempty

