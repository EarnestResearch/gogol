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
-- Module      : Gogol.Chat.Spaces.Members.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists memberships in a space. Requires <https://developers.google.com/chat/api/guides/auth/ authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.memberships@ or @chat.memberships.readonly@ authorization scope.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.list@.
module Gogol.Chat.Spaces.Members.List
    (
    -- * Resource
      ChatSpacesMembersListResource

    -- ** Constructing a Request
    , ChatSpacesMembersList (..)
    , newChatSpacesMembersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.members.list@ method which the
-- 'ChatSpacesMembersList' request conforms to.
type ChatSpacesMembersListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "members" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "showInvited" Core.Bool Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListMembershipsResponse

-- | Lists memberships in a space. Requires <https://developers.google.com/chat/api/guides/auth/ authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.memberships@ or @chat.memberships.readonly@ authorization scope.
--
-- /See:/ 'newChatSpacesMembersList' smart constructor.
data ChatSpacesMembersList = ChatSpacesMembersList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A query filter. You can filter memberships by a member\'s role (<https://developers.google.com/chat/api/reference/rest/v1/spaces.members#membershiprole role>) and type (<https://developers.google.com/chat/api/reference/rest/v1/User#type member.type>). To filter by role, set @role@ to @ROLE_MEMBER@ or @ROLE_MANAGER@. To filter by type, set @member.type@ to @HUMAN@ or @BOT@. To filter by both role and type, use the @AND@ operator. To filter by either role or type, use the @OR@ operator. For example, the following queries are valid: @role = \"ROLE_MANAGER\" OR role = \"ROLE_MEMBER\" member.type = \"HUMAN\" AND role = \"ROLE_MANAGER\"@ The following queries are invalid: @member.type = \"HUMAN\" AND member.type = \"BOT\" role = \"ROLE_MANAGER\" AND role = \"ROLE_MEMBER\"@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error.
    , filter :: (Core.Maybe Core.Text)
      -- | The maximum number of memberships to return. The service might return fewer than this value. If unspecified, at most 100 memberships are returned. The maximum value is 1,000. If you use a value more than 1,000, it\'s automatically changed to 1,000. Negative values return an @INVALID_ARGUMENT@ error.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous call to list memberships. Provide this parameter to retrieve the subsequent page. When paginating, all other parameters provided should match the call that provided the page token. Passing different values to the other parameters might lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the space for which to fetch a membership list. Format: spaces\/{space}
    , parent :: Core.Text
      -- | Optional. When @true@, also returns memberships associated with invited members, in addition to other types of memberships. If a filter is set, invited memberships that don\'t match the filter criteria aren\'t returned. Currently requires <https://developers.google.com/chat/api/guides/auth/users user authentication>.
    , showInvited :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersList' with the minimum fields required to make a request.
newChatSpacesMembersList 
    ::  Core.Text
       -- ^  Required. The resource name of the space for which to fetch a membership list. Format: spaces\/{space} See 'parent'.
    -> ChatSpacesMembersList
newChatSpacesMembersList parent =
  ChatSpacesMembersList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , showInvited = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersList
         where
        type Rs ChatSpacesMembersList =
             ListMembershipsResponse
        type Scopes ChatSpacesMembersList =
             '[Chat'Bot, Chat'Memberships,
               Chat'Memberships'Readonly]
        requestClient ChatSpacesMembersList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              showInvited
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMembersListResource)
                      Core.mempty

