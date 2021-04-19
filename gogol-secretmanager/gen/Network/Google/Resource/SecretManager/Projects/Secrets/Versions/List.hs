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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists SecretVersions. This call does not return secret data.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.list@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.List
    (
    -- * REST Resource
      ProjectsSecretsVersionsListResource

    -- * Creating a Request
    , projectsSecretsVersionsList
    , ProjectsSecretsVersionsList

    -- * Request Lenses
    , psvlParent
    , psvlXgafv
    , psvlUploadProtocol
    , psvlAccessToken
    , psvlUploadType
    , psvlPageToken
    , psvlPageSize
    , psvlCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.list@ method which the
-- 'ProjectsSecretsVersionsList' request conforms to.
type ProjectsSecretsVersionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSecretVersionsResponse

-- | Lists SecretVersions. This call does not return secret data.
--
-- /See:/ 'projectsSecretsVersionsList' smart constructor.
data ProjectsSecretsVersionsList =
  ProjectsSecretsVersionsList'
    { _psvlParent :: !Text
    , _psvlXgafv :: !(Maybe Xgafv)
    , _psvlUploadProtocol :: !(Maybe Text)
    , _psvlAccessToken :: !(Maybe Text)
    , _psvlUploadType :: !(Maybe Text)
    , _psvlPageToken :: !(Maybe Text)
    , _psvlPageSize :: !(Maybe (Textual Int32))
    , _psvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvlParent'
--
-- * 'psvlXgafv'
--
-- * 'psvlUploadProtocol'
--
-- * 'psvlAccessToken'
--
-- * 'psvlUploadType'
--
-- * 'psvlPageToken'
--
-- * 'psvlPageSize'
--
-- * 'psvlCallback'
projectsSecretsVersionsList
    :: Text -- ^ 'psvlParent'
    -> ProjectsSecretsVersionsList
projectsSecretsVersionsList pPsvlParent_ =
  ProjectsSecretsVersionsList'
    { _psvlParent = pPsvlParent_
    , _psvlXgafv = Nothing
    , _psvlUploadProtocol = Nothing
    , _psvlAccessToken = Nothing
    , _psvlUploadType = Nothing
    , _psvlPageToken = Nothing
    , _psvlPageSize = Nothing
    , _psvlCallback = Nothing
    }


-- | Required. The resource name of the Secret associated with the
-- SecretVersions to list, in the format \`projects\/*\/secrets\/*\`.
psvlParent :: Lens' ProjectsSecretsVersionsList Text
psvlParent
  = lens _psvlParent (\ s a -> s{_psvlParent = a})

-- | V1 error format.
psvlXgafv :: Lens' ProjectsSecretsVersionsList (Maybe Xgafv)
psvlXgafv
  = lens _psvlXgafv (\ s a -> s{_psvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvlUploadProtocol :: Lens' ProjectsSecretsVersionsList (Maybe Text)
psvlUploadProtocol
  = lens _psvlUploadProtocol
      (\ s a -> s{_psvlUploadProtocol = a})

-- | OAuth access token.
psvlAccessToken :: Lens' ProjectsSecretsVersionsList (Maybe Text)
psvlAccessToken
  = lens _psvlAccessToken
      (\ s a -> s{_psvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvlUploadType :: Lens' ProjectsSecretsVersionsList (Maybe Text)
psvlUploadType
  = lens _psvlUploadType
      (\ s a -> s{_psvlUploadType = a})

-- | Optional. Pagination token, returned earlier via
-- ListSecretVersionsResponse.next_page_token][].
psvlPageToken :: Lens' ProjectsSecretsVersionsList (Maybe Text)
psvlPageToken
  = lens _psvlPageToken
      (\ s a -> s{_psvlPageToken = a})

-- | Optional. The maximum number of results to be returned in a single page.
-- If set to 0, the server decides the number of results to return. If the
-- number is greater than 25000, it is capped at 25000.
psvlPageSize :: Lens' ProjectsSecretsVersionsList (Maybe Int32)
psvlPageSize
  = lens _psvlPageSize (\ s a -> s{_psvlPageSize = a})
      . mapping _Coerce

-- | JSONP
psvlCallback :: Lens' ProjectsSecretsVersionsList (Maybe Text)
psvlCallback
  = lens _psvlCallback (\ s a -> s{_psvlCallback = a})

instance GoogleRequest ProjectsSecretsVersionsList
         where
        type Rs ProjectsSecretsVersionsList =
             ListSecretVersionsResponse
        type Scopes ProjectsSecretsVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsList'{..}
          = go _psvlParent _psvlXgafv _psvlUploadProtocol
              _psvlAccessToken
              _psvlUploadType
              _psvlPageToken
              _psvlPageSize
              _psvlCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsVersionsListResource)
                      mempty
