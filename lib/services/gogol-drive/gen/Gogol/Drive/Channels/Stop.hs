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
-- Module      : Gogol.Drive.Channels.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops watching resources through this channel.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.channels.stop@.
module Gogol.Drive.Channels.Stop
    (
    -- * Resource
      DriveChannelsStopResource

    -- ** Constructing a Request
    , DriveChannelsStop (..)
    , newDriveChannelsStop
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.channels.stop@ method which the
-- 'DriveChannelsStop' request conforms to.
type DriveChannelsStopResource =
     "drive" Core.:>
       "v3" Core.:>
         "channels" Core.:>
           "stop" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Channel Core.:>
                           Core.Post '[Core.JSON] ()

-- | Stops watching resources through this channel.
--
-- /See:/ 'newDriveChannelsStop' smart constructor.
data DriveChannelsStop = DriveChannelsStop
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Channel
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveChannelsStop' with the minimum fields required to make a request.
newDriveChannelsStop 
    ::  Channel
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveChannelsStop
newDriveChannelsStop payload =
  DriveChannelsStop
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveChannelsStop where
        type Rs DriveChannelsStop = ()
        type Scopes DriveChannelsStop =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Metadata, Drive'Metadata'Readonly,
               Drive'Photos'Readonly, Drive'Readonly]
        requestClient DriveChannelsStop{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveChannelsStopResource)
                      Core.mempty

