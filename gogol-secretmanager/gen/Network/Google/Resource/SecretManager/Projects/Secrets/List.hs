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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Secrets.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.list@.
module Network.Google.Resource.SecretManager.Projects.Secrets.List
    (
    -- * REST Resource
      ProjectsSecretsListResource

    -- * Creating a Request
    , projectsSecretsList
    , ProjectsSecretsList

    -- * Request Lenses
    , pslParent
    , pslXgafv
    , pslUploadProtocol
    , pslAccessToken
    , pslUploadType
    , pslPageToken
    , pslPageSize
    , pslCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.list@ method which the
-- 'ProjectsSecretsList' request conforms to.
type ProjectsSecretsListResource =
     "v1" :>
       Capture "parent" Text :>
         "secrets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSecretsResponse

-- | Lists Secrets.
--
-- /See:/ 'projectsSecretsList' smart constructor.
data ProjectsSecretsList =
  ProjectsSecretsList'
    { _pslParent :: !Text
    , _pslXgafv :: !(Maybe Xgafv)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslAccessToken :: !(Maybe Text)
    , _pslUploadType :: !(Maybe Text)
    , _pslPageToken :: !(Maybe Text)
    , _pslPageSize :: !(Maybe (Textual Int32))
    , _pslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslParent'
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslPageToken'
--
-- * 'pslPageSize'
--
-- * 'pslCallback'
projectsSecretsList
    :: Text -- ^ 'pslParent'
    -> ProjectsSecretsList
projectsSecretsList pPslParent_ =
  ProjectsSecretsList'
    { _pslParent = pPslParent_
    , _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslPageToken = Nothing
    , _pslPageSize = Nothing
    , _pslCallback = Nothing
    }


-- | Required. The resource name of the project associated with the Secrets,
-- in the format \`projects\/*\`.
pslParent :: Lens' ProjectsSecretsList Text
pslParent
  = lens _pslParent (\ s a -> s{_pslParent = a})

-- | V1 error format.
pslXgafv :: Lens' ProjectsSecretsList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSecretsList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSecretsList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSecretsList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | Optional. Pagination token, returned earlier via
-- ListSecretsResponse.next_page_token.
pslPageToken :: Lens' ProjectsSecretsList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Optional. The maximum number of results to be returned in a single page.
-- If set to 0, the server decides the number of results to return. If the
-- number is greater than 25000, it is capped at 25000.
pslPageSize :: Lens' ProjectsSecretsList (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a}) .
      mapping _Coerce

-- | JSONP
pslCallback :: Lens' ProjectsSecretsList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSecretsList where
        type Rs ProjectsSecretsList = ListSecretsResponse
        type Scopes ProjectsSecretsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsList'{..}
          = go _pslParent _pslXgafv _pslUploadProtocol
              _pslAccessToken
              _pslUploadType
              _pslPageToken
              _pslPageSize
              _pslCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsListResource)
                      mempty
