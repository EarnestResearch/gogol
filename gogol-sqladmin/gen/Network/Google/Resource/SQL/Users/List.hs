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
-- Module      : Network.Google.Resource.SQL.Users.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists users in the specified Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.list@.
module Network.Google.Resource.SQL.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulXgafv
    , ulUploadProtocol
    , ulProject
    , ulAccessToken
    , ulUploadType
    , ulCallback
    , ulInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "users" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] UsersListResponse

-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ 'usersList' smart constructor.
data UsersList =
  UsersList'
    { _ulXgafv :: !(Maybe Xgafv)
    , _ulUploadProtocol :: !(Maybe Text)
    , _ulProject :: !Text
    , _ulAccessToken :: !(Maybe Text)
    , _ulUploadType :: !(Maybe Text)
    , _ulCallback :: !(Maybe Text)
    , _ulInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulXgafv'
--
-- * 'ulUploadProtocol'
--
-- * 'ulProject'
--
-- * 'ulAccessToken'
--
-- * 'ulUploadType'
--
-- * 'ulCallback'
--
-- * 'ulInstance'
usersList
    :: Text -- ^ 'ulProject'
    -> Text -- ^ 'ulInstance'
    -> UsersList
usersList pUlProject_ pUlInstance_ =
  UsersList'
    { _ulXgafv = Nothing
    , _ulUploadProtocol = Nothing
    , _ulProject = pUlProject_
    , _ulAccessToken = Nothing
    , _ulUploadType = Nothing
    , _ulCallback = Nothing
    , _ulInstance = pUlInstance_
    }


-- | V1 error format.
ulXgafv :: Lens' UsersList (Maybe Xgafv)
ulXgafv = lens _ulXgafv (\ s a -> s{_ulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulUploadProtocol :: Lens' UsersList (Maybe Text)
ulUploadProtocol
  = lens _ulUploadProtocol
      (\ s a -> s{_ulUploadProtocol = a})

-- | Project ID of the project that contains the instance.
ulProject :: Lens' UsersList Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | OAuth access token.
ulAccessToken :: Lens' UsersList (Maybe Text)
ulAccessToken
  = lens _ulAccessToken
      (\ s a -> s{_ulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulUploadType :: Lens' UsersList (Maybe Text)
ulUploadType
  = lens _ulUploadType (\ s a -> s{_ulUploadType = a})

-- | JSONP
ulCallback :: Lens' UsersList (Maybe Text)
ulCallback
  = lens _ulCallback (\ s a -> s{_ulCallback = a})

-- | Database instance ID. This does not include the project ID.
ulInstance :: Lens' UsersList Text
ulInstance
  = lens _ulInstance (\ s a -> s{_ulInstance = a})

instance GoogleRequest UsersList where
        type Rs UsersList = UsersListResponse
        type Scopes UsersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersList'{..}
          = go _ulProject _ulInstance _ulXgafv
              _ulUploadProtocol
              _ulAccessToken
              _ulUploadType
              _ulCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
