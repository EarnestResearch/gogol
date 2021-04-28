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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata for a SecretVersion.
-- \`projects\/*\/secrets\/*\/versions\/latest\` is an alias to the most
-- recently created SecretVersion.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.get@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Get
    (
    -- * REST Resource
      ProjectsSecretsVersionsGetResource

    -- * Creating a Request
    , projectsSecretsVersionsGet
    , ProjectsSecretsVersionsGet

    -- * Request Lenses
    , psvgXgafv
    , psvgUploadProtocol
    , psvgAccessToken
    , psvgUploadType
    , psvgName
    , psvgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.get@ method which the
-- 'ProjectsSecretsVersionsGet' request conforms to.
type ProjectsSecretsVersionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] SecretVersion

-- | Gets metadata for a SecretVersion.
-- \`projects\/*\/secrets\/*\/versions\/latest\` is an alias to the most
-- recently created SecretVersion.
--
-- /See:/ 'projectsSecretsVersionsGet' smart constructor.
data ProjectsSecretsVersionsGet =
  ProjectsSecretsVersionsGet'
    { _psvgXgafv :: !(Maybe Xgafv)
    , _psvgUploadProtocol :: !(Maybe Text)
    , _psvgAccessToken :: !(Maybe Text)
    , _psvgUploadType :: !(Maybe Text)
    , _psvgName :: !Text
    , _psvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvgXgafv'
--
-- * 'psvgUploadProtocol'
--
-- * 'psvgAccessToken'
--
-- * 'psvgUploadType'
--
-- * 'psvgName'
--
-- * 'psvgCallback'
projectsSecretsVersionsGet
    :: Text -- ^ 'psvgName'
    -> ProjectsSecretsVersionsGet
projectsSecretsVersionsGet pPsvgName_ =
  ProjectsSecretsVersionsGet'
    { _psvgXgafv = Nothing
    , _psvgUploadProtocol = Nothing
    , _psvgAccessToken = Nothing
    , _psvgUploadType = Nothing
    , _psvgName = pPsvgName_
    , _psvgCallback = Nothing
    }


-- | V1 error format.
psvgXgafv :: Lens' ProjectsSecretsVersionsGet (Maybe Xgafv)
psvgXgafv
  = lens _psvgXgafv (\ s a -> s{_psvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvgUploadProtocol :: Lens' ProjectsSecretsVersionsGet (Maybe Text)
psvgUploadProtocol
  = lens _psvgUploadProtocol
      (\ s a -> s{_psvgUploadProtocol = a})

-- | OAuth access token.
psvgAccessToken :: Lens' ProjectsSecretsVersionsGet (Maybe Text)
psvgAccessToken
  = lens _psvgAccessToken
      (\ s a -> s{_psvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvgUploadType :: Lens' ProjectsSecretsVersionsGet (Maybe Text)
psvgUploadType
  = lens _psvgUploadType
      (\ s a -> s{_psvgUploadType = a})

-- | Required. The resource name of the SecretVersion in the format
-- \`projects\/*\/secrets\/*\/versions\/*\`.
-- \`projects\/*\/secrets\/*\/versions\/latest\` is an alias to the most
-- recently created SecretVersion.
psvgName :: Lens' ProjectsSecretsVersionsGet Text
psvgName = lens _psvgName (\ s a -> s{_psvgName = a})

-- | JSONP
psvgCallback :: Lens' ProjectsSecretsVersionsGet (Maybe Text)
psvgCallback
  = lens _psvgCallback (\ s a -> s{_psvgCallback = a})

instance GoogleRequest ProjectsSecretsVersionsGet
         where
        type Rs ProjectsSecretsVersionsGet = SecretVersion
        type Scopes ProjectsSecretsVersionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsGet'{..}
          = go _psvgName _psvgXgafv _psvgUploadProtocol
              _psvgAccessToken
              _psvgUploadType
              _psvgCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsVersionsGetResource)
                      mempty
