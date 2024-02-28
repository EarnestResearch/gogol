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
-- Module      : Gogol.Drive.Comments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.comments.delete@.
module Gogol.Drive.Comments.Delete
    (
    -- * Resource
      DriveCommentsDeleteResource

    -- ** Constructing a Request
    , DriveCommentsDelete (..)
    , newDriveCommentsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.comments.delete@ method which the
-- 'DriveCommentsDelete' request conforms to.
type DriveCommentsDeleteResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "comments" Core.:>
               Core.Capture "commentId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'newDriveCommentsDelete' smart constructor.
data DriveCommentsDelete = DriveCommentsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the comment.
    , commentId :: Core.Text
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveCommentsDelete' with the minimum fields required to make a request.
newDriveCommentsDelete 
    ::  Core.Text
       -- ^  The ID of the comment. See 'commentId'.
    -> Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> DriveCommentsDelete
newDriveCommentsDelete commentId fileId =
  DriveCommentsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , commentId = commentId
    , fileId = fileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveCommentsDelete where
        type Rs DriveCommentsDelete = ()
        type Scopes DriveCommentsDelete =
             '[Drive'FullControl, Drive'File]
        requestClient DriveCommentsDelete{..}
          = go fileId commentId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveCommentsDeleteResource)
                      Core.mempty
