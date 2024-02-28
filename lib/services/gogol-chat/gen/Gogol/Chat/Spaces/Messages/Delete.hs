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
-- Module      : Gogol.Chat.Spaces.Messages.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#delete_a_message Delete a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ authorization scope.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.delete@.
module Gogol.Chat.Spaces.Messages.Delete
    (
    -- * Resource
      ChatSpacesMessagesDeleteResource

    -- ** Constructing a Request
    , ChatSpacesMessagesDelete (..)
    , newChatSpacesMessagesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.messages.delete@ method which the
-- 'ChatSpacesMessagesDelete' request conforms to.
type ChatSpacesMessagesDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "force" Core.Bool Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#delete_a_message Delete a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ authorization scope.
--
-- /See:/ 'newChatSpacesMessagesDelete' smart constructor.
data ChatSpacesMessagesDelete = ChatSpacesMessagesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | When @true@, deleting a message also deletes its threaded replies. When @false@, if a message has threaded replies, deletion fails. Only applies when <https://developers.google.com/chat/api/guides/auth/users authenticating as a user>. Has no effect when [authenticating with a service account] (https:\/\/developers.google.com\/chat\/api\/guides\/auth\/service-accounts).
    , force :: (Core.Maybe Core.Bool)
      -- | Required. Resource name of the message that you want to delete, in the form @spaces\/*\/messages\/*@ Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesDelete' with the minimum fields required to make a request.
newChatSpacesMessagesDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the message that you want to delete, in the form @spaces\/*\/messages\/*@ Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@ See 'name'.
    -> ChatSpacesMessagesDelete
newChatSpacesMessagesDelete name =
  ChatSpacesMessagesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , force = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesDelete
         where
        type Rs ChatSpacesMessagesDelete = Empty
        type Scopes ChatSpacesMessagesDelete =
             '[Chat'Bot, Chat'Messages]
        requestClient ChatSpacesMessagesDelete{..}
          = go name xgafv accessToken callback force uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMessagesDeleteResource)
                      Core.mempty
