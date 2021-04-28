{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ContainerBuilder
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages builds on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference>
module Network.Google.ContainerBuilder
    (
    -- * Service Configuration
      containerBuilderService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ContainerBuilderAPI

    -- * Resources

    -- ** cloudbuild.operations.cancel
    , module Network.Google.Resource.Cloudbuild.Operations.Cancel

    -- ** cloudbuild.operations.get
    , module Network.Google.Resource.Cloudbuild.Operations.Get

    -- ** cloudbuild.projects.builds.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel

    -- ** cloudbuild.projects.builds.create
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Create

    -- ** cloudbuild.projects.builds.get
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Get

    -- ** cloudbuild.projects.builds.list
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.List

    -- ** cloudbuild.projects.builds.retry
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Retry

    -- ** cloudbuild.projects.locations.builds.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel

    -- ** cloudbuild.projects.locations.builds.create
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create

    -- ** cloudbuild.projects.locations.builds.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get

    -- ** cloudbuild.projects.locations.builds.list
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List

    -- ** cloudbuild.projects.locations.builds.retry
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry

    -- ** cloudbuild.projects.locations.operations.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Cancel

    -- ** cloudbuild.projects.locations.operations.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Get

    -- ** cloudbuild.projects.triggers.create
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Create

    -- ** cloudbuild.projects.triggers.delete
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete

    -- ** cloudbuild.projects.triggers.get
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Get

    -- ** cloudbuild.projects.triggers.list
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.List

    -- ** cloudbuild.projects.triggers.patch
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch

    -- ** cloudbuild.projects.triggers.run
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Run

    -- ** cloudbuild.projects.triggers.webhook
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook

    -- * Types

    -- ** BuildStep
    , BuildStep
    , buildStep
    , bsStatus
    , bsDir
    , bsArgs
    , bsEnv
    , bsPullTiming
    , bsEntrypoint
    , bsWaitFor
    , bsName
    , bsId
    , bsTiming
    , bsSecretEnv
    , bsTimeout
    , bsVolumes

    -- ** SourceProvenance
    , SourceProvenance
    , sourceProvenance
    , spResolvedRepoSource
    , spResolvedStorageSourceManifest
    , spResolvedStorageSource
    , spFileHashes

    -- ** ListBuildsResponse
    , ListBuildsResponse
    , listBuildsResponse
    , lbrNextPageToken
    , lbrBuilds

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** PullRequestFilter
    , PullRequestFilter
    , pullRequestFilter
    , prfCommentControl
    , prfInvertRegex
    , prfBranch

    -- ** RetryBuildRequest
    , RetryBuildRequest
    , retryBuildRequest
    , rbrName
    , rbrId
    , rbrProjectId

    -- ** HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Hash
    , Hash
    , hash
    , hValue
    , hType

    -- ** Results
    , Results
    , results
    , rImages
    , rBuildStepImages
    , rArtifactManifest
    , rBuildStepOutputs
    , rNumArtifacts
    , rArtifactTiming

    -- ** BuildTriggerSubstitutions
    , BuildTriggerSubstitutions
    , buildTriggerSubstitutions
    , btsAddtional

    -- ** RepoSource
    , RepoSource
    , repoSource
    , rsSubstitutions
    , rsInvertRegex
    , rsRepoName
    , rsDir
    , rsCommitSha
    , rsBranchName
    , rsTagName
    , rsProjectId

    -- ** Secrets
    , Secrets
    , secrets
    , sInline
    , sSecretManager

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** SecretSecretEnv
    , SecretSecretEnv
    , secretSecretEnv
    , sseAddtional

    -- ** Notification
    , Notification
    , notification
    , nStructDelivery
    , nSmtpDelivery
    , nHTTPDelivery
    , nSlackDelivery
    , nFilter

    -- ** Artifacts
    , Artifacts
    , artifacts
    , aImages
    , aObjects

    -- ** BuildStepStatus
    , BuildStepStatus (..)

    -- ** ArtifactObjects
    , ArtifactObjects
    , artifactObjects
    , aoLocation
    , aoTiming
    , aoPaths

    -- ** GitHubEventsConfig
    , GitHubEventsConfig
    , gitHubEventsConfig
    , ghecOwner
    , ghecPullRequest
    , ghecName
    , ghecPush
    , ghecInstallationId

    -- ** PullRequestFilterCommentControl
    , PullRequestFilterCommentControl (..)

    -- ** Volume
    , Volume
    , volume
    , vPath
    , vName

    -- ** NotifierSecretRef
    , NotifierSecretRef
    , notifierSecretRef
    , nsrSecretRef

    -- ** ReceiveTriggerWebhookResponse
    , ReceiveTriggerWebhookResponse
    , receiveTriggerWebhookResponse

    -- ** StorageSourceManifest
    , StorageSourceManifest
    , storageSourceManifest
    , ssmBucket
    , ssmObject
    , ssmGeneration

    -- ** SecretManagerSecret
    , SecretManagerSecret
    , secretManagerSecret
    , smsVersionName
    , smsEnv

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** PubsubConfigState
    , PubsubConfigState (..)

    -- ** Build
    , Build
    , build
    , bAvailableSecrets
    , bImages
    , bStatus
    , bSourceProvenance
    , bSubstitutions
    , bLogURL
    , bResults
    , bSecrets
    , bStartTime
    , bArtifacts
    , bLogsBucket
    , bSteps
    , bServiceAccount
    , bName
    , bStatusDetail
    , bSource
    , bId
    , bQueueTtl
    , bOptions
    , bProjectId
    , bTiming
    , bBuildTriggerId
    , bTimeout
    , bFinishTime
    , bCreateTime
    , bTags

    -- ** InlineSecretEnvMap
    , InlineSecretEnvMap
    , inlineSecretEnvMap
    , isemAddtional

    -- ** SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- ** SMTPDelivery
    , SMTPDelivery
    , sMTPDelivery
    , smtpdSenderAddress
    , smtpdFromAddress
    , smtpdRecipientAddresses
    , smtpdPassword
    , smtpdServer
    , smtpdPort

    -- ** Secret
    , Secret
    , secret
    , sKmsKeyName
    , sSecretEnv

    -- ** PushFilter
    , PushFilter
    , pushFilter
    , pfInvertRegex
    , pfTag
    , pfBranch

    -- ** CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest
    , cbrName
    , cbrId
    , cbrProjectId

    -- ** PubsubConfig
    , PubsubConfig
    , pubsubConfig
    , pcState
    , pcTopic
    , pcServiceAccountEmail
    , pcSubscription

    -- ** TimeSpan
    , TimeSpan
    , timeSpan
    , tsStartTime
    , tsEndTime

    -- ** StorageSource
    , StorageSource
    , storageSource
    , ssBucket
    , ssObject
    , ssGeneration

    -- ** HTTPDelivery
    , HTTPDelivery
    , hTTPDelivery
    , httpdURI

    -- ** ListBuildTriggersResponse
    , ListBuildTriggersResponse
    , listBuildTriggersResponse
    , lbtrNextPageToken
    , lbtrTriggers

    -- ** InlineSecret
    , InlineSecret
    , inlineSecret
    , isEnvMap
    , isKmsKeyName

    -- ** ArtifactResult
    , ArtifactResult
    , artifactResult
    , arFileHash
    , arLocation

    -- ** BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- ** FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- ** BuildSubstitutions
    , BuildSubstitutions
    , buildSubstitutions
    , bsAddtional

    -- ** SlackDelivery
    , SlackDelivery
    , slackDelivery
    , sdWebhookURI

    -- ** Xgafv
    , Xgafv (..)

    -- ** BuildStatus
    , BuildStatus (..)

    -- ** BuildOptionsSubstitutionOption
    , BuildOptionsSubstitutionOption (..)

    -- ** HashType
    , HashType (..)

    -- ** NotifierSecret
    , NotifierSecret
    , notifierSecret
    , nsValue
    , nsName

    -- ** BuildOptionsLogStreamingOption
    , BuildOptionsLogStreamingOption (..)

    -- ** BuildOptionsSourceProvenanceHashItem
    , BuildOptionsSourceProvenanceHashItem (..)

    -- ** Source
    , Source
    , source
    , sRepoSource
    , sStorageSourceManifest
    , sStorageSource

    -- ** BuildOptionsLogging
    , BuildOptionsLogging (..)

    -- ** HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** BuildOptionsMachineType
    , BuildOptionsMachineType (..)

    -- ** BuildTiming
    , BuildTiming
    , buildTiming
    , btAddtional

    -- ** NotifierConfig
    , NotifierConfig
    , notifierConfig
    , ncAPIVersion
    , ncKind
    , ncSpec
    , ncMetadata

    -- ** BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- ** BuildOptions
    , BuildOptions
    , buildOptions
    , boDiskSizeGb
    , boEnv
    , boSubstitutionOption
    , boRequestedVerifyOption
    , boWorkerPool
    , boMachineType
    , boSecretEnv
    , boVolumes
    , boLogStreamingOption
    , boLogging
    , boSourceProvenanceHash
    , boDynamicSubstitutions

    -- ** NotificationStructDelivery
    , NotificationStructDelivery
    , notificationStructDelivery
    , nsdAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** BuildTrigger
    , BuildTrigger
    , buildTrigger
    , btSubstitutions
    , btIncludedFiles
    , btDisabled
    , btTriggerTemplate
    , btBuild
    , btIgnoredFiles
    , btPubsubConfig
    , btName
    , btId
    , btGithub
    , btFilter
    , btDescription
    , btFilename
    , btCreateTime
    , btTags

    -- ** NotifierMetadata
    , NotifierMetadata
    , notifierMetadata
    , nmNotifier
    , nmName

    -- ** NotifierSpec
    , NotifierSpec
    , notifierSpec
    , nsSecrets
    , nsNotification

    -- ** BuiltImage
    , BuiltImage
    , builtImage
    , biPushTiming
    , biName
    , biDigest

    -- ** RepoSourceSubstitutions
    , RepoSourceSubstitutions
    , repoSourceSubstitutions
    , rssAddtional
    ) where

import Network.Google.Prelude
import Network.Google.ContainerBuilder.Types
import Network.Google.Resource.Cloudbuild.Operations.Cancel
import Network.Google.Resource.Cloudbuild.Operations.Get
import Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Builds.Create
import Network.Google.Resource.Cloudbuild.Projects.Builds.Get
import Network.Google.Resource.Cloudbuild.Projects.Builds.List
import Network.Google.Resource.Cloudbuild.Projects.Builds.Retry
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry
import Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Get
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
import Network.Google.Resource.Cloudbuild.Projects.Triggers.List
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Run
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Build API service.
type ContainerBuilderAPI =
     OperationsGetResource :<|> OperationsCancelResource
       :<|> ProjectsBuildsListResource
       :<|> ProjectsBuildsRetryResource
       :<|> ProjectsBuildsGetResource
       :<|> ProjectsBuildsCreateResource
       :<|> ProjectsBuildsCancelResource
       :<|> ProjectsTriggersListResource
       :<|> ProjectsTriggersPatchResource
       :<|> ProjectsTriggersGetResource
       :<|> ProjectsTriggersRunResource
       :<|> ProjectsTriggersCreateResource
       :<|> ProjectsTriggersWebhookResource
       :<|> ProjectsTriggersDeleteResource
       :<|> ProjectsLocationsBuildsListResource
       :<|> ProjectsLocationsBuildsRetryResource
       :<|> ProjectsLocationsBuildsGetResource
       :<|> ProjectsLocationsBuildsCreateResource
       :<|> ProjectsLocationsBuildsCancelResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
