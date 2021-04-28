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
-- Module      : Network.Google.Resource.People.People.Connections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of the authenticated user\'s contacts. The request
-- returns a 400 error if \`personFields\` is not specified. The request
-- returns a 410 error if \`sync_token\` is specified and is expired. Sync
-- tokens expire after 7 days to prevent data drift between clients and the
-- server. To handle a sync token expired error, a request should be sent
-- without \`sync_token\` to get all contacts.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.connections.list@.
module Network.Google.Resource.People.People.Connections.List
    (
    -- * REST Resource
      PeopleConnectionsListResource

    -- * Creating a Request
    , peopleConnectionsList
    , PeopleConnectionsList

    -- * Request Lenses
    , pclSyncToken
    , pclXgafv
    , pclUploadProtocol
    , pclResourceName
    , pclRequestMaskIncludeField
    , pclRequestSyncToken
    , pclAccessToken
    , pclUploadType
    , pclSources
    , pclSortOrder
    , pclPersonFields
    , pclPageToken
    , pclPageSize
    , pclCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.connections.list@ method which the
-- 'PeopleConnectionsList' request conforms to.
type PeopleConnectionsListResource =
     "v1" :>
       Capture "resourceName" Text :>
         "connections" :>
           QueryParam "syncToken" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "requestMask.includeField" GFieldMask :>
                   QueryParam "requestSyncToken" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "sources" PeopleConnectionsListSources :>
                           QueryParam "sortOrder" PeopleConnectionsListSortOrder
                             :>
                             QueryParam "personFields" GFieldMask :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListConnectionsResponse

-- | Provides a list of the authenticated user\'s contacts. The request
-- returns a 400 error if \`personFields\` is not specified. The request
-- returns a 410 error if \`sync_token\` is specified and is expired. Sync
-- tokens expire after 7 days to prevent data drift between clients and the
-- server. To handle a sync token expired error, a request should be sent
-- without \`sync_token\` to get all contacts.
--
-- /See:/ 'peopleConnectionsList' smart constructor.
data PeopleConnectionsList =
  PeopleConnectionsList'
    { _pclSyncToken :: !(Maybe Text)
    , _pclXgafv :: !(Maybe Xgafv)
    , _pclUploadProtocol :: !(Maybe Text)
    , _pclResourceName :: !Text
    , _pclRequestMaskIncludeField :: !(Maybe GFieldMask)
    , _pclRequestSyncToken :: !(Maybe Bool)
    , _pclAccessToken :: !(Maybe Text)
    , _pclUploadType :: !(Maybe Text)
    , _pclSources :: !(Maybe [PeopleConnectionsListSources])
    , _pclSortOrder :: !(Maybe PeopleConnectionsListSortOrder)
    , _pclPersonFields :: !(Maybe GFieldMask)
    , _pclPageToken :: !(Maybe Text)
    , _pclPageSize :: !(Maybe (Textual Int32))
    , _pclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleConnectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclSyncToken'
--
-- * 'pclXgafv'
--
-- * 'pclUploadProtocol'
--
-- * 'pclResourceName'
--
-- * 'pclRequestMaskIncludeField'
--
-- * 'pclRequestSyncToken'
--
-- * 'pclAccessToken'
--
-- * 'pclUploadType'
--
-- * 'pclSources'
--
-- * 'pclSortOrder'
--
-- * 'pclPersonFields'
--
-- * 'pclPageToken'
--
-- * 'pclPageSize'
--
-- * 'pclCallback'
peopleConnectionsList
    :: Text -- ^ 'pclResourceName'
    -> PeopleConnectionsList
peopleConnectionsList pPclResourceName_ =
  PeopleConnectionsList'
    { _pclSyncToken = Nothing
    , _pclXgafv = Nothing
    , _pclUploadProtocol = Nothing
    , _pclResourceName = pPclResourceName_
    , _pclRequestMaskIncludeField = Nothing
    , _pclRequestSyncToken = Nothing
    , _pclAccessToken = Nothing
    , _pclUploadType = Nothing
    , _pclSources = Nothing
    , _pclSortOrder = Nothing
    , _pclPersonFields = Nothing
    , _pclPageToken = Nothing
    , _pclPageSize = Nothing
    , _pclCallback = Nothing
    }


-- | Optional. A sync token, received from a previous \`ListConnections\`
-- call. Provide this to retrieve only the resources changed since the last
-- request. When syncing, all other parameters provided to
-- \`ListConnections\` except \`page_size\` and \`page_token\` must match
-- the initial call that provided the sync token. Sync tokens expire after
-- seven days, after which a full sync request without a \`sync_token\`
-- should be made.
pclSyncToken :: Lens' PeopleConnectionsList (Maybe Text)
pclSyncToken
  = lens _pclSyncToken (\ s a -> s{_pclSyncToken = a})

-- | V1 error format.
pclXgafv :: Lens' PeopleConnectionsList (Maybe Xgafv)
pclXgafv = lens _pclXgafv (\ s a -> s{_pclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pclUploadProtocol :: Lens' PeopleConnectionsList (Maybe Text)
pclUploadProtocol
  = lens _pclUploadProtocol
      (\ s a -> s{_pclUploadProtocol = a})

-- | Required. The resource name to return connections for. Only
-- \`people\/me\` is valid.
pclResourceName :: Lens' PeopleConnectionsList Text
pclResourceName
  = lens _pclResourceName
      (\ s a -> s{_pclResourceName = a})

-- | Required. Comma-separated list of person fields to be included in the
-- response. Each path should start with \`person.\`: for example,
-- \`person.names\` or \`person.photos\`.
pclRequestMaskIncludeField :: Lens' PeopleConnectionsList (Maybe GFieldMask)
pclRequestMaskIncludeField
  = lens _pclRequestMaskIncludeField
      (\ s a -> s{_pclRequestMaskIncludeField = a})

-- | Optional. Whether the response should include \`next_sync_token\` on the
-- last page, which can be used to get all changes since the last request.
-- For subsequent sync requests use the \`sync_token\` param instead.
-- Initial full sync requests that specify \`request_sync_token\` and do
-- not specify \`sync_token\` have an additional rate limit per user. Each
-- client should generally only be doing a full sync once every few days
-- per user and so should not hit this limit.
pclRequestSyncToken :: Lens' PeopleConnectionsList (Maybe Bool)
pclRequestSyncToken
  = lens _pclRequestSyncToken
      (\ s a -> s{_pclRequestSyncToken = a})

-- | OAuth access token.
pclAccessToken :: Lens' PeopleConnectionsList (Maybe Text)
pclAccessToken
  = lens _pclAccessToken
      (\ s a -> s{_pclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pclUploadType :: Lens' PeopleConnectionsList (Maybe Text)
pclUploadType
  = lens _pclUploadType
      (\ s a -> s{_pclUploadType = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
pclSources :: Lens' PeopleConnectionsList [PeopleConnectionsListSources]
pclSources
  = lens _pclSources (\ s a -> s{_pclSources = a}) .
      _Default
      . _Coerce

-- | Optional. The order in which the connections should be sorted. Defaults
-- to \`LAST_MODIFIED_ASCENDING\`.
pclSortOrder :: Lens' PeopleConnectionsList (Maybe PeopleConnectionsListSortOrder)
pclSortOrder
  = lens _pclSortOrder (\ s a -> s{_pclSortOrder = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
pclPersonFields :: Lens' PeopleConnectionsList (Maybe GFieldMask)
pclPersonFields
  = lens _pclPersonFields
      (\ s a -> s{_pclPersonFields = a})

-- | Optional. A page token, received from a previous \`ListConnections\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListConnections\` must match the call
-- that provided the page token.
pclPageToken :: Lens' PeopleConnectionsList (Maybe Text)
pclPageToken
  = lens _pclPageToken (\ s a -> s{_pclPageToken = a})

-- | Optional. The number of connections to include in the response. Valid
-- values are between 1 and 1000, inclusive. Defaults to 100 if not set or
-- set to 0.
pclPageSize :: Lens' PeopleConnectionsList (Maybe Int32)
pclPageSize
  = lens _pclPageSize (\ s a -> s{_pclPageSize = a}) .
      mapping _Coerce

-- | JSONP
pclCallback :: Lens' PeopleConnectionsList (Maybe Text)
pclCallback
  = lens _pclCallback (\ s a -> s{_pclCallback = a})

instance GoogleRequest PeopleConnectionsList where
        type Rs PeopleConnectionsList =
             ListConnectionsResponse
        type Scopes PeopleConnectionsList =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly"]
        requestClient PeopleConnectionsList'{..}
          = go _pclResourceName _pclSyncToken _pclXgafv
              _pclUploadProtocol
              _pclRequestMaskIncludeField
              _pclRequestSyncToken
              _pclAccessToken
              _pclUploadType
              (_pclSources ^. _Default)
              _pclSortOrder
              _pclPersonFields
              _pclPageToken
              _pclPageSize
              _pclCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleConnectionsListResource)
                      mempty
