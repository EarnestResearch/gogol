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
-- Module      : Gogol.Chat.CustomEmojis.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom emoji. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with the <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scope>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.customEmojis.create@.
module Gogol.Chat.CustomEmojis.Create
    (
    -- * Resource
      ChatCustomEmojisCreateResource

    -- ** Constructing a Request
    , ChatCustomEmojisCreate (..)
    , newChatCustomEmojisCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.customEmojis.create@ method which the
-- 'ChatCustomEmojisCreate' request conforms to.
type ChatCustomEmojisCreateResource =
     "v1" Core.:>
       "customEmojis" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CustomEmoji Core.:>
                       Core.Post '[Core.JSON] CustomEmoji

-- | Creates a custom emoji. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with the <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scope>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ 'newChatCustomEmojisCreate' smart constructor.
data ChatCustomEmojisCreate = ChatCustomEmojisCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: CustomEmoji
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatCustomEmojisCreate' with the minimum fields required to make a request.
newChatCustomEmojisCreate 
    ::  CustomEmoji
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatCustomEmojisCreate
newChatCustomEmojisCreate payload
  = ChatCustomEmojisCreate{xgafv = Core.Nothing,
                           accessToken = Core.Nothing, callback = Core.Nothing,
                           payload = payload, uploadType = Core.Nothing,
                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ChatCustomEmojisCreate where
        type Rs ChatCustomEmojisCreate = CustomEmoji
        type Scopes ChatCustomEmojisCreate = '[Chat'Customemojis]
        requestClient ChatCustomEmojisCreate{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatCustomEmojisCreateResource)
                      Core.mempty

