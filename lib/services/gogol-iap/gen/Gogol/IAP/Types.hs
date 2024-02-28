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
-- Module      : Gogol.IAP.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.IAP.Types
    (
    -- * Configuration
      iAPService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessDeniedPageSettings
    , AccessDeniedPageSettings (..)
    , newAccessDeniedPageSettings

    -- ** AccessSettings
    , AccessSettings (..)
    , newAccessSettings

    -- ** AllowedDomainsSettings
    , AllowedDomainsSettings (..)
    , newAllowedDomainsSettings

    -- ** ApplicationSettings
    , ApplicationSettings (..)
    , newApplicationSettings

    -- ** AttributePropagationSettings
    , AttributePropagationSettings (..)
    , newAttributePropagationSettings

    -- ** AttributePropagationSettings_OutputCredentialsItem
    , AttributePropagationSettings_OutputCredentialsItem (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Brand
    , Brand (..)
    , newBrand

    -- ** CorsSettings
    , CorsSettings (..)
    , newCorsSettings

    -- ** CsmSettings
    , CsmSettings (..)
    , newCsmSettings

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** GcipSettings
    , GcipSettings (..)
    , newGcipSettings

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest (..)
    , newGetIamPolicyRequest

    -- ** GetPolicyOptions
    , GetPolicyOptions (..)
    , newGetPolicyOptions

    -- ** IapSettings
    , IapSettings (..)
    , newIapSettings

    -- ** IdentityAwareProxyClient
    , IdentityAwareProxyClient (..)
    , newIdentityAwareProxyClient

    -- ** ListBrandsResponse
    , ListBrandsResponse (..)
    , newListBrandsResponse

    -- ** ListIdentityAwareProxyClientsResponse
    , ListIdentityAwareProxyClientsResponse (..)
    , newListIdentityAwareProxyClientsResponse

    -- ** ListTunnelDestGroupsResponse
    , ListTunnelDestGroupsResponse (..)
    , newListTunnelDestGroupsResponse

    -- ** OAuthSettings
    , OAuthSettings (..)
    , newOAuthSettings

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** PolicyDelegationSettings
    , PolicyDelegationSettings (..)
    , newPolicyDelegationSettings

    -- ** PolicyName
    , PolicyName (..)
    , newPolicyName

    -- ** ReauthSettings
    , ReauthSettings (..)
    , newReauthSettings

    -- ** ReauthSettings_Method
    , ReauthSettings_Method (..)

    -- ** ReauthSettings_PolicyType
    , ReauthSettings_PolicyType (..)

    -- ** ResetIdentityAwareProxyClientSecretRequest
    , ResetIdentityAwareProxyClientSecretRequest (..)
    , newResetIdentityAwareProxyClientSecretRequest

    -- ** Resource
    , Resource (..)
    , newResource

    -- ** Resource_Labels
    , Resource_Labels (..)
    , newResource_Labels

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** TunnelDestGroup
    , TunnelDestGroup (..)
    , newTunnelDestGroup
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAP.Internal.Product
import Gogol.IAP.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Identity-Aware Proxy API. This contains the host and root path used as a starting point for constructing service requests.
iAPService :: Core.ServiceConfig
iAPService
  = Core.defaultService (Core.ServiceId "iap:v1")
      "iap.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
