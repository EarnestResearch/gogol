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
-- Module      : Gogol.Chat.CustomEmojis.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom emojis visible to the authenticated user. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with one of the following <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scopes>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.customEmojis.list@.
module Gogol.Chat.CustomEmojis.List
    (
    -- * Resource
      ChatCustomEmojisListResource

    -- ** Constructing a Request
    , ChatCustomEmojisList (..)
    , newChatCustomEmojisList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.customEmojis.list@ method which the
-- 'ChatCustomEmojisList' request conforms to.
type ChatCustomEmojisListResource =
     "v1" Core.:>
       "customEmojis" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListCustomEmojisResponse

-- | Lists custom emojis visible to the authenticated user. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see <https://support.google.com/chat/answer/12800149 Learn about custom emojis in Google Chat> and <https://support.google.com/a/answer/12850085 Manage custom emoji permissions>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> with one of the following <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes authorization scopes>: - @https:\/\/www.googleapis.com\/auth\/chat.customemojis.readonly@ - @https:\/\/www.googleapis.com\/auth\/chat.customemojis@
--
-- /See:/ 'newChatCustomEmojisList' smart constructor.
data ChatCustomEmojisList = ChatCustomEmojisList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A query filter. Supports filtering by creator. To filter by creator, you must specify a valid value. Currently only @creator(\"users\/me\")@ and @NOT creator(\"users\/me\")@ are accepted to filter custom emojis by whether they were created by the calling user or not. For example, the following query returns custom emojis created by the caller: @creator(\"users\/me\")@ Invalid queries are rejected with an @INVALID_ARGUMENT@ error.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of custom emojis returned. The service can return fewer custom emojis than this value. If unspecified, the default value is 25. The maximum value is 200; values above 200 are changed to 200.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. (If resuming from a previous query.) A page token received from a previous list custom emoji call. Provide this to retrieve the subsequent page. When paginating, the filter value should match the call that provided the page token. Passing a different value might lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatCustomEmojisList' with the minimum fields required to make a request.
newChatCustomEmojisList 
    ::  ChatCustomEmojisList
newChatCustomEmojisList
  = ChatCustomEmojisList{xgafv = Core.Nothing,
                         accessToken = Core.Nothing, callback = Core.Nothing,
                         filter = Core.Nothing, pageSize = Core.Nothing,
                         pageToken = Core.Nothing, uploadType = Core.Nothing,
                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ChatCustomEmojisList where
        type Rs ChatCustomEmojisList = ListCustomEmojisResponse
        type Scopes ChatCustomEmojisList =
             '[Chat'Customemojis, Chat'Customemojis'Readonly]
        requestClient ChatCustomEmojisList{..}
          = go xgafv accessToken callback filter pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatCustomEmojisListResource)
                      Core.mempty

