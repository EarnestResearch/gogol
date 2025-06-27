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
-- Module      : Gogol.Mirror.Timeline.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.patch@.
module Gogol.Mirror.Timeline.Patch
    (
    -- * Resource
      MirrorTimelinePatchResource

    -- ** Constructing a Request
    , MirrorTimelinePatch (..)
    , newMirrorTimelinePatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.patch@ method which the
-- 'MirrorTimelinePatch' request conforms to.
type MirrorTimelinePatchResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.Capture "id" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON] TimelineItem Core.:>
                 Core.Patch '[Core.JSON] TimelineItem

-- | Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ 'newMirrorTimelinePatch' smart constructor.
data MirrorTimelinePatch = MirrorTimelinePatch
    {
      -- | The ID of the timeline item.
      id :: Core.Text
      -- | Multipart request metadata.
    , payload :: TimelineItem
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelinePatch' with the minimum fields required to make a request.
newMirrorTimelinePatch 
    :: 
                       Core.Text
       -- ^  The ID of the timeline item. See 'id'.
    -> TimelineItem
       -- ^  Multipart request metadata. See 'payload'.
    -> MirrorTimelinePatch
newMirrorTimelinePatch id payload
  = MirrorTimelinePatch{id = id, payload = payload}
instance Core.GoogleRequest MirrorTimelinePatch where
        type Rs MirrorTimelinePatch = TimelineItem
        type Scopes MirrorTimelinePatch = '[Glass'Location, Glass'Timeline]
        requestClient MirrorTimelinePatch{..}
          = go id (Core.Just Core.AltJSON) payload mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy MirrorTimelinePatchResource)
                      Core.mempty

