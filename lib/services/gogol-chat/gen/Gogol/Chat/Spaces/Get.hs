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
-- Module      : Gogol.Chat.Spaces.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a space. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.spaces@ or @chat.spaces.readonly@ authorization scope.
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
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Space

-- | Returns a space. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.spaces@ or @chat.spaces.readonly@ authorization scope.
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
      -- | Required. Resource name of the space, in the form \"spaces\/*\". Format: @spaces\/{space}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesGet' with the minimum fields required to make a request.
newChatSpacesGet 
    ::  Core.Text
       -- ^  Required. Resource name of the space, in the form \"spaces\/*\". Format: @spaces\/{space}@ See 'name'.
    -> ChatSpacesGet
newChatSpacesGet name =
  ChatSpacesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesGet where
        type Rs ChatSpacesGet = Space
        type Scopes ChatSpacesGet =
             '[Chat'Bot, Chat'Spaces, Chat'Spaces'Readonly]
        requestClient ChatSpacesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesGetResource)
                      Core.mempty

