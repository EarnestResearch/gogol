{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecretManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecretManager.Types
    (
    -- * Service Configuration
      secretManagerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ReplicaStatus
    , ReplicaStatus
    , replicaStatus
    , rsLocation
    , rsCustomerManagedEncryption

    -- * ListSecretsResponse
    , ListSecretsResponse
    , listSecretsResponse
    , lsrNextPageToken
    , lsrSecrets
    , lsrTotalSize

    -- * SecretVersion
    , SecretVersion
    , secretVersion
    , svState
    , svName
    , svDestroyTime
    , svReplicationStatus
    , svCreateTime

    -- * Rotation
    , Rotation
    , rotation
    , rRotationPeriod
    , rNextRotationTime

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * DestroySecretVersionRequest
    , DestroySecretVersionRequest
    , destroySecretVersionRequest

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * CustomerManagedEncryptionStatus
    , CustomerManagedEncryptionStatus
    , customerManagedEncryptionStatus
    , cmesKmsKeyVersionName

    -- * Automatic
    , Automatic
    , automatic
    , aCustomerManagedEncryption

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Empty
    , Empty
    , empty

    -- * SecretPayload
    , SecretPayload
    , secretPayload
    , spData

    -- * Replica
    , Replica
    , replica
    , rLocation
    , rCustomerManagedEncryption

    -- * SecretLabels
    , SecretLabels
    , secretLabels
    , slAddtional

    -- * SecretVersionState
    , SecretVersionState (..)

    -- * AccessSecretVersionResponse
    , AccessSecretVersionResponse
    , accessSecretVersionResponse
    , asvrPayload
    , asvrName

    -- * ListSecretVersionsResponse
    , ListSecretVersionsResponse
    , listSecretVersionsResponse
    , lsvrNextPageToken
    , lsvrVersions
    , lsvrTotalSize

    -- * Secret
    , Secret
    , secret
    , sTtl
    , sRotation
    , sTopics
    , sReplication
    , sName
    , sLabels
    , sExpireTime
    , sCreateTime

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * DisableSecretVersionRequest
    , DisableSecretVersionRequest
    , disableSecretVersionRequest

    -- * Topic
    , Topic
    , topic
    , tName

    -- * AutomaticStatus
    , AutomaticStatus
    , automaticStatus
    , asCustomerManagedEncryption

    -- * AddSecretVersionRequest
    , AddSecretVersionRequest
    , addSecretVersionRequest
    , aPayload

    -- * Replication
    , Replication
    , replication
    , rAutomatic
    , rUserManaged

    -- * EnableSecretVersionRequest
    , EnableSecretVersionRequest
    , enableSecretVersionRequest

    -- * UserManaged
    , UserManaged
    , userManaged
    , umReplicas

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * UserManagedStatus
    , UserManagedStatus
    , userManagedStatus
    , umsReplicas

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ReplicationStatus
    , ReplicationStatus
    , replicationStatus
    , rsAutomatic
    , rsUserManaged

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * CustomerManagedEncryption
    , CustomerManagedEncryption
    , customerManagedEncryption
    , cmeKmsKeyName

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.SecretManager.Types.Product
import Network.Google.SecretManager.Types.Sum

-- | Default request referring to version 'v1' of the Secret Manager API. This contains the host and root path used as a starting point for constructing service requests.
secretManagerService :: ServiceConfig
secretManagerService
  = defaultService (ServiceId "secretmanager:v1")
      "secretmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
