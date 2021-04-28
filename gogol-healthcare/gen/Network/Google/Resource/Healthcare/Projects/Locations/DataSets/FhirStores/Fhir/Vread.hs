{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Vread
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of a version (current or historical) of a FHIR
-- resource by version ID. Implements the FHIR standard vread interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#vread),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#vread),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#vread)).
-- On success, the response body contains a JSON-encoded representation of
-- the resource. Errors generated by the FHIR store contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead. For samples that show how
-- to call \`vread\`, see [Retrieving a FHIR resource
-- version](\/healthcare\/docs\/how-tos\/fhir-resources#retrieving_a_fhir_resource_version).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.vread@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Vread
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirVreadResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirVread
    , ProjectsLocationsDataSetsFhirStoresFhirVread

    -- * Request Lenses
    , pldsfsfvXgafv
    , pldsfsfvUploadProtocol
    , pldsfsfvAccessToken
    , pldsfsfvUploadType
    , pldsfsfvName
    , pldsfsfvCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.vread@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirVread' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirVreadResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets the contents of a version (current or historical) of a FHIR
-- resource by version ID. Implements the FHIR standard vread interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#vread),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#vread),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#vread)).
-- On success, the response body contains a JSON-encoded representation of
-- the resource. Errors generated by the FHIR store contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead. For samples that show how
-- to call \`vread\`, see [Retrieving a FHIR resource
-- version](\/healthcare\/docs\/how-tos\/fhir-resources#retrieving_a_fhir_resource_version).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirVread' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirVread =
  ProjectsLocationsDataSetsFhirStoresFhirVread'
    { _pldsfsfvXgafv :: !(Maybe Xgafv)
    , _pldsfsfvUploadProtocol :: !(Maybe Text)
    , _pldsfsfvAccessToken :: !(Maybe Text)
    , _pldsfsfvUploadType :: !(Maybe Text)
    , _pldsfsfvName :: !Text
    , _pldsfsfvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirVread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfvXgafv'
--
-- * 'pldsfsfvUploadProtocol'
--
-- * 'pldsfsfvAccessToken'
--
-- * 'pldsfsfvUploadType'
--
-- * 'pldsfsfvName'
--
-- * 'pldsfsfvCallback'
projectsLocationsDataSetsFhirStoresFhirVread
    :: Text -- ^ 'pldsfsfvName'
    -> ProjectsLocationsDataSetsFhirStoresFhirVread
projectsLocationsDataSetsFhirStoresFhirVread pPldsfsfvName_ =
  ProjectsLocationsDataSetsFhirStoresFhirVread'
    { _pldsfsfvXgafv = Nothing
    , _pldsfsfvUploadProtocol = Nothing
    , _pldsfsfvAccessToken = Nothing
    , _pldsfsfvUploadType = Nothing
    , _pldsfsfvName = pPldsfsfvName_
    , _pldsfsfvCallback = Nothing
    }


-- | V1 error format.
pldsfsfvXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread (Maybe Xgafv)
pldsfsfvXgafv
  = lens _pldsfsfvXgafv
      (\ s a -> s{_pldsfsfvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfvUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread (Maybe Text)
pldsfsfvUploadProtocol
  = lens _pldsfsfvUploadProtocol
      (\ s a -> s{_pldsfsfvUploadProtocol = a})

-- | OAuth access token.
pldsfsfvAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread (Maybe Text)
pldsfsfvAccessToken
  = lens _pldsfsfvAccessToken
      (\ s a -> s{_pldsfsfvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfvUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread (Maybe Text)
pldsfsfvUploadType
  = lens _pldsfsfvUploadType
      (\ s a -> s{_pldsfsfvUploadType = a})

-- | The name of the resource version to retrieve.
pldsfsfvName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread Text
pldsfsfvName
  = lens _pldsfsfvName (\ s a -> s{_pldsfsfvName = a})

-- | JSONP
pldsfsfvCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirVread (Maybe Text)
pldsfsfvCallback
  = lens _pldsfsfvCallback
      (\ s a -> s{_pldsfsfvCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirVread
         where
        type Rs ProjectsLocationsDataSetsFhirStoresFhirVread
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirVread
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirVread'{..}
          = go _pldsfsfvName _pldsfsfvXgafv
              _pldsfsfvUploadProtocol
              _pldsfsfvAccessToken
              _pldsfsfvUploadType
              _pldsfsfvCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirVreadResource)
                      mempty
