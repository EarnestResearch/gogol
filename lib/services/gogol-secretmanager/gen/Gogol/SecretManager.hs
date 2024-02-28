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
-- Module      : Gogol.SecretManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores sensitive data such as API keys, passwords, and certificates. Provides convenience while improving security.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference>
module Gogol.SecretManager
    (
    -- * Configuration
      secretManagerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** secretmanager.projects.locations.get
    , SecretManagerProjectsLocationsGetResource
    , SecretManagerProjectsLocationsGet (..)
    , newSecretManagerProjectsLocationsGet

    -- ** secretmanager.projects.locations.list
    , SecretManagerProjectsLocationsListResource
    , SecretManagerProjectsLocationsList (..)
    , newSecretManagerProjectsLocationsList

    -- ** secretmanager.projects.secrets.addVersion
    , SecretManagerProjectsSecretsAddVersionResource
    , SecretManagerProjectsSecretsAddVersion (..)
    , newSecretManagerProjectsSecretsAddVersion

    -- ** secretmanager.projects.secrets.create
    , SecretManagerProjectsSecretsCreateResource
    , SecretManagerProjectsSecretsCreate (..)
    , newSecretManagerProjectsSecretsCreate

    -- ** secretmanager.projects.secrets.delete
    , SecretManagerProjectsSecretsDeleteResource
    , SecretManagerProjectsSecretsDelete (..)
    , newSecretManagerProjectsSecretsDelete

    -- ** secretmanager.projects.secrets.get
    , SecretManagerProjectsSecretsGetResource
    , SecretManagerProjectsSecretsGet (..)
    , newSecretManagerProjectsSecretsGet

    -- ** secretmanager.projects.secrets.getIamPolicy
    , SecretManagerProjectsSecretsGetIamPolicyResource
    , SecretManagerProjectsSecretsGetIamPolicy (..)
    , newSecretManagerProjectsSecretsGetIamPolicy

    -- ** secretmanager.projects.secrets.list
    , SecretManagerProjectsSecretsListResource
    , SecretManagerProjectsSecretsList (..)
    , newSecretManagerProjectsSecretsList

    -- ** secretmanager.projects.secrets.patch
    , SecretManagerProjectsSecretsPatchResource
    , SecretManagerProjectsSecretsPatch (..)
    , newSecretManagerProjectsSecretsPatch

    -- ** secretmanager.projects.secrets.setIamPolicy
    , SecretManagerProjectsSecretsSetIamPolicyResource
    , SecretManagerProjectsSecretsSetIamPolicy (..)
    , newSecretManagerProjectsSecretsSetIamPolicy

    -- ** secretmanager.projects.secrets.testIamPermissions
    , SecretManagerProjectsSecretsTestIamPermissionsResource
    , SecretManagerProjectsSecretsTestIamPermissions (..)
    , newSecretManagerProjectsSecretsTestIamPermissions

    -- ** secretmanager.projects.secrets.versions.access
    , SecretManagerProjectsSecretsVersionsAccessResource
    , SecretManagerProjectsSecretsVersionsAccess (..)
    , newSecretManagerProjectsSecretsVersionsAccess

    -- ** secretmanager.projects.secrets.versions.destroy
    , SecretManagerProjectsSecretsVersionsDestroyResource
    , SecretManagerProjectsSecretsVersionsDestroy (..)
    , newSecretManagerProjectsSecretsVersionsDestroy

    -- ** secretmanager.projects.secrets.versions.disable
    , SecretManagerProjectsSecretsVersionsDisableResource
    , SecretManagerProjectsSecretsVersionsDisable (..)
    , newSecretManagerProjectsSecretsVersionsDisable

    -- ** secretmanager.projects.secrets.versions.enable
    , SecretManagerProjectsSecretsVersionsEnableResource
    , SecretManagerProjectsSecretsVersionsEnable (..)
    , newSecretManagerProjectsSecretsVersionsEnable

    -- ** secretmanager.projects.secrets.versions.get
    , SecretManagerProjectsSecretsVersionsGetResource
    , SecretManagerProjectsSecretsVersionsGet (..)
    , newSecretManagerProjectsSecretsVersionsGet

    -- ** secretmanager.projects.secrets.versions.list
    , SecretManagerProjectsSecretsVersionsListResource
    , SecretManagerProjectsSecretsVersionsList (..)
    , newSecretManagerProjectsSecretsVersionsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessSecretVersionResponse
    , AccessSecretVersionResponse (..)
    , newAccessSecretVersionResponse

    -- ** AddSecretVersionRequest
    , AddSecretVersionRequest (..)
    , newAddSecretVersionRequest

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Automatic
    , Automatic (..)
    , newAutomatic

    -- ** AutomaticStatus
    , AutomaticStatus (..)
    , newAutomaticStatus

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** CustomerManagedEncryption
    , CustomerManagedEncryption (..)
    , newCustomerManagedEncryption

    -- ** CustomerManagedEncryptionStatus
    , CustomerManagedEncryptionStatus (..)
    , newCustomerManagedEncryptionStatus

    -- ** DestroySecretVersionRequest
    , DestroySecretVersionRequest (..)
    , newDestroySecretVersionRequest

    -- ** DisableSecretVersionRequest
    , DisableSecretVersionRequest (..)
    , newDisableSecretVersionRequest

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EnableSecretVersionRequest
    , EnableSecretVersionRequest (..)
    , newEnableSecretVersionRequest

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListSecretVersionsResponse
    , ListSecretVersionsResponse (..)
    , newListSecretVersionsResponse

    -- ** ListSecretsResponse
    , ListSecretsResponse (..)
    , newListSecretsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Replica
    , Replica (..)
    , newReplica

    -- ** ReplicaStatus
    , ReplicaStatus (..)
    , newReplicaStatus

    -- ** Replication
    , Replication (..)
    , newReplication

    -- ** ReplicationStatus
    , ReplicationStatus (..)
    , newReplicationStatus

    -- ** Rotation
    , Rotation (..)
    , newRotation

    -- ** Secret
    , Secret (..)
    , newSecret

    -- ** Secret_Annotations
    , Secret_Annotations (..)
    , newSecret_Annotations

    -- ** Secret_Labels
    , Secret_Labels (..)
    , newSecret_Labels

    -- ** Secret_VersionAliases
    , Secret_VersionAliases (..)
    , newSecret_VersionAliases

    -- ** SecretPayload
    , SecretPayload (..)
    , newSecretPayload

    -- ** SecretVersion
    , SecretVersion (..)
    , newSecretVersion

    -- ** SecretVersion_State
    , SecretVersion_State (..)

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** Topic
    , Topic (..)
    , newTopic

    -- ** UserManaged
    , UserManaged (..)
    , newUserManaged

    -- ** UserManagedStatus
    , UserManagedStatus (..)
    , newUserManagedStatus
    ) where

import Gogol.SecretManager.Projects.Locations.Get
import Gogol.SecretManager.Projects.Locations.List
import Gogol.SecretManager.Projects.Secrets.AddVersion
import Gogol.SecretManager.Projects.Secrets.Create
import Gogol.SecretManager.Projects.Secrets.Delete
import Gogol.SecretManager.Projects.Secrets.Get
import Gogol.SecretManager.Projects.Secrets.GetIamPolicy
import Gogol.SecretManager.Projects.Secrets.List
import Gogol.SecretManager.Projects.Secrets.Patch
import Gogol.SecretManager.Projects.Secrets.SetIamPolicy
import Gogol.SecretManager.Projects.Secrets.TestIamPermissions
import Gogol.SecretManager.Projects.Secrets.Versions.Access
import Gogol.SecretManager.Projects.Secrets.Versions.Destroy
import Gogol.SecretManager.Projects.Secrets.Versions.Disable
import Gogol.SecretManager.Projects.Secrets.Versions.Enable
import Gogol.SecretManager.Projects.Secrets.Versions.Get
import Gogol.SecretManager.Projects.Secrets.Versions.List
import Gogol.SecretManager.Types
