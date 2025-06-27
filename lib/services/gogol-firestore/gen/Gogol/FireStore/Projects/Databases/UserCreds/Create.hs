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
-- Module      : Gogol.FireStore.Projects.Databases.UserCreds.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a user creds.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.userCreds.create@.
module Gogol.FireStore.Projects.Databases.UserCreds.Create
    (
    -- * Resource
      FireStoreProjectsDatabasesUserCredsCreateResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesUserCredsCreate (..)
    , newFireStoreProjectsDatabasesUserCredsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.userCreds.create@ method which the
-- 'FireStoreProjectsDatabasesUserCredsCreate' request conforms to.
type FireStoreProjectsDatabasesUserCredsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "userCreds" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "userCredsId" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1UserCreds Core.:>
                           Core.Post '[Core.JSON] GoogleFirestoreAdminV1UserCreds

-- | Create a user creds.
--
-- /See:/ 'newFireStoreProjectsDatabasesUserCredsCreate' smart constructor.
data FireStoreProjectsDatabasesUserCredsCreate = FireStoreProjectsDatabasesUserCredsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleFirestoreAdminV1UserCreds
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. The ID to use for the user creds, which will become the final component of the user creds\'s resource name. This value should be 4-63 characters. Valid characters are \/a-z-\/ with first character a letter and the last a letter or a number. Must not be UUID-like \/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\/.
    , userCredsId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesUserCredsCreate' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesUserCredsCreate 
    :: 
                                             Core.Text
       -- ^  Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}@ See 'parent'.
    -> GoogleFirestoreAdminV1UserCreds
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesUserCredsCreate
newFireStoreProjectsDatabasesUserCredsCreate parent payload
  = FireStoreProjectsDatabasesUserCredsCreate{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              parent = parent, payload = payload,
                                              uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing,
                                              userCredsId = Core.Nothing}
instance Core.GoogleRequest
           FireStoreProjectsDatabasesUserCredsCreate
         where
        type Rs FireStoreProjectsDatabasesUserCredsCreate =
             GoogleFirestoreAdminV1UserCreds
        type Scopes FireStoreProjectsDatabasesUserCredsCreate =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesUserCredsCreate{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              userCredsId
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FireStoreProjectsDatabasesUserCredsCreateResource)
                      Core.mempty

