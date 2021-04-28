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
-- Module      : Network.Google.Resource.People.OtherContacts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all \"Other contacts\", that is contacts that are not in a contact
-- group. \"Other contacts\" are typically auto created contacts from
-- interactions.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.list@.
module Network.Google.Resource.People.OtherContacts.List
    (
    -- * REST Resource
      OtherContactsListResource

    -- * Creating a Request
    , otherContactsList
    , OtherContactsList

    -- * Request Lenses
    , oclSyncToken
    , oclXgafv
    , oclUploadProtocol
    , oclRequestSyncToken
    , oclAccessToken
    , oclUploadType
    , oclReadMask
    , oclPageToken
    , oclPageSize
    , oclCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.otherContacts.list@ method which the
-- 'OtherContactsList' request conforms to.
type OtherContactsListResource =
     "v1" :>
       "otherContacts" :>
         QueryParam "syncToken" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "requestSyncToken" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "readMask" GFieldMask :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListOtherContactsResponse

-- | List all \"Other contacts\", that is contacts that are not in a contact
-- group. \"Other contacts\" are typically auto created contacts from
-- interactions.
--
-- /See:/ 'otherContactsList' smart constructor.
data OtherContactsList =
  OtherContactsList'
    { _oclSyncToken :: !(Maybe Text)
    , _oclXgafv :: !(Maybe Xgafv)
    , _oclUploadProtocol :: !(Maybe Text)
    , _oclRequestSyncToken :: !(Maybe Bool)
    , _oclAccessToken :: !(Maybe Text)
    , _oclUploadType :: !(Maybe Text)
    , _oclReadMask :: !(Maybe GFieldMask)
    , _oclPageToken :: !(Maybe Text)
    , _oclPageSize :: !(Maybe (Textual Int32))
    , _oclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OtherContactsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclSyncToken'
--
-- * 'oclXgafv'
--
-- * 'oclUploadProtocol'
--
-- * 'oclRequestSyncToken'
--
-- * 'oclAccessToken'
--
-- * 'oclUploadType'
--
-- * 'oclReadMask'
--
-- * 'oclPageToken'
--
-- * 'oclPageSize'
--
-- * 'oclCallback'
otherContactsList
    :: OtherContactsList
otherContactsList =
  OtherContactsList'
    { _oclSyncToken = Nothing
    , _oclXgafv = Nothing
    , _oclUploadProtocol = Nothing
    , _oclRequestSyncToken = Nothing
    , _oclAccessToken = Nothing
    , _oclUploadType = Nothing
    , _oclReadMask = Nothing
    , _oclPageToken = Nothing
    , _oclPageSize = Nothing
    , _oclCallback = Nothing
    }


-- | Optional. A sync token, received from a previous \`ListOtherContacts\`
-- call. Provide this to retrieve only the resources changed since the last
-- request. Sync requests that specify \`sync_token\` have an additional
-- rate limit. When syncing, all other parameters provided to
-- \`ListOtherContacts\` must match the call that provided the sync token.
oclSyncToken :: Lens' OtherContactsList (Maybe Text)
oclSyncToken
  = lens _oclSyncToken (\ s a -> s{_oclSyncToken = a})

-- | V1 error format.
oclXgafv :: Lens' OtherContactsList (Maybe Xgafv)
oclXgafv = lens _oclXgafv (\ s a -> s{_oclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oclUploadProtocol :: Lens' OtherContactsList (Maybe Text)
oclUploadProtocol
  = lens _oclUploadProtocol
      (\ s a -> s{_oclUploadProtocol = a})

-- | Optional. Whether the response should include \`next_sync_token\`, which
-- can be used to get all changes since the last request. For subsequent
-- sync requests use the \`sync_token\` param instead. Initial sync
-- requests that specify \`request_sync_token\` have an additional rate
-- limit.
oclRequestSyncToken :: Lens' OtherContactsList (Maybe Bool)
oclRequestSyncToken
  = lens _oclRequestSyncToken
      (\ s a -> s{_oclRequestSyncToken = a})

-- | OAuth access token.
oclAccessToken :: Lens' OtherContactsList (Maybe Text)
oclAccessToken
  = lens _oclAccessToken
      (\ s a -> s{_oclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oclUploadType :: Lens' OtherContactsList (Maybe Text)
oclUploadType
  = lens _oclUploadType
      (\ s a -> s{_oclUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * emailAddresses * names * phoneNumbers
oclReadMask :: Lens' OtherContactsList (Maybe GFieldMask)
oclReadMask
  = lens _oclReadMask (\ s a -> s{_oclReadMask = a})

-- | Optional. A page token, received from a previous \`ListOtherContacts\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListOtherContacts\` must match the call
-- that provided the page token.
oclPageToken :: Lens' OtherContactsList (Maybe Text)
oclPageToken
  = lens _oclPageToken (\ s a -> s{_oclPageToken = a})

-- | Optional. The number of \"Other contacts\" to include in the response.
-- Valid values are between 1 and 1000, inclusive. Defaults to 100 if not
-- set or set to 0.
oclPageSize :: Lens' OtherContactsList (Maybe Int32)
oclPageSize
  = lens _oclPageSize (\ s a -> s{_oclPageSize = a}) .
      mapping _Coerce

-- | JSONP
oclCallback :: Lens' OtherContactsList (Maybe Text)
oclCallback
  = lens _oclCallback (\ s a -> s{_oclCallback = a})

instance GoogleRequest OtherContactsList where
        type Rs OtherContactsList = ListOtherContactsResponse
        type Scopes OtherContactsList =
             '["https://www.googleapis.com/auth/contacts.other.readonly"]
        requestClient OtherContactsList'{..}
          = go _oclSyncToken _oclXgafv _oclUploadProtocol
              _oclRequestSyncToken
              _oclAccessToken
              _oclUploadType
              _oclReadMask
              _oclPageToken
              _oclPageSize
              _oclCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy OtherContactsListResource)
                      mempty
