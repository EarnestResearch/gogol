{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SecretManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores sensitive data such as API keys, passwords, and certificates.
-- Provides convenience while improving security.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference>
module Network.Google.SecretManager
    (
    -- * Service Configuration
      secretManagerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , SecretManagerAPI

    -- * Resources

    -- ** secretmanager.projects.locations.get
    , module Network.Google.Resource.SecretManager.Projects.Locations.Get

    -- ** secretmanager.projects.locations.list
    , module Network.Google.Resource.SecretManager.Projects.Locations.List

    -- ** secretmanager.projects.secrets.addVersion
    , module Network.Google.Resource.SecretManager.Projects.Secrets.AddVersion

    -- ** secretmanager.projects.secrets.create
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Create

    -- ** secretmanager.projects.secrets.delete
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Delete

    -- ** secretmanager.projects.secrets.get
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Get

    -- ** secretmanager.projects.secrets.getIamPolicy
    , module Network.Google.Resource.SecretManager.Projects.Secrets.GetIAMPolicy

    -- ** secretmanager.projects.secrets.list
    , module Network.Google.Resource.SecretManager.Projects.Secrets.List

    -- ** secretmanager.projects.secrets.patch
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Patch

    -- ** secretmanager.projects.secrets.setIamPolicy
    , module Network.Google.Resource.SecretManager.Projects.Secrets.SetIAMPolicy

    -- ** secretmanager.projects.secrets.testIamPermissions
    , module Network.Google.Resource.SecretManager.Projects.Secrets.TestIAMPermissions

    -- ** secretmanager.projects.secrets.versions.access
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Access

    -- ** secretmanager.projects.secrets.versions.destroy
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Destroy

    -- ** secretmanager.projects.secrets.versions.disable
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Disable

    -- ** secretmanager.projects.secrets.versions.enable
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Enable

    -- ** secretmanager.projects.secrets.versions.get
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Get

    -- ** secretmanager.projects.secrets.versions.list
    , module Network.Google.Resource.SecretManager.Projects.Secrets.Versions.List

    -- * Types

    -- ** ReplicaStatus
    , ReplicaStatus
    , replicaStatus
    , rsLocation
    , rsCustomerManagedEncryption

    -- ** ListSecretsResponse
    , ListSecretsResponse
    , listSecretsResponse
    , lsrNextPageToken
    , lsrSecrets
    , lsrTotalSize

    -- ** SecretVersion
    , SecretVersion
    , secretVersion
    , svState
    , svName
    , svDestroyTime
    , svReplicationStatus
    , svCreateTime

    -- ** Rotation
    , Rotation
    , rotation
    , rRotationPeriod
    , rNextRotationTime

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** DestroySecretVersionRequest
    , DestroySecretVersionRequest
    , destroySecretVersionRequest

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** CustomerManagedEncryptionStatus
    , CustomerManagedEncryptionStatus
    , customerManagedEncryptionStatus
    , cmesKmsKeyVersionName

    -- ** Automatic
    , Automatic
    , automatic
    , aCustomerManagedEncryption

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Empty
    , Empty
    , empty

    -- ** SecretPayload
    , SecretPayload
    , secretPayload
    , spData

    -- ** Replica
    , Replica
    , replica
    , rLocation
    , rCustomerManagedEncryption

    -- ** SecretLabels
    , SecretLabels
    , secretLabels
    , slAddtional

    -- ** SecretVersionState
    , SecretVersionState (..)

    -- ** AccessSecretVersionResponse
    , AccessSecretVersionResponse
    , accessSecretVersionResponse
    , asvrPayload
    , asvrName

    -- ** ListSecretVersionsResponse
    , ListSecretVersionsResponse
    , listSecretVersionsResponse
    , lsvrNextPageToken
    , lsvrVersions
    , lsvrTotalSize

    -- ** Secret
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

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** DisableSecretVersionRequest
    , DisableSecretVersionRequest
    , disableSecretVersionRequest

    -- ** Topic
    , Topic
    , topic
    , tName

    -- ** AutomaticStatus
    , AutomaticStatus
    , automaticStatus
    , asCustomerManagedEncryption

    -- ** AddSecretVersionRequest
    , AddSecretVersionRequest
    , addSecretVersionRequest
    , aPayload

    -- ** Replication
    , Replication
    , replication
    , rAutomatic
    , rUserManaged

    -- ** EnableSecretVersionRequest
    , EnableSecretVersionRequest
    , enableSecretVersionRequest

    -- ** UserManaged
    , UserManaged
    , userManaged
    , umReplicas

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** UserManagedStatus
    , UserManagedStatus
    , userManagedStatus
    , umsReplicas

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ReplicationStatus
    , ReplicationStatus
    , replicationStatus
    , rsAutomatic
    , rsUserManaged

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** CustomerManagedEncryption
    , CustomerManagedEncryption
    , customerManagedEncryption
    , cmeKmsKeyName

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.Resource.SecretManager.Projects.Locations.Get
import Network.Google.Resource.SecretManager.Projects.Locations.List
import Network.Google.Resource.SecretManager.Projects.Secrets.AddVersion
import Network.Google.Resource.SecretManager.Projects.Secrets.Create
import Network.Google.Resource.SecretManager.Projects.Secrets.Delete
import Network.Google.Resource.SecretManager.Projects.Secrets.Get
import Network.Google.Resource.SecretManager.Projects.Secrets.GetIAMPolicy
import Network.Google.Resource.SecretManager.Projects.Secrets.List
import Network.Google.Resource.SecretManager.Projects.Secrets.Patch
import Network.Google.Resource.SecretManager.Projects.Secrets.SetIAMPolicy
import Network.Google.Resource.SecretManager.Projects.Secrets.TestIAMPermissions
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Access
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Destroy
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Disable
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Enable
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.Get
import Network.Google.Resource.SecretManager.Projects.Secrets.Versions.List
import Network.Google.SecretManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Secret Manager API service.
type SecretManagerAPI =
     ProjectsSecretsVersionsAccessResource :<|>
       ProjectsSecretsVersionsListResource
       :<|> ProjectsSecretsVersionsGetResource
       :<|> ProjectsSecretsVersionsEnableResource
       :<|> ProjectsSecretsVersionsDisableResource
       :<|> ProjectsSecretsVersionsDestroyResource
       :<|> ProjectsSecretsListResource
       :<|> ProjectsSecretsAddVersionResource
       :<|> ProjectsSecretsGetIAMPolicyResource
       :<|> ProjectsSecretsPatchResource
       :<|> ProjectsSecretsGetResource
       :<|> ProjectsSecretsCreateResource
       :<|> ProjectsSecretsSetIAMPolicyResource
       :<|> ProjectsSecretsTestIAMPermissionsResource
       :<|> ProjectsSecretsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
