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
-- Module      : Gogol.CloudKMS.Organizations.UpdateKajPolicyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the KeyAccessJustificationsPolicyConfig for a given organization\/folder\/projects.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.organizations.updateKajPolicyConfig@.
module Gogol.CloudKMS.Organizations.UpdateKajPolicyConfig
    (
    -- * Resource
      CloudKMSOrganizationsUpdateKajPolicyConfigResource

    -- ** Constructing a Request
    , CloudKMSOrganizationsUpdateKajPolicyConfig (..)
    , newCloudKMSOrganizationsUpdateKajPolicyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.organizations.updateKajPolicyConfig@ method which the
-- 'CloudKMSOrganizationsUpdateKajPolicyConfig' request conforms to.
type CloudKMSOrganizationsUpdateKajPolicyConfigResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] KeyAccessJustificationsPolicyConfig
                         Core.:> Core.Patch '[Core.JSON] KeyAccessJustificationsPolicyConfig

-- | Updates the KeyAccessJustificationsPolicyConfig for a given organization\/folder\/projects.
--
-- /See:/ 'newCloudKMSOrganizationsUpdateKajPolicyConfig' smart constructor.
data CloudKMSOrganizationsUpdateKajPolicyConfig = CloudKMSOrganizationsUpdateKajPolicyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of \"{organizations|folders|projects}\/*\/kajPolicyConfig\".
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: KeyAccessJustificationsPolicyConfig
      -- | Optional. The list of fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSOrganizationsUpdateKajPolicyConfig' with the minimum fields required to make a request.
newCloudKMSOrganizationsUpdateKajPolicyConfig 
    :: 
                                              Core.Text
       -- ^  Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of \"{organizations|folders|projects}\/*\/kajPolicyConfig\". See 'name'.
    -> KeyAccessJustificationsPolicyConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSOrganizationsUpdateKajPolicyConfig
newCloudKMSOrganizationsUpdateKajPolicyConfig name payload
  = CloudKMSOrganizationsUpdateKajPolicyConfig{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               name = name, payload = payload,
                                               updateMask = Core.Nothing, uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudKMSOrganizationsUpdateKajPolicyConfig
         where
        type Rs CloudKMSOrganizationsUpdateKajPolicyConfig =
             KeyAccessJustificationsPolicyConfig
        type Scopes CloudKMSOrganizationsUpdateKajPolicyConfig =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient CloudKMSOrganizationsUpdateKajPolicyConfig{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudKMSOrganizationsUpdateKajPolicyConfigResource)
                      Core.mempty

