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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.delete@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Delete
    (
    -- * REST Resource
      ProjectsSecretsDeleteResource

    -- * Creating a Request
    , projectsSecretsDelete
    , ProjectsSecretsDelete

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdAccessToken
    , psdUploadType
    , psdName
    , psdCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.delete@ method which the
-- 'ProjectsSecretsDelete' request conforms to.
type ProjectsSecretsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a Secret.
--
-- /See:/ 'projectsSecretsDelete' smart constructor.
data ProjectsSecretsDelete =
  ProjectsSecretsDelete'
    { _psdXgafv :: !(Maybe Xgafv)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdAccessToken :: !(Maybe Text)
    , _psdUploadType :: !(Maybe Text)
    , _psdName :: !Text
    , _psdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdName'
--
-- * 'psdCallback'
projectsSecretsDelete
    :: Text -- ^ 'psdName'
    -> ProjectsSecretsDelete
projectsSecretsDelete pPsdName_ =
  ProjectsSecretsDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdName = pPsdName_
    , _psdCallback = Nothing
    }


-- | V1 error format.
psdXgafv :: Lens' ProjectsSecretsDelete (Maybe Xgafv)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSecretsDelete (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSecretsDelete (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSecretsDelete (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | Required. The resource name of the Secret to delete in the format
-- \`projects\/*\/secrets\/*\`.
psdName :: Lens' ProjectsSecretsDelete Text
psdName = lens _psdName (\ s a -> s{_psdName = a})

-- | JSONP
psdCallback :: Lens' ProjectsSecretsDelete (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsSecretsDelete where
        type Rs ProjectsSecretsDelete = Empty
        type Scopes ProjectsSecretsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsDelete'{..}
          = go _psdName _psdXgafv _psdUploadProtocol
              _psdAccessToken
              _psdUploadType
              _psdCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsDeleteResource)
                      mempty
