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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.list@.
module Network.Google.Resource.Logging.Organizations.Locations.List
    (
    -- * REST Resource
      OrganizationsLocationsListResource

    -- * Creating a Request
    , organizationsLocationsList
    , OrganizationsLocationsList

    -- * Request Lenses
    , oXgafv
    , oUploadProtocol
    , oAccessToken
    , oUploadType
    , oName
    , oFilter
    , oPageToken
    , oPageSize
    , oCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.list@ method which the
-- 'OrganizationsLocationsList' request conforms to.
type OrganizationsLocationsListResource =
     "v2" :>
       Capture "name" Text :>
         "locations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'organizationsLocationsList' smart constructor.
data OrganizationsLocationsList =
  OrganizationsLocationsList'
    { _oXgafv :: !(Maybe Xgafv)
    , _oUploadProtocol :: !(Maybe Text)
    , _oAccessToken :: !(Maybe Text)
    , _oUploadType :: !(Maybe Text)
    , _oName :: !Text
    , _oFilter :: !(Maybe Text)
    , _oPageToken :: !(Maybe Text)
    , _oPageSize :: !(Maybe (Textual Int32))
    , _oCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oXgafv'
--
-- * 'oUploadProtocol'
--
-- * 'oAccessToken'
--
-- * 'oUploadType'
--
-- * 'oName'
--
-- * 'oFilter'
--
-- * 'oPageToken'
--
-- * 'oPageSize'
--
-- * 'oCallback'
organizationsLocationsList
    :: Text -- ^ 'oName'
    -> OrganizationsLocationsList
organizationsLocationsList pOName_ =
  OrganizationsLocationsList'
    { _oXgafv = Nothing
    , _oUploadProtocol = Nothing
    , _oAccessToken = Nothing
    , _oUploadType = Nothing
    , _oName = pOName_
    , _oFilter = Nothing
    , _oPageToken = Nothing
    , _oPageSize = Nothing
    , _oCallback = Nothing
    }


-- | V1 error format.
oXgafv :: Lens' OrganizationsLocationsList (Maybe Xgafv)
oXgafv = lens _oXgafv (\ s a -> s{_oXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oUploadProtocol :: Lens' OrganizationsLocationsList (Maybe Text)
oUploadProtocol
  = lens _oUploadProtocol
      (\ s a -> s{_oUploadProtocol = a})

-- | OAuth access token.
oAccessToken :: Lens' OrganizationsLocationsList (Maybe Text)
oAccessToken
  = lens _oAccessToken (\ s a -> s{_oAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oUploadType :: Lens' OrganizationsLocationsList (Maybe Text)
oUploadType
  = lens _oUploadType (\ s a -> s{_oUploadType = a})

-- | The resource that owns the locations collection, if applicable.
oName :: Lens' OrganizationsLocationsList Text
oName = lens _oName (\ s a -> s{_oName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
oFilter :: Lens' OrganizationsLocationsList (Maybe Text)
oFilter = lens _oFilter (\ s a -> s{_oFilter = a})

-- | A page token received from the next_page_token field in the response.
-- Send that page token to receive the subsequent page.
oPageToken :: Lens' OrganizationsLocationsList (Maybe Text)
oPageToken
  = lens _oPageToken (\ s a -> s{_oPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
oPageSize :: Lens' OrganizationsLocationsList (Maybe Int32)
oPageSize
  = lens _oPageSize (\ s a -> s{_oPageSize = a}) .
      mapping _Coerce

-- | JSONP
oCallback :: Lens' OrganizationsLocationsList (Maybe Text)
oCallback
  = lens _oCallback (\ s a -> s{_oCallback = a})

instance GoogleRequest OrganizationsLocationsList
         where
        type Rs OrganizationsLocationsList =
             ListLocationsResponse
        type Scopes OrganizationsLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLocationsList'{..}
          = go _oName _oXgafv _oUploadProtocol _oAccessToken
              _oUploadType
              _oFilter
              _oPageToken
              _oPageSize
              _oCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLocationsListResource)
                      mempty
