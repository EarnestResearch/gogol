{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Projects.Secrets.Versions.Destroy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.destroy@.
module Gogol.SecretManager.Projects.Secrets.Versions.Destroy
    (
    -- * Resource
      SecretManagerProjectsSecretsVersionsDestroyResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsVersionsDestroy (..)
    , newSecretManagerProjectsSecretsVersionsDestroy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.destroy@ method which the
-- 'SecretManagerProjectsSecretsVersionsDestroy' request conforms to.
type SecretManagerProjectsSecretsVersionsDestroyResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "destroy" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DestroySecretVersionRequest
                       Core.:> Core.Post '[Core.JSON] SecretVersion

-- | Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ 'newSecretManagerProjectsSecretsVersionsDestroy' smart constructor.
data SecretManagerProjectsSecretsVersionsDestroy = SecretManagerProjectsSecretsVersionsDestroy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the SecretVersion to destroy in the format @projects\/*\/secrets\/*\/versions\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DestroySecretVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsVersionsDestroy' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsVersionsDestroy 
    ::  Core.Text
       -- ^  Required. The resource name of the SecretVersion to destroy in the format @projects\/*\/secrets\/*\/versions\/*@. See 'name'.
    -> DestroySecretVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsSecretsVersionsDestroy
newSecretManagerProjectsSecretsVersionsDestroy name payload =
  SecretManagerProjectsSecretsVersionsDestroy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecretManagerProjectsSecretsVersionsDestroy
         where
        type Rs SecretManagerProjectsSecretsVersionsDestroy =
             SecretVersion
        type Scopes
               SecretManagerProjectsSecretsVersionsDestroy
             = '[CloudPlatform'FullControl]
        requestClient
          SecretManagerProjectsSecretsVersionsDestroy{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecretManagerProjectsSecretsVersionsDestroyResource)
                      Core.mempty

