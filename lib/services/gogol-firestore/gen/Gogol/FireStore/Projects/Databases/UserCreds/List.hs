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
-- Module      : Gogol.FireStore.Projects.Databases.UserCreds.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all user creds in the database. Note that the returned resource does not contain the secret value itself.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.userCreds.list@.
module Gogol.FireStore.Projects.Databases.UserCreds.List
    (
    -- * Resource
      FireStoreProjectsDatabasesUserCredsListResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesUserCredsList (..)
    , newFireStoreProjectsDatabasesUserCredsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.userCreds.list@ method which the
-- 'FireStoreProjectsDatabasesUserCredsList' request conforms to.
type FireStoreProjectsDatabasesUserCredsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "userCreds" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] GoogleFirestoreAdminV1ListUserCredsResponse

-- | List all user creds in the database. Note that the returned resource does not contain the secret value itself.
--
-- /See:/ 'newFireStoreProjectsDatabasesUserCredsList' smart constructor.
data FireStoreProjectsDatabasesUserCredsList = FireStoreProjectsDatabasesUserCredsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A parent database name of the form @projects\/{project_id}\/databases\/{database_id}@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesUserCredsList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesUserCredsList 
    :: 
                                           Core.Text
       -- ^  Required. A parent database name of the form @projects\/{project_id}\/databases\/{database_id}@ See 'parent'.
    -> FireStoreProjectsDatabasesUserCredsList
newFireStoreProjectsDatabasesUserCredsList parent
  = FireStoreProjectsDatabasesUserCredsList{xgafv = Core.Nothing,
                                            accessToken = Core.Nothing, callback = Core.Nothing,
                                            parent = parent, uploadType = Core.Nothing,
                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest FireStoreProjectsDatabasesUserCredsList
         where
        type Rs FireStoreProjectsDatabasesUserCredsList =
             GoogleFirestoreAdminV1ListUserCredsResponse
        type Scopes FireStoreProjectsDatabasesUserCredsList =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesUserCredsList{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FireStoreProjectsDatabasesUserCredsListResource)
                      Core.mempty

