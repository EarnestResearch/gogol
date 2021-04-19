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
-- Module      : Network.Google.Resource.SecretManager.Projects.Secrets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata of an existing Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.patch@.
module Network.Google.Resource.SecretManager.Projects.Secrets.Patch
    (
    -- * REST Resource
      ProjectsSecretsPatchResource

    -- * Creating a Request
    , projectsSecretsPatch
    , ProjectsSecretsPatch

    -- * Request Lenses
    , pspXgafv
    , pspUploadProtocol
    , pspUpdateMask
    , pspAccessToken
    , pspUploadType
    , pspPayload
    , pspName
    , pspCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.patch@ method which the
-- 'ProjectsSecretsPatch' request conforms to.
type ProjectsSecretsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Secret :> Patch '[JSON] Secret

-- | Updates metadata of an existing Secret.
--
-- /See:/ 'projectsSecretsPatch' smart constructor.
data ProjectsSecretsPatch =
  ProjectsSecretsPatch'
    { _pspXgafv :: !(Maybe Xgafv)
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspUpdateMask :: !(Maybe GFieldMask)
    , _pspAccessToken :: !(Maybe Text)
    , _pspUploadType :: !(Maybe Text)
    , _pspPayload :: !Secret
    , _pspName :: !Text
    , _pspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSecretsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspUploadProtocol'
--
-- * 'pspUpdateMask'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspPayload'
--
-- * 'pspName'
--
-- * 'pspCallback'
projectsSecretsPatch
    :: Secret -- ^ 'pspPayload'
    -> Text -- ^ 'pspName'
    -> ProjectsSecretsPatch
projectsSecretsPatch pPspPayload_ pPspName_ =
  ProjectsSecretsPatch'
    { _pspXgafv = Nothing
    , _pspUploadProtocol = Nothing
    , _pspUpdateMask = Nothing
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspPayload = pPspPayload_
    , _pspName = pPspName_
    , _pspCallback = Nothing
    }


-- | V1 error format.
pspXgafv :: Lens' ProjectsSecretsPatch (Maybe Xgafv)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' ProjectsSecretsPatch (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

-- | Required. Specifies the fields to be updated.
pspUpdateMask :: Lens' ProjectsSecretsPatch (Maybe GFieldMask)
pspUpdateMask
  = lens _pspUpdateMask
      (\ s a -> s{_pspUpdateMask = a})

-- | OAuth access token.
pspAccessToken :: Lens' ProjectsSecretsPatch (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' ProjectsSecretsPatch (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | Multipart request metadata.
pspPayload :: Lens' ProjectsSecretsPatch Secret
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | Output only. The resource name of the Secret in the format
-- \`projects\/*\/secrets\/*\`.
pspName :: Lens' ProjectsSecretsPatch Text
pspName = lens _pspName (\ s a -> s{_pspName = a})

-- | JSONP
pspCallback :: Lens' ProjectsSecretsPatch (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleRequest ProjectsSecretsPatch where
        type Rs ProjectsSecretsPatch = Secret
        type Scopes ProjectsSecretsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSecretsPatch'{..}
          = go _pspName _pspXgafv _pspUploadProtocol
              _pspUpdateMask
              _pspAccessToken
              _pspUploadType
              _pspCallback
              (Just AltJSON)
              _pspPayload
              secretManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSecretsPatchResource)
                      mempty
