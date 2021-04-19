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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata for a given Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.get@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Get
    (
    -- * REST Resource
      ProjectsSecretsGetResource

    -- * Creating a Request
    , projectsSecretsGet
    , ProjectsSecretsGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgAccessToken
    , psgUploadType
    , psgName
    , psgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.get@ method which the
-- 'ProjectsSecretsGet' request conforms to.
type ProjectsSecretsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Secret

-- | Gets metadata for a given Secret.
--
-- /See:/ 'projectsSecretsGet' smart constructor.
data ProjectsSecretsGet =
  ProjectsSecretsGet'
    { _psgXgafv :: !(Maybe Xgafv)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgAccessToken :: !(Maybe Text)
    , _psgUploadType :: !(Maybe Text)
    , _psgName :: !Text
    , _psgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgName'
--
-- * 'psgCallback'
projectsSecretsGet
    :: Text -- ^ 'psgName'
    -> ProjectsSecretsGet
projectsSecretsGet pPsgName_ =
  ProjectsSecretsGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgName = pPsgName_
    , _psgCallback = Nothing
    }


-- | V1 error format.
psgXgafv :: Lens' ProjectsSecretsGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSecretsGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSecretsGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSecretsGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | Required. The resource name of the Secret, in the format
-- \`projects\/*\/secrets\/*\`.
psgName :: Lens' ProjectsSecretsGet Text
psgName = lens _psgName (\ s a -> s{_psgName = a})

-- | JSONP
psgCallback :: Lens' ProjectsSecretsGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest ProjectsSecretsGet where
        type Rs ProjectsSecretsGet = Secret
        type Scopes ProjectsSecretsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsGet'{..}
          = go _psgName _psgXgafv _psgUploadProtocol
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsGetResource)
                      mempty
