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
-- Module      : Gogol.Admin.Directory.Customers.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.customers.get@.
module Gogol.Admin.Directory.Customers.Get
    (
    -- * Resource
      DirectoryCustomersGetResource

    -- ** Constructing a Request
    , DirectoryCustomersGet (..)
    , newDirectoryCustomersGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.customers.get@ method which the
-- 'DirectoryCustomersGet' request conforms to.
type DirectoryCustomersGetResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customers" Core.:>
             Core.Capture "customerKey" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Customer

-- | Retrieves a customer.
--
-- /See:/ 'newDirectoryCustomersGet' smart constructor.
data DirectoryCustomersGet = DirectoryCustomersGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Id of the customer to be retrieved
    , customerKey :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryCustomersGet' with the minimum fields required to make a request.
newDirectoryCustomersGet 
    ::  Core.Text
       -- ^  Id of the customer to be retrieved See 'customerKey'.
    -> DirectoryCustomersGet
newDirectoryCustomersGet customerKey =
  DirectoryCustomersGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerKey = customerKey
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryCustomersGet
         where
        type Rs DirectoryCustomersGet = Customer
        type Scopes DirectoryCustomersGet =
             '[Admin'Directory'Customer,
               Admin'Directory'Customer'Readonly]
        requestClient DirectoryCustomersGet{..}
          = go customerKey xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryCustomersGetResource)
                      Core.mempty
