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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Access
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses a SecretVersion. This call returns the secret data.
-- \`projects\/*\/secrets\/*\/versions\/latest\` is an alias to the
-- \`latest\` SecretVersion.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.access@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Access
    (
    -- * REST Resource
      ProjectsSecretsVersionsAccessResource

    -- * Creating a Request
    , projectsSecretsVersionsAccess
    , ProjectsSecretsVersionsAccess

    -- * Request Lenses
    , psvaXgafv
    , psvaUploadProtocol
    , psvaAccessToken
    , psvaUploadType
    , psvaName
    , psvaCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.access@ method which the
-- 'ProjectsSecretsVersionsAccess' request conforms to.
type ProjectsSecretsVersionsAccessResource =
     "v1" :>
       CaptureMode "name" "access" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccessSecretVersionResponse

-- | Accesses a SecretVersion. This call returns the secret data.
-- \`projects\/*\/secrets\/*\/versions\/latest\` is an alias to the
-- \`latest\` SecretVersion.
--
-- /See:/ 'projectsSecretsVersionsAccess' smart constructor.
data ProjectsSecretsVersionsAccess =
  ProjectsSecretsVersionsAccess'
    { _psvaXgafv :: !(Maybe Xgafv)
    , _psvaUploadProtocol :: !(Maybe Text)
    , _psvaAccessToken :: !(Maybe Text)
    , _psvaUploadType :: !(Maybe Text)
    , _psvaName :: !Text
    , _psvaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsVersionsAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvaXgafv'
--
-- * 'psvaUploadProtocol'
--
-- * 'psvaAccessToken'
--
-- * 'psvaUploadType'
--
-- * 'psvaName'
--
-- * 'psvaCallback'
projectsSecretsVersionsAccess
    :: Text -- ^ 'psvaName'
    -> ProjectsSecretsVersionsAccess
projectsSecretsVersionsAccess pPsvaName_ =
  ProjectsSecretsVersionsAccess'
    { _psvaXgafv = Nothing
    , _psvaUploadProtocol = Nothing
    , _psvaAccessToken = Nothing
    , _psvaUploadType = Nothing
    , _psvaName = pPsvaName_
    , _psvaCallback = Nothing
    }


-- | V1 error format.
psvaXgafv :: Lens' ProjectsSecretsVersionsAccess (Maybe Xgafv)
psvaXgafv
  = lens _psvaXgafv (\ s a -> s{_psvaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvaUploadProtocol :: Lens' ProjectsSecretsVersionsAccess (Maybe Text)
psvaUploadProtocol
  = lens _psvaUploadProtocol
      (\ s a -> s{_psvaUploadProtocol = a})

-- | OAuth access token.
psvaAccessToken :: Lens' ProjectsSecretsVersionsAccess (Maybe Text)
psvaAccessToken
  = lens _psvaAccessToken
      (\ s a -> s{_psvaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvaUploadType :: Lens' ProjectsSecretsVersionsAccess (Maybe Text)
psvaUploadType
  = lens _psvaUploadType
      (\ s a -> s{_psvaUploadType = a})

-- | Required. The resource name of the SecretVersion in the format
-- \`projects\/*\/secrets\/*\/versions\/*\`.
psvaName :: Lens' ProjectsSecretsVersionsAccess Text
psvaName = lens _psvaName (\ s a -> s{_psvaName = a})

-- | JSONP
psvaCallback :: Lens' ProjectsSecretsVersionsAccess (Maybe Text)
psvaCallback
  = lens _psvaCallback (\ s a -> s{_psvaCallback = a})

instance GoogleRequest ProjectsSecretsVersionsAccess
         where
        type Rs ProjectsSecretsVersionsAccess =
             AccessSecretVersionResponse
        type Scopes ProjectsSecretsVersionsAccess =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsVersionsAccess'{..}
          = go _psvaName _psvaXgafv _psvaUploadProtocol
              _psvaAccessToken
              _psvaUploadType
              _psvaCallback
              (Just AltJSON)
              secretManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSecretsVersionsAccessResource)
                      mempty
