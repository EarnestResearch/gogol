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
-- Module      : Gogol.Chat.CustomEmojis.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom emoji. By default, users can only delete custom emoji they created. <https://support.google.com/a/answer/12850085 Emoji managers> assigned by the administrator can delete any custom emoji in the organization. See <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat>. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with the <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scope>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.customEmojis.delete@.
module Gogol.Chat.CustomEmojis.Delete
    (
    -- * Resource
      ChatCustomEmojisDeleteResource

    -- ** Constructing a Request
    , ChatCustomEmojisDelete (..)
    , newChatCustomEmojisDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.customEmojis.delete@ method which the
-- 'ChatCustomEmojisDelete' request conforms to.
type ChatCustomEmojisDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a custom emoji. By default, users can only delete custom emoji they created. <https://support.google.com/a/answer/12850085 Emoji managers> assigned by the administrator can delete any custom emoji in the organization. See <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat>. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with the <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scope>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ 'newChatCustomEmojisDelete' smart constructor.
data ChatCustomEmojisDelete = ChatCustomEmojisDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the custom emoji to delete. Format: @customEmojis\/{customEmoji}@ You can use the emoji name as an alias for @{customEmoji}@. For example, @customEmojis\/:example-emoji:@ where @:example-emoji:@ is the emoji name for a custom emoji.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatCustomEmojisDelete' with the minimum fields required to make a request.
newChatCustomEmojisDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the custom emoji to delete. Format: @customEmojis\/{customEmoji}@ You can use the emoji name as an alias for @{customEmoji}@. For example, @customEmojis\/:example-emoji:@ where @:example-emoji:@ is the emoji name for a custom emoji. See 'name'.
    -> ChatCustomEmojisDelete
newChatCustomEmojisDelete name
  = ChatCustomEmojisDelete{xgafv = Core.Nothing,
                           accessToken = Core.Nothing, callback = Core.Nothing, name = name,
                           uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ChatCustomEmojisDelete where
        type Rs ChatCustomEmojisDelete = Empty
        type Scopes ChatCustomEmojisDelete = '[Chat'Customemojis]
        requestClient ChatCustomEmojisDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatCustomEmojisDeleteResource)
                      Core.mempty

