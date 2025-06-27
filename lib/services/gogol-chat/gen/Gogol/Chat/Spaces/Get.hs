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
-- Module      : Gogol.Chat.Spaces.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about a space. For an example, see <https://developers.google.com/workspace/chat/get-spaces Get details about a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with one of the following authorization scopes: - @https:\/\/www.googleapis.com\/auth\/chat.bot@ - @https:\/\/www.googleapis.com\/auth\/chat.app.spaces@ with <https://support.google.com/a?p=chat-app-auth administrator approval> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> with one of the following authorization scopes: - @https:\/\/www.googleapis.com\/auth\/chat.spaces.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.spaces@ - User authentication grants administrator privileges when an administrator account authenticates, @use_admin_access@ is @true@, and one of the following authorization scopes is
-- used: - @https:\/\/www.googleapis.com\/auth\/chat.admin.spaces.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.admin.spaces@ App authentication has the following limitations: - @space.access_settings@ is only populated when using the @chat.app.spaces@ scope. - @space.predefind_permission_settings@ and @space.permission_settings@ are only populated when using the @chat.app.spaces@ scope, and only for spaces the app created.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.get@.
module Gogol.Chat.Spaces.Get
    (
    -- * Resource
      ChatSpacesGetResource

    -- ** Constructing a Request
    , ChatSpacesGet (..)
    , newChatSpacesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.get@ method which the
-- 'ChatSpacesGet' request conforms to.
type ChatSpacesGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "useAdminAccess" Core.Bool Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Space

-- | Returns details about a space. For an example, see <https://developers.google.com/workspace/chat/get-spaces Get details about a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with one of the following authorization scopes: - @https:\/\/www.googleapis.com\/auth\/chat.bot@ - @https:\/\/www.googleapis.com\/auth\/chat.app.spaces@ with <https://support.google.com/a?p=chat-app-auth administrator approval> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> with one of the following authorization scopes: - @https:\/\/www.googleapis.com\/auth\/chat.spaces.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.spaces@ - User authentication grants administrator privileges when an administrator account authenticates, @use_admin_access@ is @true@, and one of the following authorization scopes is
-- used: - @https:\/\/www.googleapis.com\/auth\/chat.admin.spaces.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.admin.spaces@ App authentication has the following limitations: - @space.access_settings@ is only populated when using the @chat.app.spaces@ scope. - @space.predefind_permission_settings@ and @space.permission_settings@ are only populated when using the @chat.app.spaces@ scope, and only for spaces the app created.
--
-- /See:/ 'newChatSpacesGet' smart constructor.
data ChatSpacesGet = ChatSpacesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the space, in the form @spaces\/{space}@. Format: @spaces\/{space}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires the @chat.admin.spaces@ or @chat.admin.spaces.readonly@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scopes>.
    , useAdminAccess :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesGet' with the minimum fields required to make a request.
newChatSpacesGet 
    ::  Core.Text
       -- ^  Required. Resource name of the space, in the form @spaces\/{space}@. Format: @spaces\/{space}@ See 'name'.
    -> ChatSpacesGet
newChatSpacesGet name
  = ChatSpacesGet{xgafv = Core.Nothing, accessToken = Core.Nothing,
                  callback = Core.Nothing, name = name, uploadType = Core.Nothing,
                  uploadProtocol = Core.Nothing, useAdminAccess = Core.Nothing}
instance Core.GoogleRequest ChatSpacesGet where
        type Rs ChatSpacesGet = Space
        type Scopes ChatSpacesGet =
             '[Chat'Admin'Spaces, Chat'Admin'Spaces'Readonly, Chat'App'Spaces,
               Chat'Bot, Chat'Spaces, Chat'Spaces'Readonly]
        requestClient ChatSpacesGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              useAdminAccess
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient (Core.Proxy :: Core.Proxy ChatSpacesGetResource)
                      Core.mempty

