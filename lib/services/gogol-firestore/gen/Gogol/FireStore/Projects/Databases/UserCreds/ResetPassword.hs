{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FireStore.Projects.Databases.UserCreds.ResetPassword
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the password of a user creds.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.userCreds.resetPassword@.
module Gogol.FireStore.Projects.Databases.UserCreds.ResetPassword
    (
    -- * Resource
      FireStoreProjectsDatabasesUserCredsResetPasswordResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesUserCredsResetPassword (..)
    , newFireStoreProjectsDatabasesUserCredsResetPassword
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.userCreds.resetPassword@ method which the
-- 'FireStoreProjectsDatabasesUserCredsResetPassword' request conforms to.
type FireStoreProjectsDatabasesUserCredsResetPasswordResource =
     "v1" Core.:>
       Core.CaptureMode "name" "resetPassword" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleFirestoreAdminV1ResetUserPasswordRequest
                       Core.:> Core.Post '[Core.JSON] GoogleFirestoreAdminV1UserCreds

-- | Resets the password of a user creds.
--
-- /See:/ 'newFireStoreProjectsDatabasesUserCredsResetPassword' smart constructor.
data FireStoreProjectsDatabasesUserCredsResetPassword = FireStoreProjectsDatabasesUserCredsResetPassword
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/userCreds\/{user_creds_id}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleFirestoreAdminV1ResetUserPasswordRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesUserCredsResetPassword' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesUserCredsResetPassword 
    :: 
                                                    Core.Text
       -- ^  Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/userCreds\/{user_creds_id}@ See 'name'.
    -> GoogleFirestoreAdminV1ResetUserPasswordRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesUserCredsResetPassword
newFireStoreProjectsDatabasesUserCredsResetPassword name payload
  = FireStoreProjectsDatabasesUserCredsResetPassword{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, name = name,
                                                     payload = payload, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           FireStoreProjectsDatabasesUserCredsResetPassword
         where
        type Rs FireStoreProjectsDatabasesUserCredsResetPassword =
             GoogleFirestoreAdminV1UserCreds
        type Scopes FireStoreProjectsDatabasesUserCredsResetPassword =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesUserCredsResetPassword{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FireStoreProjectsDatabasesUserCredsResetPasswordResource)
                      Core.mempty

