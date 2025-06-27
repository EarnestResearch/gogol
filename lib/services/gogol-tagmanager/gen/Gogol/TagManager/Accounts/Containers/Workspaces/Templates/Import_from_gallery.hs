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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Import_from_gallery
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a GTM Custom Template from Gallery.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.import_from_gallery@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Import_from_gallery
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesTemplatesImport_from_galleryResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.import_from_gallery@ method which the
-- 'TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery' request conforms to.
type TagManagerAccountsContainersWorkspacesTemplatesImport_from_galleryResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "parent" Core.Text Core.:>
           "templates:import_from_gallery" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "acknowledgePermissions" Core.Bool Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "galleryOwner" Core.Text Core.:>
                       Core.QueryParam "galleryRepository" Core.Text Core.:>
                         Core.QueryParam "gallerySha" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Post '[Core.JSON] CustomTemplate

-- | Imports a GTM Custom Template from Gallery.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery' smart constructor.
data TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery = TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Must be set to true to allow Gallery template to be imported into the workspace. If this bit is false, the import operation will fail.
    , acknowledgePermissions :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Owner of the Gallery template to import
    , galleryOwner :: (Core.Maybe Core.Text)
      -- | Repository of the Gallery template to import
    , galleryRepository :: (Core.Maybe Core.Text)
      -- | SHA version of the Gallery template to import. Defaulted to the latest SHA version if not provided.
    , gallerySha :: (Core.Maybe Core.Text)
      -- | GTM Workspace\'s API relative path.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery 
    :: 
                                                                      Core.Text
       -- ^  GTM Workspace\'s API relative path. See 'parent'.
    -> TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
newTagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
  parent
  = TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery{xgafv
                                                                         = Core.Nothing,
                                                                       accessToken = Core.Nothing,
                                                                       acknowledgePermissions =
                                                                         Core.Nothing,
                                                                       callback = Core.Nothing,
                                                                       galleryOwner = Core.Nothing,
                                                                       galleryRepository =
                                                                         Core.Nothing,
                                                                       gallerySha = Core.Nothing,
                                                                       parent = parent,
                                                                       uploadType = Core.Nothing,
                                                                       uploadProtocol =
                                                                         Core.Nothing}
instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
         where
        type Rs
               TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
             = CustomTemplate
        type Scopes
               TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesTemplatesImport_from_gallery{..}
          = go parent xgafv accessToken acknowledgePermissions callback
              galleryOwner
              galleryRepository
              gallerySha
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesTemplatesImport_from_galleryResource)
                      Core.mempty

