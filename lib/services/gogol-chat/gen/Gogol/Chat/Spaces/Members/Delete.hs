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
-- Module      : Gogol.Chat.Spaces.Members.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- <https://developers.google.com/workspace/preview Developer Preview>: Deletes a membership. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.memberships@ or @chat.memberships.app@ authorization scope.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.delete@.
module Gogol.Chat.Spaces.Members.Delete
    (
    -- * Resource
      ChatSpacesMembersDeleteResource

    -- ** Constructing a Request
    , ChatSpacesMembersDelete (..)
    , newChatSpacesMembersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.members.delete@ method which the
-- 'ChatSpacesMembersDelete' request conforms to.
type ChatSpacesMembersDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Membership

-- | <https://developers.google.com/workspace/preview Developer Preview>: Deletes a membership. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.memberships@ or @chat.memberships.app@ authorization scope.
--
-- /See:/ 'newChatSpacesMembersDelete' smart constructor.
data ChatSpacesMembersDelete = ChatSpacesMembersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the membership to delete. Chat apps can delete human users\' or their own memberships. Chat apps can\'t delete other apps\' memberships. When deleting a human membership, requires the @chat.memberships@ scope and @spaces\/{space}\/members\/{member}@ format. When deleting an app membership, requires the @chat.memberships.app@ scope and @spaces\/{space}\/members\/app@ format. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersDelete' with the minimum fields required to make a request.
newChatSpacesMembersDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the membership to delete. Chat apps can delete human users\' or their own memberships. Chat apps can\'t delete other apps\' memberships. When deleting a human membership, requires the @chat.memberships@ scope and @spaces\/{space}\/members\/{member}@ format. When deleting an app membership, requires the @chat.memberships.app@ scope and @spaces\/{space}\/members\/app@ format. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@ See 'name'.
    -> ChatSpacesMembersDelete
newChatSpacesMembersDelete name =
  ChatSpacesMembersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersDelete
         where
        type Rs ChatSpacesMembersDelete = Membership
        type Scopes ChatSpacesMembersDelete =
             '[Chat'Memberships, Chat'Memberships'App]
        requestClient ChatSpacesMembersDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMembersDeleteResource)
                      Core.mempty

