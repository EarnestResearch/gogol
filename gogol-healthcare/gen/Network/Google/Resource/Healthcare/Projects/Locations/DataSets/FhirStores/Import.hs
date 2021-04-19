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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import resources to the FHIR store by loading data from the specified
-- sources. Each resource must have a client-supplied ID, which is retained
-- by the server. The import operation is idempotent. Upon retry, the most
-- recent data (matching the client-supplied ID) is overwritten, without
-- creating a new resource version. If partial failures occur during the
-- import, successful changes are not rolled back. If history imports are
-- enabled (enable_history_import is set in the FHIR store\'s
-- configuration), you can import historical versions of a resource by
-- supplying a bundle of type \`history\`. The historical versions in the
-- bundle must have \`lastUpdated\` timestamps. If a current or historical
-- version with the supplied resource ID already exists, the bundle is
-- rejected. This method returns an Operation that can be used to track the
-- status of the import by calling GetOperation. Immediate fatal errors
-- appear in the error field. Otherwise, when the operation finishes, a
-- detailed response of type ImportResourcesResponse is returned in the
-- response field. The metadata field type for this operation is
-- OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.import@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresImportResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresImport
    , ProjectsLocationsDataSetsFhirStoresImport

    -- * Request Lenses
    , pldsfsiXgafv
    , pldsfsiUploadProtocol
    , pldsfsiAccessToken
    , pldsfsiUploadType
    , pldsfsiPayload
    , pldsfsiName
    , pldsfsiCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.import@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresImport' request conforms to.
type ProjectsLocationsDataSetsFhirStoresImportResource
     =
     "v1beta1" :>
       CaptureMode "name" "import" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ImportResourcesRequest :>
                       Post '[JSON] Operation

-- | Import resources to the FHIR store by loading data from the specified
-- sources. Each resource must have a client-supplied ID, which is retained
-- by the server. The import operation is idempotent. Upon retry, the most
-- recent data (matching the client-supplied ID) is overwritten, without
-- creating a new resource version. If partial failures occur during the
-- import, successful changes are not rolled back. If history imports are
-- enabled (enable_history_import is set in the FHIR store\'s
-- configuration), you can import historical versions of a resource by
-- supplying a bundle of type \`history\`. The historical versions in the
-- bundle must have \`lastUpdated\` timestamps. If a current or historical
-- version with the supplied resource ID already exists, the bundle is
-- rejected. This method returns an Operation that can be used to track the
-- status of the import by calling GetOperation. Immediate fatal errors
-- appear in the error field. Otherwise, when the operation finishes, a
-- detailed response of type ImportResourcesResponse is returned in the
-- response field. The metadata field type for this operation is
-- OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresImport' smart constructor.
data ProjectsLocationsDataSetsFhirStoresImport =
  ProjectsLocationsDataSetsFhirStoresImport'
    { _pldsfsiXgafv :: !(Maybe Xgafv)
    , _pldsfsiUploadProtocol :: !(Maybe Text)
    , _pldsfsiAccessToken :: !(Maybe Text)
    , _pldsfsiUploadType :: !(Maybe Text)
    , _pldsfsiPayload :: !ImportResourcesRequest
    , _pldsfsiName :: !Text
    , _pldsfsiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsiXgafv'
--
-- * 'pldsfsiUploadProtocol'
--
-- * 'pldsfsiAccessToken'
--
-- * 'pldsfsiUploadType'
--
-- * 'pldsfsiPayload'
--
-- * 'pldsfsiName'
--
-- * 'pldsfsiCallback'
projectsLocationsDataSetsFhirStoresImport
    :: ImportResourcesRequest -- ^ 'pldsfsiPayload'
    -> Text -- ^ 'pldsfsiName'
    -> ProjectsLocationsDataSetsFhirStoresImport
projectsLocationsDataSetsFhirStoresImport pPldsfsiPayload_ pPldsfsiName_ =
  ProjectsLocationsDataSetsFhirStoresImport'
    { _pldsfsiXgafv = Nothing
    , _pldsfsiUploadProtocol = Nothing
    , _pldsfsiAccessToken = Nothing
    , _pldsfsiUploadType = Nothing
    , _pldsfsiPayload = pPldsfsiPayload_
    , _pldsfsiName = pPldsfsiName_
    , _pldsfsiCallback = Nothing
    }


-- | V1 error format.
pldsfsiXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Xgafv)
pldsfsiXgafv
  = lens _pldsfsiXgafv (\ s a -> s{_pldsfsiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsiUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiUploadProtocol
  = lens _pldsfsiUploadProtocol
      (\ s a -> s{_pldsfsiUploadProtocol = a})

-- | OAuth access token.
pldsfsiAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiAccessToken
  = lens _pldsfsiAccessToken
      (\ s a -> s{_pldsfsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsiUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiUploadType
  = lens _pldsfsiUploadType
      (\ s a -> s{_pldsfsiUploadType = a})

-- | Multipart request metadata.
pldsfsiPayload :: Lens' ProjectsLocationsDataSetsFhirStoresImport ImportResourcesRequest
pldsfsiPayload
  = lens _pldsfsiPayload
      (\ s a -> s{_pldsfsiPayload = a})

-- | The name of the FHIR store to import FHIR resources to. The name should
-- be in the format of
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
pldsfsiName :: Lens' ProjectsLocationsDataSetsFhirStoresImport Text
pldsfsiName
  = lens _pldsfsiName (\ s a -> s{_pldsfsiName = a})

-- | JSONP
pldsfsiCallback :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiCallback
  = lens _pldsfsiCallback
      (\ s a -> s{_pldsfsiCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresImport
         where
        type Rs ProjectsLocationsDataSetsFhirStoresImport =
             Operation
        type Scopes ProjectsLocationsDataSetsFhirStoresImport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresImport'{..}
          = go _pldsfsiName _pldsfsiXgafv
              _pldsfsiUploadProtocol
              _pldsfsiAccessToken
              _pldsfsiUploadType
              _pldsfsiCallback
              (Just AltJSON)
              _pldsfsiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresImportResource)
                      mempty
