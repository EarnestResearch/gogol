{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AlertCenter
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages alerts on issues affecting your domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference>
module Network.Google.AlertCenter
    (
    -- * Service Configuration
      alertCenterService

    -- * OAuth Scopes
    , appsAlertsScope

    -- * API Declaration
    , AlertCenterAPI

    -- * Resources

    -- ** alertcenter.alerts.batchDelete
    , module Network.Google.Resource.AlertCenter.Alerts.BatchDelete

    -- ** alertcenter.alerts.batchUndelete
    , module Network.Google.Resource.AlertCenter.Alerts.BatchUndelete

    -- ** alertcenter.alerts.delete
    , module Network.Google.Resource.AlertCenter.Alerts.Delete

    -- ** alertcenter.alerts.feedback.create
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.Create

    -- ** alertcenter.alerts.feedback.list
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.List

    -- ** alertcenter.alerts.get
    , module Network.Google.Resource.AlertCenter.Alerts.Get

    -- ** alertcenter.alerts.getMetadata
    , module Network.Google.Resource.AlertCenter.Alerts.GetMetadata

    -- ** alertcenter.alerts.list
    , module Network.Google.Resource.AlertCenter.Alerts.List

    -- ** alertcenter.alerts.undelete
    , module Network.Google.Resource.AlertCenter.Alerts.Undelete

    -- ** alertcenter.getSettings
    , module Network.Google.Resource.AlertCenter.GetSettings

    -- ** alertcenter.updateSettings
    , module Network.Google.Resource.AlertCenter.UpdateSettings

    -- * Types

    -- ** GoogleAppsAlertcenterTypeBadWhiteList
    , GoogleAppsAlertcenterTypeBadWhiteList
    , googleAppsAlertcenterTypeBadWhiteList
    , gaatbwlSourceIP
    , gaatbwlDomainId
    , gaatbwlMessages
    , gaatbwlMaliciousEntity

    -- ** GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleAppsAlertcenterV1beta1AlertData
    , GoogleAppsAlertcenterV1beta1AlertData
    , googleAppsAlertcenterV1beta1AlertData
    , gaavadAddtional

    -- ** GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat
    , GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat (..)

    -- ** GoogleAppsAlertcenterTypeDeviceCompromised
    , GoogleAppsAlertcenterTypeDeviceCompromised
    , googleAppsAlertcenterTypeDeviceCompromised
    , gaatdcEmail
    , gaatdcEvents

    -- ** GoogleAppsAlertcenterTypeStateSponsoredAttack
    , GoogleAppsAlertcenterTypeStateSponsoredAttack
    , googleAppsAlertcenterTypeStateSponsoredAttack
    , gaatssaEmail

    -- ** GoogleAppsAlertcenterV1beta1Alert
    , GoogleAppsAlertcenterV1beta1Alert
    , googleAppsAlertcenterV1beta1Alert
    , gaavaEtag
    , gaavaStartTime
    , gaavaData
    , gaavaAlertId
    , gaavaSecurityInvestigationToolLink
    , gaavaCustomerId
    , gaavaUpdateTime
    , gaavaEndTime
    , gaavaMetadata
    , gaavaSource
    , gaavaDeleted
    , gaavaType
    , gaavaCreateTime

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
    , googleAppsAlertcenterTypeRuleViolationInfoRuleInfo
    , gaatrviriResourceName
    , gaatrviriDisplayName

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
    , googleAppsAlertcenterTypeRuleViolationInfoActionInfo

    -- ** GoogleAppsAlertcenterTypeAttachment
    , GoogleAppsAlertcenterTypeAttachment
    , googleAppsAlertcenterTypeAttachment
    , gaataCSV

    -- ** GoogleAppsAlertcenterTypeUser
    , GoogleAppsAlertcenterTypeUser
    , googleAppsAlertcenterTypeUser
    , gaatuEmailAddress
    , gaatuDisplayName

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoDataSource
    , GoogleAppsAlertcenterTypeRuleViolationInfoDataSource (..)

    -- ** GoogleAppsAlertcenterTypeAttachmentCSVCSVRow
    , GoogleAppsAlertcenterTypeAttachmentCSVCSVRow
    , googleAppsAlertcenterTypeAttachmentCSVCSVRow
    , gaataccrEntries

    -- ** GoogleAppsAlertcenterTypeAccountWarning
    , GoogleAppsAlertcenterTypeAccountWarning
    , googleAppsAlertcenterTypeAccountWarning
    , gaatawEmail
    , gaatawLoginDetails

    -- ** GoogleAppsAlertcenterTypeGmailMessageInfo
    , GoogleAppsAlertcenterTypeGmailMessageInfo
    , googleAppsAlertcenterTypeGmailMessageInfo
    , gaatgmiMD5HashSubject
    , gaatgmiSubjectText
    , gaatgmiDate
    , gaatgmiMD5HashMessageBody
    , gaatgmiAttachmentsSha256Hash
    , gaatgmiRecipient
    , gaatgmiMessageBodySnippet
    , gaatgmiMessageId

    -- ** GoogleAppsAlertcenterTypeMailPhishing
    , GoogleAppsAlertcenterTypeMailPhishing
    , googleAppsAlertcenterTypeMailPhishing
    , gaatmpSystemActionType
    , gaatmpIsInternal
    , gaatmpDomainId
    , gaatmpMessages
    , gaatmpMaliciousEntity

    -- ** GoogleAppsAlertcenterTypeActivityRule
    , GoogleAppsAlertcenterTypeActivityRule
    , googleAppsAlertcenterTypeActivityRule
    , gaatarSupersededAlerts
    , gaatarActionNames
    , gaatarSupersedingAlert
    , gaatarTriggerSource
    , gaatarWindowSize
    , gaatarUpdateTime
    , gaatarName
    , gaatarThreshold
    , gaatarQuery
    , gaatarDisplayName
    , gaatarDescription
    , gaatarCreateTime

    -- ** GoogleAppsAlertcenterV1beta1AlertFeedbackType
    , GoogleAppsAlertcenterV1beta1AlertFeedbackType (..)

    -- ** GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
    , GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
    , googleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
    , gaavbdarfasAddtional

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- ** GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
    , GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
    , googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
    , gaavbuarfasAddtional

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
    , googleAppsAlertcenterTypeRuleViolationInfoResourceInfo
    , gaatrviriDocumentId
    , gaatrviriResourceTitle

    -- ** GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- ** GoogleAppsAlertcenterV1beta1ListAlertsResponse
    , GoogleAppsAlertcenterV1beta1ListAlertsResponse
    , googleAppsAlertcenterV1beta1ListAlertsResponse
    , gaavlarNextPageToken
    , gaavlarAlerts

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
    , googleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
    , gaatrvimiuddiResourceName
    , gaatrvimiuddiDisplayName

    -- ** GoogleAppsAlertcenterTypeDlpRuleViolation
    , GoogleAppsAlertcenterTypeDlpRuleViolation
    , googleAppsAlertcenterTypeDlpRuleViolation
    , gaatdrvRuleViolationInfo

    -- ** GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
    , GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
    , googleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
    , gaavsncptTopicName
    , gaavsncptPayloadFormat

    -- ** GoogleAppsAlertcenterTypeAttachmentCSV
    , GoogleAppsAlertcenterTypeAttachmentCSV
    , googleAppsAlertcenterTypeAttachmentCSV
    , gaatacDataRows
    , gaatacHeaders

    -- ** GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
    , GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
    , googleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
    , gaavbdarSuccessAlertIds
    , gaavbdarFailedAlertStatus

    -- ** GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
    , GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
    , googleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
    , gaatamsqlsnriNumberOfRequests
    , gaatamsqlsnriAppDeveloperEmail
    , gaatamsqlsnriAppKey

    -- ** GoogleAppsAlertcenterTypeSuspiciousActivity
    , GoogleAppsAlertcenterTypeSuspiciousActivity
    , googleAppsAlertcenterTypeSuspiciousActivity
    , gaatsaEmail
    , gaatsaEvents

    -- ** GoogleAppsAlertcenterTypeAccountWarningLoginDetails
    , GoogleAppsAlertcenterTypeAccountWarningLoginDetails
    , googleAppsAlertcenterTypeAccountWarningLoginDetails
    , gaatawldIPAddress
    , gaatawldLoginTime

    -- ** GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
    , GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
    , googleAppsAlertcenterV1beta1ListAlertFeedbackResponse
    , gaavlafrFeedback

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfo
    , googleAppsAlertcenterTypeRuleViolationInfo
    , gaatrviTriggeredActionTypes
    , gaatrviSuppressedActionTypes
    , gaatrviTriggeringUserEmail
    , gaatrviResourceInfo
    , gaatrviMatchInfo
    , gaatrviDataSource
    , gaatrviTrigger
    , gaatrviRecipients
    , gaatrviRuleInfo
    , gaatrviTriggeredActionInfo

    -- ** GoogleAppsAlertcenterTypeMaliciousEntity
    , GoogleAppsAlertcenterTypeMaliciousEntity
    , googleAppsAlertcenterTypeMaliciousEntity
    , gaatmeFromHeader
    , gaatmeDisplayName
    , gaatmeEntity

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoTrigger
    , GoogleAppsAlertcenterTypeRuleViolationInfoTrigger (..)

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem
    , GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem (..)

    -- ** GoogleAppsAlertcenterV1beta1Settings
    , GoogleAppsAlertcenterV1beta1Settings
    , googleAppsAlertcenterV1beta1Settings
    , gaavsNotifications

    -- ** GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
    , GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
    , googleAppsAlertcenterV1beta1UndeleteAlertRequest
    , gaavuarCustomerId

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
    , googleAppsAlertcenterTypeRuleViolationInfoMatchInfo
    , gaatrvimiPredefinedDetector
    , gaatrvimiUserDefinedDetector

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleAppsAlertcenterV1beta1SettingsNotification
    , GoogleAppsAlertcenterV1beta1SettingsNotification
    , googleAppsAlertcenterV1beta1SettingsNotification
    , gaavsnCloudPubsubTopic

    -- ** GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
    , GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
    , googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
    , gaavbuarSuccessAlertIds
    , gaavbuarFailedAlertStatus

    -- ** GoogleAppsAlertcenterV1beta1AlertFeedback
    , GoogleAppsAlertcenterV1beta1AlertFeedback
    , googleAppsAlertcenterV1beta1AlertFeedback
    , gaavafFeedbackId
    , gaavafEmail
    , gaavafAlertId
    , gaavafCustomerId
    , gaavafType
    , gaavafCreateTime

    -- ** GoogleAppsAlertcenterTypePhishingSpike
    , GoogleAppsAlertcenterTypePhishingSpike
    , googleAppsAlertcenterTypePhishingSpike
    , gaatpsIsInternal
    , gaatpsDomainId
    , gaatpsMessages
    , gaatpsMaliciousEntity

    -- ** GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
    , GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
    , googleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
    , gaavbuarAlertId
    , gaavbuarCustomerId

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
    , GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
    , googleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
    , gaatrvimipdiDetectorName

    -- ** GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
    , GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
    , googleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
    , gaavbdarAlertId
    , gaavbdarCustomerId

    -- ** GoogleAppsAlertcenterTypeDomainId
    , GoogleAppsAlertcenterTypeDomainId
    , googleAppsAlertcenterTypeDomainId
    , gaatdiCustomerPrimaryDomain

    -- ** GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
    , GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
    , googleAppsAlertcenterTypeDomainWideTakeoutInitiated
    , gaatdwtiEmail
    , gaatdwtiTakeoutRequestId

    -- ** GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification
    , GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification
    , googleAppsAlertcenterTypeAppMakerSQLSetupNotification
    , gaatamsqlsnRequestInfo

    -- ** GoogleAppsAlertcenterTypeMailPhishingSystemActionType
    , GoogleAppsAlertcenterTypeMailPhishingSystemActionType (..)

    -- ** GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem
    , GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem (..)

    -- ** GoogleAppsAlertcenterV1beta1AlertMetadata
    , GoogleAppsAlertcenterV1beta1AlertMetadata
    , googleAppsAlertcenterV1beta1AlertMetadata
    , gaavamStatus
    , gaavamEtag
    , gaavamSeverity
    , gaavamAlertId
    , gaavamAssignee
    , gaavamCustomerId
    , gaavamUpdateTime

    -- ** GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
    , GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
    , googleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
    , gaatdcdcsdResourceId
    , gaatdcdcsdDeviceCompromisedState
    , gaatdcdcsdIosVendorId
    , gaatdcdcsdDeviceModel
    , gaatdcdcsdDeviceId
    , gaatdcdcsdDeviceType
    , gaatdcdcsdSerialNumber

    -- ** GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
    , GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
    , googleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
    , gaatsasasdDeviceProperty
    , gaatsasasdResourceId
    , gaatsasasdIosVendorId
    , gaatsasasdOldValue
    , gaatsasasdNewValue
    , gaatsasasdDeviceModel
    , gaatsasasdDeviceId
    , gaatsasasdDeviceType
    , gaatsasasdSerialNumber

    -- ** GoogleAppsAlertcenterTypeGoogleOperations
    , GoogleAppsAlertcenterTypeGoogleOperations
    , googleAppsAlertcenterTypeGoogleOperations
    , gaatgoAttachmentData
    , gaatgoAffectedUserEmails
    , gaatgoHeader
    , gaatgoTitle
    , gaatgoDescription
    ) where

import Network.Google.Prelude
import Network.Google.AlertCenter.Types
import Network.Google.Resource.AlertCenter.Alerts.BatchDelete
import Network.Google.Resource.AlertCenter.Alerts.BatchUndelete
import Network.Google.Resource.AlertCenter.Alerts.Delete
import Network.Google.Resource.AlertCenter.Alerts.Feedback.Create
import Network.Google.Resource.AlertCenter.Alerts.Feedback.List
import Network.Google.Resource.AlertCenter.Alerts.Get
import Network.Google.Resource.AlertCenter.Alerts.GetMetadata
import Network.Google.Resource.AlertCenter.Alerts.List
import Network.Google.Resource.AlertCenter.Alerts.Undelete
import Network.Google.Resource.AlertCenter.GetSettings
import Network.Google.Resource.AlertCenter.UpdateSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Workspace Alert Center API service.
type AlertCenterAPI =
     UpdateSettingsResource :<|> GetSettingsResource :<|>
       AlertsFeedbackListResource
       :<|> AlertsFeedbackCreateResource
       :<|> AlertsListResource
       :<|> AlertsUndeleteResource
       :<|> AlertsGetMetadataResource
       :<|> AlertsGetResource
       :<|> AlertsBatchDeleteResource
       :<|> AlertsBatchUndeleteResource
       :<|> AlertsDeleteResource
