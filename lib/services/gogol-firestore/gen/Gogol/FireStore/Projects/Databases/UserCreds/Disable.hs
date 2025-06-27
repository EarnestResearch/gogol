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
-- Module      : Gogol.FireStore.Projects.Databases.UserCreds.Disable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables a user creds. No-op if the user creds are already disabled.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.userCreds.disable@.
module Gogol.FireStore.Projects.Databases.UserCreds.Disable
    (
    -- * Resource
      FireStoreProjectsDatabasesUserCredsDisableResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesUserCredsDisable (..)
    , newFireStoreProjectsDatabasesUserCredsDisable
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.userCreds.disable@ method which the
-- 'FireStoreProjectsDatabasesUserCredsDisable' request conforms to.
type FireStoreProjectsDatabasesUserCredsDisableResource =
     "v1" Core.:>
       Core.CaptureMode "name" "disable" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleFirestoreAdminV1DisableUserCredsRequest
                       Core.:> Core.Post '[Core.JSON] GoogleFirestoreAdminV1UserCreds

-- | Disables a user creds. No-op if the user creds are already disabled.
--
-- /See:/ 'newFireStoreProjectsDatabasesUserCredsDisable' smart constructor.
data FireStoreProjectsDatabasesUserCredsDisable = FireStoreProjectsDatabasesUserCredsDisable
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
    , payload :: GoogleFirestoreAdminV1DisableUserCredsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesUserCredsDisable' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesUserCredsDisable 
    :: 
                                              Core.Text
       -- ^  Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/userCreds\/{user_creds_id}@ See 'name'.
    -> GoogleFirestoreAdminV1DisableUserCredsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesUserCredsDisable
newFireStoreProjectsDatabasesUserCredsDisable name payload
  = FireStoreProjectsDatabasesUserCredsDisable{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               name = name, payload = payload,
                                               uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           FireStoreProjectsDatabasesUserCredsDisable
         where
        type Rs FireStoreProjectsDatabasesUserCredsDisable =
             GoogleFirestoreAdminV1UserCreds
        type Scopes FireStoreProjectsDatabasesUserCredsDisable =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesUserCredsDisable{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FireStoreProjectsDatabasesUserCredsDisableResource)
                      Core.mempty

