{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Optional. The format of the payload that would be sent. If not specified
-- the format will be JSON.
data GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat
    = PayloadFormatUnspecified
      -- ^ @PAYLOAD_FORMAT_UNSPECIFIED@
      -- Payload format is not specified (will use JSON as default).
    | JSON
      -- ^ @JSON@
      -- Use JSON.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat

instance FromHttpApiData GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat where
    parseQueryParam = \case
        "PAYLOAD_FORMAT_UNSPECIFIED" -> Right PayloadFormatUnspecified
        "JSON" -> Right JSON
        x -> Left ("Unable to parse GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat where
    toQueryParam = \case
        PayloadFormatUnspecified -> "PAYLOAD_FORMAT_UNSPECIFIED"
        JSON -> "JSON"

instance FromJSON GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat where
    parseJSON = parseJSONText "GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat"

instance ToJSON GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat where
    toJSON = toJSONText

-- | Source of the data.
data GoogleAppsAlertcenterTypeRuleViolationInfoDataSource
    = DataSourceUnspecified
      -- ^ @DATA_SOURCE_UNSPECIFIED@
      -- Data source is unspecified.
    | Drive
      -- ^ @DRIVE@
      -- Drive data source.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterTypeRuleViolationInfoDataSource

instance FromHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoDataSource where
    parseQueryParam = \case
        "DATA_SOURCE_UNSPECIFIED" -> Right DataSourceUnspecified
        "DRIVE" -> Right Drive
        x -> Left ("Unable to parse GoogleAppsAlertcenterTypeRuleViolationInfoDataSource from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoDataSource where
    toQueryParam = \case
        DataSourceUnspecified -> "DATA_SOURCE_UNSPECIFIED"
        Drive -> "DRIVE"

instance FromJSON GoogleAppsAlertcenterTypeRuleViolationInfoDataSource where
    parseJSON = parseJSONText "GoogleAppsAlertcenterTypeRuleViolationInfoDataSource"

instance ToJSON GoogleAppsAlertcenterTypeRuleViolationInfoDataSource where
    toJSON = toJSONText

-- | Required. The type of the feedback.
data GoogleAppsAlertcenterV1beta1AlertFeedbackType
    = AlertFeedbackTypeUnspecified
      -- ^ @ALERT_FEEDBACK_TYPE_UNSPECIFIED@
      -- The feedback type is not specified.
    | NotUseful
      -- ^ @NOT_USEFUL@
      -- The alert report is not useful.
    | SomewhatUseful
      -- ^ @SOMEWHAT_USEFUL@
      -- The alert report is somewhat useful.
    | VeryUseful
      -- ^ @VERY_USEFUL@
      -- The alert report is very useful.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterV1beta1AlertFeedbackType

instance FromHttpApiData GoogleAppsAlertcenterV1beta1AlertFeedbackType where
    parseQueryParam = \case
        "ALERT_FEEDBACK_TYPE_UNSPECIFIED" -> Right AlertFeedbackTypeUnspecified
        "NOT_USEFUL" -> Right NotUseful
        "SOMEWHAT_USEFUL" -> Right SomewhatUseful
        "VERY_USEFUL" -> Right VeryUseful
        x -> Left ("Unable to parse GoogleAppsAlertcenterV1beta1AlertFeedbackType from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterV1beta1AlertFeedbackType where
    toQueryParam = \case
        AlertFeedbackTypeUnspecified -> "ALERT_FEEDBACK_TYPE_UNSPECIFIED"
        NotUseful -> "NOT_USEFUL"
        SomewhatUseful -> "SOMEWHAT_USEFUL"
        VeryUseful -> "VERY_USEFUL"

instance FromJSON GoogleAppsAlertcenterV1beta1AlertFeedbackType where
    parseJSON = parseJSONText "GoogleAppsAlertcenterV1beta1AlertFeedbackType"

instance ToJSON GoogleAppsAlertcenterV1beta1AlertFeedbackType where
    toJSON = toJSONText

-- | Trigger of the rule.
data GoogleAppsAlertcenterTypeRuleViolationInfoTrigger
    = TriggerUnspecified
      -- ^ @TRIGGER_UNSPECIFIED@
      -- Trigger is unspecified.
    | DriveShare
      -- ^ @DRIVE_SHARE@
      -- A Drive file is shared.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterTypeRuleViolationInfoTrigger

instance FromHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoTrigger where
    parseQueryParam = \case
        "TRIGGER_UNSPECIFIED" -> Right TriggerUnspecified
        "DRIVE_SHARE" -> Right DriveShare
        x -> Left ("Unable to parse GoogleAppsAlertcenterTypeRuleViolationInfoTrigger from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoTrigger where
    toQueryParam = \case
        TriggerUnspecified -> "TRIGGER_UNSPECIFIED"
        DriveShare -> "DRIVE_SHARE"

instance FromJSON GoogleAppsAlertcenterTypeRuleViolationInfoTrigger where
    parseJSON = parseJSONText "GoogleAppsAlertcenterTypeRuleViolationInfoTrigger"

instance ToJSON GoogleAppsAlertcenterTypeRuleViolationInfoTrigger where
    toJSON = toJSONText

data GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem
    = ActionTypeUnspecified
      -- ^ @ACTION_TYPE_UNSPECIFIED@
      -- Action type is unspecified.
    | DriveBlockExternalSharing
      -- ^ @DRIVE_BLOCK_EXTERNAL_SHARING@
      -- Block sharing a file externally.
    | DriveWarnOnExternalSharing
      -- ^ @DRIVE_WARN_ON_EXTERNAL_SHARING@
      -- Show a warning message when sharing a file externally.
    | Alert
      -- ^ @ALERT@
      -- Send alert.
    | RuleActivate
      -- ^ @RULE_ACTIVATE@
      -- Activate Rule Action
    | RuleDeactivate
      -- ^ @RULE_DEACTIVATE@
      -- Deactivate Rule Action
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem

instance FromHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem where
    parseQueryParam = \case
        "ACTION_TYPE_UNSPECIFIED" -> Right ActionTypeUnspecified
        "DRIVE_BLOCK_EXTERNAL_SHARING" -> Right DriveBlockExternalSharing
        "DRIVE_WARN_ON_EXTERNAL_SHARING" -> Right DriveWarnOnExternalSharing
        "ALERT" -> Right Alert
        "RULE_ACTIVATE" -> Right RuleActivate
        "RULE_DEACTIVATE" -> Right RuleDeactivate
        x -> Left ("Unable to parse GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem where
    toQueryParam = \case
        ActionTypeUnspecified -> "ACTION_TYPE_UNSPECIFIED"
        DriveBlockExternalSharing -> "DRIVE_BLOCK_EXTERNAL_SHARING"
        DriveWarnOnExternalSharing -> "DRIVE_WARN_ON_EXTERNAL_SHARING"
        Alert -> "ALERT"
        RuleActivate -> "RULE_ACTIVATE"
        RuleDeactivate -> "RULE_DEACTIVATE"

instance FromJSON GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem where
    parseJSON = parseJSONText "GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem"

instance ToJSON GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | System actions on the messages.
data GoogleAppsAlertcenterTypeMailPhishingSystemActionType
    = SystemActionTypeUnspecified
      -- ^ @SYSTEM_ACTION_TYPE_UNSPECIFIED@
      -- System action is unspecified.
    | NoOperation
      -- ^ @NO_OPERATION@
      -- No operation.
    | RemovedFromInbox
      -- ^ @REMOVED_FROM_INBOX@
      -- Messages were removed from the inbox.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterTypeMailPhishingSystemActionType

instance FromHttpApiData GoogleAppsAlertcenterTypeMailPhishingSystemActionType where
    parseQueryParam = \case
        "SYSTEM_ACTION_TYPE_UNSPECIFIED" -> Right SystemActionTypeUnspecified
        "NO_OPERATION" -> Right NoOperation
        "REMOVED_FROM_INBOX" -> Right RemovedFromInbox
        x -> Left ("Unable to parse GoogleAppsAlertcenterTypeMailPhishingSystemActionType from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterTypeMailPhishingSystemActionType where
    toQueryParam = \case
        SystemActionTypeUnspecified -> "SYSTEM_ACTION_TYPE_UNSPECIFIED"
        NoOperation -> "NO_OPERATION"
        RemovedFromInbox -> "REMOVED_FROM_INBOX"

instance FromJSON GoogleAppsAlertcenterTypeMailPhishingSystemActionType where
    parseJSON = parseJSONText "GoogleAppsAlertcenterTypeMailPhishingSystemActionType"

instance ToJSON GoogleAppsAlertcenterTypeMailPhishingSystemActionType where
    toJSON = toJSONText

data GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem
    = GAATRVITATIActionTypeUnspecified
      -- ^ @ACTION_TYPE_UNSPECIFIED@
      -- Action type is unspecified.
    | GAATRVITATIDriveBlockExternalSharing
      -- ^ @DRIVE_BLOCK_EXTERNAL_SHARING@
      -- Block sharing a file externally.
    | GAATRVITATIDriveWarnOnExternalSharing
      -- ^ @DRIVE_WARN_ON_EXTERNAL_SHARING@
      -- Show a warning message when sharing a file externally.
    | GAATRVITATIAlert
      -- ^ @ALERT@
      -- Send alert.
    | GAATRVITATIRuleActivate
      -- ^ @RULE_ACTIVATE@
      -- Activate Rule Action
    | GAATRVITATIRuleDeactivate
      -- ^ @RULE_DEACTIVATE@
      -- Deactivate Rule Action
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem

instance FromHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem where
    parseQueryParam = \case
        "ACTION_TYPE_UNSPECIFIED" -> Right GAATRVITATIActionTypeUnspecified
        "DRIVE_BLOCK_EXTERNAL_SHARING" -> Right GAATRVITATIDriveBlockExternalSharing
        "DRIVE_WARN_ON_EXTERNAL_SHARING" -> Right GAATRVITATIDriveWarnOnExternalSharing
        "ALERT" -> Right GAATRVITATIAlert
        "RULE_ACTIVATE" -> Right GAATRVITATIRuleActivate
        "RULE_DEACTIVATE" -> Right GAATRVITATIRuleDeactivate
        x -> Left ("Unable to parse GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem from: " <> x)

instance ToHttpApiData GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem where
    toQueryParam = \case
        GAATRVITATIActionTypeUnspecified -> "ACTION_TYPE_UNSPECIFIED"
        GAATRVITATIDriveBlockExternalSharing -> "DRIVE_BLOCK_EXTERNAL_SHARING"
        GAATRVITATIDriveWarnOnExternalSharing -> "DRIVE_WARN_ON_EXTERNAL_SHARING"
        GAATRVITATIAlert -> "ALERT"
        GAATRVITATIRuleActivate -> "RULE_ACTIVATE"
        GAATRVITATIRuleDeactivate -> "RULE_DEACTIVATE"

instance FromJSON GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem where
    parseJSON = parseJSONText "GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem"

instance ToJSON GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem where
    toJSON = toJSONText
