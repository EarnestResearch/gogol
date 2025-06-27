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
-- Module      : Gogol.FireStore.Projects.Databases.UserCreds.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a user creds resource. Note that the returned resource does not contain the secret value itself.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.userCreds.get@.
module Gogol.FireStore.Projects.Databases.UserCreds.Get
    (
    -- * Resource
      FireStoreProjectsDatabasesUserCredsGetResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesUserCredsGet (..)
    , newFireStoreProjectsDatabasesUserCredsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.userCreds.get@ method which the
-- 'FireStoreProjectsDatabasesUserCredsGet' request conforms to.
type FireStoreProjectsDatabasesUserCredsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleFirestoreAdminV1UserCreds

-- | Gets a user creds resource. Note that the returned resource does not contain the secret value itself.
--
-- /See:/ 'newFireStoreProjectsDatabasesUserCredsGet' smart constructor.
data FireStoreProjectsDatabasesUserCredsGet = FireStoreProjectsDatabasesUserCredsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/userCreds\/{user_creds_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesUserCredsGet' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesUserCredsGet 
    :: 
                                          Core.Text
       -- ^  Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/userCreds\/{user_creds_id}@ See 'name'.
    -> FireStoreProjectsDatabasesUserCredsGet
newFireStoreProjectsDatabasesUserCredsGet name
  = FireStoreProjectsDatabasesUserCredsGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           name = name, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest FireStoreProjectsDatabasesUserCredsGet
         where
        type Rs FireStoreProjectsDatabasesUserCredsGet =
             GoogleFirestoreAdminV1UserCreds
        type Scopes FireStoreProjectsDatabasesUserCredsGet =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesUserCredsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FireStoreProjectsDatabasesUserCredsGetResource)
                      Core.mempty

