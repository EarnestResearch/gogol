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
-- Module      : Gogol.Chat.Spaces.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- <https://developers.google.com/workspace/preview Developer Preview>: Updates a space. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.spaces@ scope.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.patch@.
module Gogol.Chat.Spaces.Patch
    (
    -- * Resource
      ChatSpacesPatchResource

    -- ** Constructing a Request
    , ChatSpacesPatch (..)
    , newChatSpacesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.patch@ method which the
-- 'ChatSpacesPatch' request conforms to.
type ChatSpacesPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Space Core.:>
                         Core.Patch '[Core.JSON] Space

-- | <https://developers.google.com/workspace/preview Developer Preview>: Updates a space. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> and the @chat.spaces@ scope.
--
-- /See:/ 'newChatSpacesPatch' smart constructor.
data ChatSpacesPatch = ChatSpacesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Resource name of the space. Format: @spaces\/{space}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Space
      -- | Required. The updated field paths, comma separated if there are multiple. Currently supported field paths: - @display_name@ (Only supports changing the display name of a space with the @SPACE@ type, or when also including the @space_type@ mask to change a @GROUP_CHAT@ space type to @SPACE@. Trying to update the display name of a @GROUP_CHAT@ or a @DIRECT_MESSAGE@ space results in an invalid argument error.) - @space_type@ (Only supports changing a @GROUP_CHAT@ space type to @SPACE@. Include @display_name@ together with @space_type@ in the update mask and ensure that the specified space has a non-empty display name and the @SPACE@ space type. Including the @space_type@ mask and the @SPACE@ type in the specified space when updating the display name is optional if the existing space already has the @SPACE@ type. Trying to update the space type in other ways results in an invalid argument error). - @space_details@ - @space_history_state@ (Supports
      -- <https://support.google.com/chat/answer/7664687 turning history on or off for the space> if <https://support.google.com/a/answer/7664184 the organization allows users to change their history setting>. Warning: mutually exclusive with all other field paths.)
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesPatch' with the minimum fields required to make a request.
newChatSpacesPatch 
    ::  Core.Text
       -- ^  Resource name of the space. Format: @spaces\/{space}@ See 'name'.
    -> Space
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatSpacesPatch
newChatSpacesPatch name payload =
  ChatSpacesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesPatch where
        type Rs ChatSpacesPatch = Space
        type Scopes ChatSpacesPatch = '[Chat'Spaces]
        requestClient ChatSpacesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesPatchResource)
                      Core.mempty

