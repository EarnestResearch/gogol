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
-- Module      : Gogol.DLP.Projects.InspectTemplates.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the InspectTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.patch@.
module Gogol.DLP.Projects.InspectTemplates.Patch
    (
    -- * Resource
      DLPProjectsInspectTemplatesPatchResource

    -- ** Constructing a Request
    , DLPProjectsInspectTemplatesPatch (..)
    , newDLPProjectsInspectTemplatesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.inspectTemplates.patch@ method which the
-- 'DLPProjectsInspectTemplatesPatch' request conforms to.
type DLPProjectsInspectTemplatesPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateInspectTemplateRequest
                       Core.:>
                       Core.Patch '[Core.JSON]
                         GooglePrivacyDlpV2InspectTemplate

-- | Updates the InspectTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'newDLPProjectsInspectTemplatesPatch' smart constructor.
data DLPProjectsInspectTemplatesPatch = DLPProjectsInspectTemplatesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of organization and inspectTemplate to be updated, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateInspectTemplateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsInspectTemplatesPatch' with the minimum fields required to make a request.
newDLPProjectsInspectTemplatesPatch 
    ::  Core.Text
       -- ^  Required. Resource name of organization and inspectTemplate to be updated, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342. See 'name'.
    -> GooglePrivacyDlpV2UpdateInspectTemplateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsInspectTemplatesPatch
newDLPProjectsInspectTemplatesPatch name payload =
  DLPProjectsInspectTemplatesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsInspectTemplatesPatch
         where
        type Rs DLPProjectsInspectTemplatesPatch =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes DLPProjectsInspectTemplatesPatch =
             '[CloudPlatform'FullControl]
        requestClient DLPProjectsInspectTemplatesPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DLPProjectsInspectTemplatesPatchResource)
                      Core.mempty
