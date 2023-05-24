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
-- Module      : Gogol.Chat.Spaces.Members.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- <https://developers.google.com/workspace/preview Developer Preview>: Creates a human membership or app membership for the calling app. Creating memberships for other apps isn\'t supported. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.memberships@ (for human membership) or @chat.memberships.app@ (for app membership) scope. To specify the member to add, set the @membership.member.name@ in the @CreateMembershipRequest@: - To add the calling app to the space, use @users\/app@. - To add a human user, use @users\/{user}@, where @{user}@ is either the @{person_id}@ for the <https://developers.google.com/people/api/rest/v1/people person> from the People API, or the @id@ for the <https://developers.google.com/admin-sdk/directory/reference/rest/v1/users user> in the Directory API. For example, if the People API @Person@ @resourceName@ is @people\/123456789@, you can add the user to the space by setting the @membership.member.name@ to @users\/123456789@.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.create@.
module Gogol.Chat.Spaces.Members.Create
    (
    -- * Resource
      ChatSpacesMembersCreateResource

    -- ** Constructing a Request
    , ChatSpacesMembersCreate (..)
    , newChatSpacesMembersCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.members.create@ method which the
-- 'ChatSpacesMembersCreate' request conforms to.
type ChatSpacesMembersCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "members" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Membership Core.:>
                         Core.Post '[Core.JSON] Membership

-- | <https://developers.google.com/workspace/preview Developer Preview>: Creates a human membership or app membership for the calling app. Creating memberships for other apps isn\'t supported. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.memberships@ (for human membership) or @chat.memberships.app@ (for app membership) scope. To specify the member to add, set the @membership.member.name@ in the @CreateMembershipRequest@: - To add the calling app to the space, use @users\/app@. - To add a human user, use @users\/{user}@, where @{user}@ is either the @{person_id}@ for the <https://developers.google.com/people/api/rest/v1/people person> from the People API, or the @id@ for the <https://developers.google.com/admin-sdk/directory/reference/rest/v1/users user> in the Directory API. For example, if the People API @Person@ @resourceName@ is @people\/123456789@, you can add the user to the space by setting the @membership.member.name@ to @users\/123456789@.
--
-- /See:/ 'newChatSpacesMembersCreate' smart constructor.
data ChatSpacesMembersCreate = ChatSpacesMembersCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the space for which to create the membership. Format: spaces\/{space}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Membership
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersCreate' with the minimum fields required to make a request.
newChatSpacesMembersCreate 
    ::  Core.Text
       -- ^  Required. The resource name of the space for which to create the membership. Format: spaces\/{space} See 'parent'.
    -> Membership
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatSpacesMembersCreate
newChatSpacesMembersCreate parent payload =
  ChatSpacesMembersCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersCreate
         where
        type Rs ChatSpacesMembersCreate = Membership
        type Scopes ChatSpacesMembersCreate =
             '[Chat'Memberships, Chat'Memberships'App]
        requestClient ChatSpacesMembersCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMembersCreateResource)
                      Core.mempty

