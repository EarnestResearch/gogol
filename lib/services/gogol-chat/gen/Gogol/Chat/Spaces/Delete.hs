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
-- Module      : Gogol.Chat.Spaces.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- <https://developers.google.com/workspace/preview Developer Preview>: Deletes a named space. Always performs a cascading delete, which means that the space\'s child resources—like messages posted in the space and memberships in the space—are also deleted. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> from a user who has permission to delete the space, and the @chat.delete@ scope.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.delete@.
module Gogol.Chat.Spaces.Delete
    (
    -- * Resource
      ChatSpacesDeleteResource

    -- ** Constructing a Request
    , ChatSpacesDelete (..)
    , newChatSpacesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.delete@ method which the
-- 'ChatSpacesDelete' request conforms to.
type ChatSpacesDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | <https://developers.google.com/workspace/preview Developer Preview>: Deletes a named space. Always performs a cascading delete, which means that the space\'s child resources—like messages posted in the space and memberships in the space—are also deleted. Requires <https://developers.google.com/chat/api/guides/auth/users user authentication> from a user who has permission to delete the space, and the @chat.delete@ scope.
--
-- /See:/ 'newChatSpacesDelete' smart constructor.
data ChatSpacesDelete = ChatSpacesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the space to delete. Format: @spaces\/{space}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesDelete' with the minimum fields required to make a request.
newChatSpacesDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the space to delete. Format: @spaces\/{space}@ See 'name'.
    -> ChatSpacesDelete
newChatSpacesDelete name =
  ChatSpacesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesDelete where
        type Rs ChatSpacesDelete = Empty
        type Scopes ChatSpacesDelete = '[Chat'Delete]
        requestClient ChatSpacesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesDeleteResource)
                      Core.mempty

