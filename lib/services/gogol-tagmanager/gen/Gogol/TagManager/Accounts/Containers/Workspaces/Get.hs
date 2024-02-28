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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.get@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Get
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesGetResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesGet (..)
    , newTagManagerAccountsContainersWorkspacesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.get@ method which the
-- 'TagManagerAccountsContainersWorkspacesGet' request conforms to.
type TagManagerAccountsContainersWorkspacesGetResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "path" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Workspace

-- | Gets a Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesGet' smart constructor.
data TagManagerAccountsContainersWorkspacesGet = TagManagerAccountsContainersWorkspacesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesGet 
    ::  Core.Text
       -- ^  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
    -> TagManagerAccountsContainersWorkspacesGet
newTagManagerAccountsContainersWorkspacesGet path =
  TagManagerAccountsContainersWorkspacesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesGet
         where
        type Rs TagManagerAccountsContainersWorkspacesGet =
             Workspace
        type Scopes TagManagerAccountsContainersWorkspacesGet
             = '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
        requestClient
          TagManagerAccountsContainersWorkspacesGet{..}
          = go path xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesGetResource)
                      Core.mempty
