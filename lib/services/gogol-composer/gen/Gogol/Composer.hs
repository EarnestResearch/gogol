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
-- Module      : Gogol.Composer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Apache Airflow environments on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference>
module Gogol.Composer
    (
    -- * Configuration
      composerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** composer.projects.locations.environments.create
    , ComposerProjectsLocationsEnvironmentsCreateResource
    , ComposerProjectsLocationsEnvironmentsCreate (..)
    , newComposerProjectsLocationsEnvironmentsCreate

    -- ** composer.projects.locations.environments.databaseFailover
    , ComposerProjectsLocationsEnvironmentsDatabaseFailoverResource
    , ComposerProjectsLocationsEnvironmentsDatabaseFailover (..)
    , newComposerProjectsLocationsEnvironmentsDatabaseFailover

    -- ** composer.projects.locations.environments.delete
    , ComposerProjectsLocationsEnvironmentsDeleteResource
    , ComposerProjectsLocationsEnvironmentsDelete (..)
    , newComposerProjectsLocationsEnvironmentsDelete

    -- ** composer.projects.locations.environments.executeAirflowCommand
    , ComposerProjectsLocationsEnvironmentsExecuteAirflowCommandResource
    , ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand (..)
    , newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand

    -- ** composer.projects.locations.environments.fetchDatabaseProperties
    , ComposerProjectsLocationsEnvironmentsFetchDatabasePropertiesResource
    , ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties (..)
    , newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties

    -- ** composer.projects.locations.environments.get
    , ComposerProjectsLocationsEnvironmentsGetResource
    , ComposerProjectsLocationsEnvironmentsGet (..)
    , newComposerProjectsLocationsEnvironmentsGet

    -- ** composer.projects.locations.environments.list
    , ComposerProjectsLocationsEnvironmentsListResource
    , ComposerProjectsLocationsEnvironmentsList (..)
    , newComposerProjectsLocationsEnvironmentsList

    -- ** composer.projects.locations.environments.loadSnapshot
    , ComposerProjectsLocationsEnvironmentsLoadSnapshotResource
    , ComposerProjectsLocationsEnvironmentsLoadSnapshot (..)
    , newComposerProjectsLocationsEnvironmentsLoadSnapshot

    -- ** composer.projects.locations.environments.patch
    , ComposerProjectsLocationsEnvironmentsPatchResource
    , ComposerProjectsLocationsEnvironmentsPatch (..)
    , newComposerProjectsLocationsEnvironmentsPatch

    -- ** composer.projects.locations.environments.pollAirflowCommand
    , ComposerProjectsLocationsEnvironmentsPollAirflowCommandResource
    , ComposerProjectsLocationsEnvironmentsPollAirflowCommand (..)
    , newComposerProjectsLocationsEnvironmentsPollAirflowCommand

    -- ** composer.projects.locations.environments.saveSnapshot
    , ComposerProjectsLocationsEnvironmentsSaveSnapshotResource
    , ComposerProjectsLocationsEnvironmentsSaveSnapshot (..)
    , newComposerProjectsLocationsEnvironmentsSaveSnapshot

    -- ** composer.projects.locations.environments.stopAirflowCommand
    , ComposerProjectsLocationsEnvironmentsStopAirflowCommandResource
    , ComposerProjectsLocationsEnvironmentsStopAirflowCommand (..)
    , newComposerProjectsLocationsEnvironmentsStopAirflowCommand

    -- ** composer.projects.locations.imageVersions.list
    , ComposerProjectsLocationsImageVersionsListResource
    , ComposerProjectsLocationsImageVersionsList (..)
    , newComposerProjectsLocationsImageVersionsList

    -- ** composer.projects.locations.operations.delete
    , ComposerProjectsLocationsOperationsDeleteResource
    , ComposerProjectsLocationsOperationsDelete (..)
    , newComposerProjectsLocationsOperationsDelete

    -- ** composer.projects.locations.operations.get
    , ComposerProjectsLocationsOperationsGetResource
    , ComposerProjectsLocationsOperationsGet (..)
    , newComposerProjectsLocationsOperationsGet

    -- ** composer.projects.locations.operations.list
    , ComposerProjectsLocationsOperationsListResource
    , ComposerProjectsLocationsOperationsList (..)
    , newComposerProjectsLocationsOperationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AllowedIpRange
    , AllowedIpRange (..)
    , newAllowedIpRange

    -- ** CheckUpgradeResponse
    , CheckUpgradeResponse (..)
    , newCheckUpgradeResponse

    -- ** CheckUpgradeResponse_ContainsPypiModulesConflict
    , CheckUpgradeResponse_ContainsPypiModulesConflict (..)

    -- ** CheckUpgradeResponse_PypiDependencies
    , CheckUpgradeResponse_PypiDependencies (..)
    , newCheckUpgradeResponse_PypiDependencies

    -- ** CidrBlock
    , CidrBlock (..)
    , newCidrBlock

    -- ** DatabaseConfig
    , DatabaseConfig (..)
    , newDatabaseConfig

    -- ** DatabaseFailoverRequest
    , DatabaseFailoverRequest (..)
    , newDatabaseFailoverRequest

    -- ** DatabaseFailoverResponse
    , DatabaseFailoverResponse (..)
    , newDatabaseFailoverResponse

    -- ** Date
    , Date (..)
    , newDate

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EncryptionConfig
    , EncryptionConfig (..)
    , newEncryptionConfig

    -- ** Environment
    , Environment (..)
    , newEnvironment

    -- ** Environment_Labels
    , Environment_Labels (..)
    , newEnvironment_Labels

    -- ** Environment_State
    , Environment_State (..)

    -- ** EnvironmentConfig
    , EnvironmentConfig (..)
    , newEnvironmentConfig

    -- ** EnvironmentConfig_EnvironmentSize
    , EnvironmentConfig_EnvironmentSize (..)

    -- ** EnvironmentConfig_ResilienceMode
    , EnvironmentConfig_ResilienceMode (..)

    -- ** ExecuteAirflowCommandRequest
    , ExecuteAirflowCommandRequest (..)
    , newExecuteAirflowCommandRequest

    -- ** ExecuteAirflowCommandResponse
    , ExecuteAirflowCommandResponse (..)
    , newExecuteAirflowCommandResponse

    -- ** ExitInfo
    , ExitInfo (..)
    , newExitInfo

    -- ** FetchDatabasePropertiesResponse
    , FetchDatabasePropertiesResponse (..)
    , newFetchDatabasePropertiesResponse

    -- ** IPAllocationPolicy
    , IPAllocationPolicy (..)
    , newIPAllocationPolicy

    -- ** ImageVersion
    , ImageVersion (..)
    , newImageVersion

    -- ** Line
    , Line (..)
    , newLine

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse (..)
    , newListEnvironmentsResponse

    -- ** ListImageVersionsResponse
    , ListImageVersionsResponse (..)
    , newListImageVersionsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** LoadSnapshotRequest
    , LoadSnapshotRequest (..)
    , newLoadSnapshotRequest

    -- ** LoadSnapshotResponse
    , LoadSnapshotResponse (..)
    , newLoadSnapshotResponse

    -- ** MaintenanceWindow
    , MaintenanceWindow (..)
    , newMaintenanceWindow

    -- ** MasterAuthorizedNetworksConfig
    , MasterAuthorizedNetworksConfig (..)
    , newMasterAuthorizedNetworksConfig

    -- ** NetworkingConfig
    , NetworkingConfig (..)
    , newNetworkingConfig

    -- ** NetworkingConfig_ConnectionType
    , NetworkingConfig_ConnectionType (..)

    -- ** NodeConfig
    , NodeConfig (..)
    , newNodeConfig

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** OperationMetadata_OperationType
    , OperationMetadata_OperationType (..)

    -- ** OperationMetadata_State
    , OperationMetadata_State (..)

    -- ** PollAirflowCommandRequest
    , PollAirflowCommandRequest (..)
    , newPollAirflowCommandRequest

    -- ** PollAirflowCommandResponse
    , PollAirflowCommandResponse (..)
    , newPollAirflowCommandResponse

    -- ** PrivateClusterConfig
    , PrivateClusterConfig (..)
    , newPrivateClusterConfig

    -- ** PrivateEnvironmentConfig
    , PrivateEnvironmentConfig (..)
    , newPrivateEnvironmentConfig

    -- ** RecoveryConfig
    , RecoveryConfig (..)
    , newRecoveryConfig

    -- ** SaveSnapshotRequest
    , SaveSnapshotRequest (..)
    , newSaveSnapshotRequest

    -- ** SaveSnapshotResponse
    , SaveSnapshotResponse (..)
    , newSaveSnapshotResponse

    -- ** ScheduledSnapshotsConfig
    , ScheduledSnapshotsConfig (..)
    , newScheduledSnapshotsConfig

    -- ** SchedulerResource
    , SchedulerResource (..)
    , newSchedulerResource

    -- ** SoftwareConfig
    , SoftwareConfig (..)
    , newSoftwareConfig

    -- ** SoftwareConfig_AirflowConfigOverrides
    , SoftwareConfig_AirflowConfigOverrides (..)
    , newSoftwareConfig_AirflowConfigOverrides

    -- ** SoftwareConfig_EnvVariables
    , SoftwareConfig_EnvVariables (..)
    , newSoftwareConfig_EnvVariables

    -- ** SoftwareConfig_PypiPackages
    , SoftwareConfig_PypiPackages (..)
    , newSoftwareConfig_PypiPackages

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StopAirflowCommandRequest
    , StopAirflowCommandRequest (..)
    , newStopAirflowCommandRequest

    -- ** StopAirflowCommandResponse
    , StopAirflowCommandResponse (..)
    , newStopAirflowCommandResponse

    -- ** WebServerConfig
    , WebServerConfig (..)
    , newWebServerConfig

    -- ** WebServerNetworkAccessControl
    , WebServerNetworkAccessControl (..)
    , newWebServerNetworkAccessControl

    -- ** WebServerResource
    , WebServerResource (..)
    , newWebServerResource

    -- ** WorkerResource
    , WorkerResource (..)
    , newWorkerResource

    -- ** WorkloadsConfig
    , WorkloadsConfig (..)
    , newWorkloadsConfig
    ) where

import Gogol.Composer.Projects.Locations.Environments.Create
import Gogol.Composer.Projects.Locations.Environments.DatabaseFailover
import Gogol.Composer.Projects.Locations.Environments.Delete
import Gogol.Composer.Projects.Locations.Environments.ExecuteAirflowCommand
import Gogol.Composer.Projects.Locations.Environments.FetchDatabaseProperties
import Gogol.Composer.Projects.Locations.Environments.Get
import Gogol.Composer.Projects.Locations.Environments.List
import Gogol.Composer.Projects.Locations.Environments.LoadSnapshot
import Gogol.Composer.Projects.Locations.Environments.Patch
import Gogol.Composer.Projects.Locations.Environments.PollAirflowCommand
import Gogol.Composer.Projects.Locations.Environments.SaveSnapshot
import Gogol.Composer.Projects.Locations.Environments.StopAirflowCommand
import Gogol.Composer.Projects.Locations.ImageVersions.List
import Gogol.Composer.Projects.Locations.Operations.Delete
import Gogol.Composer.Projects.Locations.Operations.Get
import Gogol.Composer.Projects.Locations.Operations.List
import Gogol.Composer.Types
