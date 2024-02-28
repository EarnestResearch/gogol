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
-- Module      : Gogol.SearchConsole.Webmasters.Sitemaps.Submit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.submit@.
module Gogol.SearchConsole.Webmasters.Sitemaps.Submit
    (
    -- * Resource
      WebmastersSitemapsSubmitResource

    -- ** Constructing a Request
    , WebmastersSitemapsSubmit (..)
    , newWebmastersSitemapsSubmit
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.submit@ method which the
-- 'WebmastersSitemapsSubmit' request conforms to.
type WebmastersSitemapsSubmitResource =
     "webmasters" Core.:>
       "v3" Core.:>
         "sites" Core.:>
           Core.Capture "siteUrl" Core.Text Core.:>
             "sitemaps" Core.:>
               Core.Capture "feedpath" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Put '[Core.JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'newWebmastersSitemapsSubmit' smart constructor.
data WebmastersSitemapsSubmit = WebmastersSitemapsSubmit
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The URL of the actual sitemap. For example: @http:\/\/www.example.com\/sitemap.xml@.
    , feedpath :: Core.Text
      -- | The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@.
    , siteUrl :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsSubmit' with the minimum fields required to make a request.
newWebmastersSitemapsSubmit 
    ::  Core.Text
       -- ^  The URL of the actual sitemap. For example: @http:\/\/www.example.com\/sitemap.xml@. See 'feedpath'.
    -> Core.Text
       -- ^  The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@. See 'siteUrl'.
    -> WebmastersSitemapsSubmit
newWebmastersSitemapsSubmit feedpath siteUrl =
  WebmastersSitemapsSubmit
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , feedpath = feedpath
    , siteUrl = siteUrl
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebmastersSitemapsSubmit
         where
        type Rs WebmastersSitemapsSubmit = ()
        type Scopes WebmastersSitemapsSubmit =
             '[Webmasters'FullControl]
        requestClient WebmastersSitemapsSubmit{..}
          = go siteUrl feedpath xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              searchConsoleService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy WebmastersSitemapsSubmitResource)
                      Core.mempty
