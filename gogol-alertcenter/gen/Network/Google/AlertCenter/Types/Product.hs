{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types.Product where

import Network.Google.AlertCenter.Types.Sum
import Network.Google.Prelude

-- | Alert for setting the domain or IP that malicious email comes from as
-- whitelisted domain or IP in Gmail advanced settings.
--
-- /See:/ 'googleAppsAlertcenterTypeBadWhiteList' smart constructor.
data GoogleAppsAlertcenterTypeBadWhiteList =
  GoogleAppsAlertcenterTypeBadWhiteList'
    { _gaatbwlSourceIP :: !(Maybe Text)
    , _gaatbwlDomainId :: !(Maybe GoogleAppsAlertcenterTypeDomainId)
    , _gaatbwlMessages :: !(Maybe [GoogleAppsAlertcenterTypeGmailMessageInfo])
    , _gaatbwlMaliciousEntity :: !(Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeBadWhiteList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatbwlSourceIP'
--
-- * 'gaatbwlDomainId'
--
-- * 'gaatbwlMessages'
--
-- * 'gaatbwlMaliciousEntity'
googleAppsAlertcenterTypeBadWhiteList
    :: GoogleAppsAlertcenterTypeBadWhiteList
googleAppsAlertcenterTypeBadWhiteList =
  GoogleAppsAlertcenterTypeBadWhiteList'
    { _gaatbwlSourceIP = Nothing
    , _gaatbwlDomainId = Nothing
    , _gaatbwlMessages = Nothing
    , _gaatbwlMaliciousEntity = Nothing
    }


-- | The source IP address of the malicious email, for example,
-- \`127.0.0.1\`.
gaatbwlSourceIP :: Lens' GoogleAppsAlertcenterTypeBadWhiteList (Maybe Text)
gaatbwlSourceIP
  = lens _gaatbwlSourceIP
      (\ s a -> s{_gaatbwlSourceIP = a})

-- | The domain ID.
gaatbwlDomainId :: Lens' GoogleAppsAlertcenterTypeBadWhiteList (Maybe GoogleAppsAlertcenterTypeDomainId)
gaatbwlDomainId
  = lens _gaatbwlDomainId
      (\ s a -> s{_gaatbwlDomainId = a})

-- | The list of messages contained by this alert.
gaatbwlMessages :: Lens' GoogleAppsAlertcenterTypeBadWhiteList [GoogleAppsAlertcenterTypeGmailMessageInfo]
gaatbwlMessages
  = lens _gaatbwlMessages
      (\ s a -> s{_gaatbwlMessages = a})
      . _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
gaatbwlMaliciousEntity :: Lens' GoogleAppsAlertcenterTypeBadWhiteList (Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
gaatbwlMaliciousEntity
  = lens _gaatbwlMaliciousEntity
      (\ s a -> s{_gaatbwlMaliciousEntity = a})

instance FromJSON
           GoogleAppsAlertcenterTypeBadWhiteList
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeBadWhiteList"
              (\ o ->
                 GoogleAppsAlertcenterTypeBadWhiteList' <$>
                   (o .:? "sourceIp") <*> (o .:? "domainId") <*>
                     (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON GoogleAppsAlertcenterTypeBadWhiteList
         where
        toJSON GoogleAppsAlertcenterTypeBadWhiteList'{..}
          = object
              (catMaybes
                 [("sourceIp" .=) <$> _gaatbwlSourceIP,
                  ("domainId" .=) <$> _gaatbwlDomainId,
                  ("messages" .=) <$> _gaatbwlMessages,
                  ("maliciousEntity" .=) <$> _gaatbwlMaliciousEntity])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Optional. The data associated with this alert, for example
-- google.apps.alertcenter.type.DeviceCompromised.
--
-- /See:/ 'googleAppsAlertcenterV1beta1AlertData' smart constructor.
newtype GoogleAppsAlertcenterV1beta1AlertData =
  GoogleAppsAlertcenterV1beta1AlertData'
    { _gaavadAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1AlertData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavadAddtional'
googleAppsAlertcenterV1beta1AlertData
    :: HashMap Text JSONValue -- ^ 'gaavadAddtional'
    -> GoogleAppsAlertcenterV1beta1AlertData
googleAppsAlertcenterV1beta1AlertData pGaavadAddtional_ =
  GoogleAppsAlertcenterV1beta1AlertData'
    {_gaavadAddtional = _Coerce # pGaavadAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
gaavadAddtional :: Lens' GoogleAppsAlertcenterV1beta1AlertData (HashMap Text JSONValue)
gaavadAddtional
  = lens _gaavadAddtional
      (\ s a -> s{_gaavadAddtional = a})
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1AlertData
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterV1beta1AlertData"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1AlertData' <$>
                   (parseJSONObject o))

instance ToJSON GoogleAppsAlertcenterV1beta1AlertData
         where
        toJSON = toJSON . _gaavadAddtional

-- | A mobile device compromised alert. Derived from audit logs.
--
-- /See:/ 'googleAppsAlertcenterTypeDeviceCompromised' smart constructor.
data GoogleAppsAlertcenterTypeDeviceCompromised =
  GoogleAppsAlertcenterTypeDeviceCompromised'
    { _gaatdcEmail :: !(Maybe Text)
    , _gaatdcEvents :: !(Maybe [GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeDeviceCompromised' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatdcEmail'
--
-- * 'gaatdcEvents'
googleAppsAlertcenterTypeDeviceCompromised
    :: GoogleAppsAlertcenterTypeDeviceCompromised
googleAppsAlertcenterTypeDeviceCompromised =
  GoogleAppsAlertcenterTypeDeviceCompromised'
    {_gaatdcEmail = Nothing, _gaatdcEvents = Nothing}


-- | The email of the user this alert was created for.
gaatdcEmail :: Lens' GoogleAppsAlertcenterTypeDeviceCompromised (Maybe Text)
gaatdcEmail
  = lens _gaatdcEmail (\ s a -> s{_gaatdcEmail = a})

-- | Required. The list of security events.
gaatdcEvents :: Lens' GoogleAppsAlertcenterTypeDeviceCompromised [GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail]
gaatdcEvents
  = lens _gaatdcEvents (\ s a -> s{_gaatdcEvents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeDeviceCompromised
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeDeviceCompromised"
              (\ o ->
                 GoogleAppsAlertcenterTypeDeviceCompromised' <$>
                   (o .:? "email") <*> (o .:? "events" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeDeviceCompromised
         where
        toJSON
          GoogleAppsAlertcenterTypeDeviceCompromised'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gaatdcEmail,
                  ("events" .=) <$> _gaatdcEvents])

-- | A state-sponsored attack alert. Derived from audit logs.
--
-- /See:/ 'googleAppsAlertcenterTypeStateSponsoredAttack' smart constructor.
newtype GoogleAppsAlertcenterTypeStateSponsoredAttack =
  GoogleAppsAlertcenterTypeStateSponsoredAttack'
    { _gaatssaEmail :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeStateSponsoredAttack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatssaEmail'
googleAppsAlertcenterTypeStateSponsoredAttack
    :: GoogleAppsAlertcenterTypeStateSponsoredAttack
googleAppsAlertcenterTypeStateSponsoredAttack =
  GoogleAppsAlertcenterTypeStateSponsoredAttack' {_gaatssaEmail = Nothing}


-- | The email of the user this incident was created for.
gaatssaEmail :: Lens' GoogleAppsAlertcenterTypeStateSponsoredAttack (Maybe Text)
gaatssaEmail
  = lens _gaatssaEmail (\ s a -> s{_gaatssaEmail = a})

instance FromJSON
           GoogleAppsAlertcenterTypeStateSponsoredAttack
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeStateSponsoredAttack"
              (\ o ->
                 GoogleAppsAlertcenterTypeStateSponsoredAttack' <$>
                   (o .:? "email"))

instance ToJSON
           GoogleAppsAlertcenterTypeStateSponsoredAttack
         where
        toJSON
          GoogleAppsAlertcenterTypeStateSponsoredAttack'{..}
          = object (catMaybes [("email" .=) <$> _gaatssaEmail])

-- | An alert affecting a customer.
--
-- /See:/ 'googleAppsAlertcenterV1beta1Alert' smart constructor.
data GoogleAppsAlertcenterV1beta1Alert =
  GoogleAppsAlertcenterV1beta1Alert'
    { _gaavaEtag :: !(Maybe Text)
    , _gaavaStartTime :: !(Maybe DateTime')
    , _gaavaData :: !(Maybe GoogleAppsAlertcenterV1beta1AlertData)
    , _gaavaAlertId :: !(Maybe Text)
    , _gaavaSecurityInvestigationToolLink :: !(Maybe Text)
    , _gaavaCustomerId :: !(Maybe Text)
    , _gaavaUpdateTime :: !(Maybe DateTime')
    , _gaavaEndTime :: !(Maybe DateTime')
    , _gaavaMetadata :: !(Maybe GoogleAppsAlertcenterV1beta1AlertMetadata)
    , _gaavaSource :: !(Maybe Text)
    , _gaavaDeleted :: !(Maybe Bool)
    , _gaavaType :: !(Maybe Text)
    , _gaavaCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavaEtag'
--
-- * 'gaavaStartTime'
--
-- * 'gaavaData'
--
-- * 'gaavaAlertId'
--
-- * 'gaavaSecurityInvestigationToolLink'
--
-- * 'gaavaCustomerId'
--
-- * 'gaavaUpdateTime'
--
-- * 'gaavaEndTime'
--
-- * 'gaavaMetadata'
--
-- * 'gaavaSource'
--
-- * 'gaavaDeleted'
--
-- * 'gaavaType'
--
-- * 'gaavaCreateTime'
googleAppsAlertcenterV1beta1Alert
    :: GoogleAppsAlertcenterV1beta1Alert
googleAppsAlertcenterV1beta1Alert =
  GoogleAppsAlertcenterV1beta1Alert'
    { _gaavaEtag = Nothing
    , _gaavaStartTime = Nothing
    , _gaavaData = Nothing
    , _gaavaAlertId = Nothing
    , _gaavaSecurityInvestigationToolLink = Nothing
    , _gaavaCustomerId = Nothing
    , _gaavaUpdateTime = Nothing
    , _gaavaEndTime = Nothing
    , _gaavaMetadata = Nothing
    , _gaavaSource = Nothing
    , _gaavaDeleted = Nothing
    , _gaavaType = Nothing
    , _gaavaCreateTime = Nothing
    }


-- | Optional. \`etag\` is used for optimistic concurrency control as a way
-- to help prevent simultaneous updates of an alert from overwriting each
-- other. It is strongly suggested that systems make use of the \`etag\` in
-- the read-modify-write cycle to perform alert updates in order to avoid
-- race conditions: An \`etag\` is returned in the response which contains
-- alerts, and systems are expected to put that etag in the request to
-- update alert to ensure that their change will be applied to the same
-- version of the alert. If no \`etag\` is provided in the call to update
-- alert, then the existing alert is overwritten blindly.
gaavaEtag :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaEtag
  = lens _gaavaEtag (\ s a -> s{_gaavaEtag = a})

-- | Required. The time the event that caused this alert was started or
-- detected.
gaavaStartTime :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe UTCTime)
gaavaStartTime
  = lens _gaavaStartTime
      (\ s a -> s{_gaavaStartTime = a})
      . mapping _DateTime

-- | Optional. The data associated with this alert, for example
-- google.apps.alertcenter.type.DeviceCompromised.
gaavaData :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe GoogleAppsAlertcenterV1beta1AlertData)
gaavaData
  = lens _gaavaData (\ s a -> s{_gaavaData = a})

-- | Output only. The unique identifier for the alert.
gaavaAlertId :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaAlertId
  = lens _gaavaAlertId (\ s a -> s{_gaavaAlertId = a})

-- | Output only. An optional [Security Investigation
-- Tool](https:\/\/support.google.com\/a\/answer\/7575955) query for this
-- alert.
gaavaSecurityInvestigationToolLink :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaSecurityInvestigationToolLink
  = lens _gaavaSecurityInvestigationToolLink
      (\ s a -> s{_gaavaSecurityInvestigationToolLink = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
gaavaCustomerId :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaCustomerId
  = lens _gaavaCustomerId
      (\ s a -> s{_gaavaCustomerId = a})

-- | Output only. The time this alert was last updated.
gaavaUpdateTime :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe UTCTime)
gaavaUpdateTime
  = lens _gaavaUpdateTime
      (\ s a -> s{_gaavaUpdateTime = a})
      . mapping _DateTime

-- | Optional. The time the event that caused this alert ceased being active.
-- If provided, the end time must not be earlier than the start time. If
-- not provided, it indicates an ongoing alert.
gaavaEndTime :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe UTCTime)
gaavaEndTime
  = lens _gaavaEndTime (\ s a -> s{_gaavaEndTime = a})
      . mapping _DateTime

-- | Output only. The metadata associated with this alert.
gaavaMetadata :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe GoogleAppsAlertcenterV1beta1AlertMetadata)
gaavaMetadata
  = lens _gaavaMetadata
      (\ s a -> s{_gaavaMetadata = a})

-- | Required. A unique identifier for the system that reported the alert.
-- This is output only after alert is created. Supported sources are any of
-- the following: * Google Operations * Mobile device management * Gmail
-- phishing * Domain wide takeout * State sponsored attack * Google
-- identity
gaavaSource :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaSource
  = lens _gaavaSource (\ s a -> s{_gaavaSource = a})

-- | Output only. \`True\` if this alert is marked for deletion.
gaavaDeleted :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Bool)
gaavaDeleted
  = lens _gaavaDeleted (\ s a -> s{_gaavaDeleted = a})

-- | Required. The type of the alert. This is output only after alert is
-- created. For a list of available alert types see [Google Workspace Alert
-- types](\/admin-sdk\/alertcenter\/reference\/alert-types).
gaavaType :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe Text)
gaavaType
  = lens _gaavaType (\ s a -> s{_gaavaType = a})

-- | Output only. The time this alert was created.
gaavaCreateTime :: Lens' GoogleAppsAlertcenterV1beta1Alert (Maybe UTCTime)
gaavaCreateTime
  = lens _gaavaCreateTime
      (\ s a -> s{_gaavaCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleAppsAlertcenterV1beta1Alert
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterV1beta1Alert"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1Alert' <$>
                   (o .:? "etag") <*> (o .:? "startTime") <*>
                     (o .:? "data")
                     <*> (o .:? "alertId")
                     <*> (o .:? "securityInvestigationToolLink")
                     <*> (o .:? "customerId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "endTime")
                     <*> (o .:? "metadata")
                     <*> (o .:? "source")
                     <*> (o .:? "deleted")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleAppsAlertcenterV1beta1Alert
         where
        toJSON GoogleAppsAlertcenterV1beta1Alert'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gaavaEtag,
                  ("startTime" .=) <$> _gaavaStartTime,
                  ("data" .=) <$> _gaavaData,
                  ("alertId" .=) <$> _gaavaAlertId,
                  ("securityInvestigationToolLink" .=) <$>
                    _gaavaSecurityInvestigationToolLink,
                  ("customerId" .=) <$> _gaavaCustomerId,
                  ("updateTime" .=) <$> _gaavaUpdateTime,
                  ("endTime" .=) <$> _gaavaEndTime,
                  ("metadata" .=) <$> _gaavaMetadata,
                  ("source" .=) <$> _gaavaSource,
                  ("deleted" .=) <$> _gaavaDeleted,
                  ("type" .=) <$> _gaavaType,
                  ("createTime" .=) <$> _gaavaCreateTime])

-- | Proto that contains rule information.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoRuleInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo'
    { _gaatrviriResourceName :: !(Maybe Text)
    , _gaatrviriDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrviriResourceName'
--
-- * 'gaatrviriDisplayName'
googleAppsAlertcenterTypeRuleViolationInfoRuleInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
googleAppsAlertcenterTypeRuleViolationInfoRuleInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo'
    {_gaatrviriResourceName = Nothing, _gaatrviriDisplayName = Nothing}


-- | Resource name that uniquely identifies the rule.
gaatrviriResourceName :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo (Maybe Text)
gaatrviriResourceName
  = lens _gaatrviriResourceName
      (\ s a -> s{_gaatrviriResourceName = a})

-- | User provided name of the rule.
gaatrviriDisplayName :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo (Maybe Text)
gaatrviriDisplayName
  = lens _gaatrviriDisplayName
      (\ s a -> s{_gaatrviriDisplayName = a})

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo'
                   <$> (o .:? "resourceName") <*> (o .:? "displayName"))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _gaatrviriResourceName,
                  ("displayName" .=) <$> _gaatrviriDisplayName])

-- | Metadata related to the action.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoActionInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo' with the minimum fields required to make a request.
--
googleAppsAlertcenterTypeRuleViolationInfoActionInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
googleAppsAlertcenterTypeRuleViolationInfoActionInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo'


instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo"
              (\ o ->
                 pure
                   GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo')

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
         where
        toJSON = const emptyObject

-- | Attachment with application-specific information about an alert.
--
-- /See:/ 'googleAppsAlertcenterTypeAttachment' smart constructor.
newtype GoogleAppsAlertcenterTypeAttachment =
  GoogleAppsAlertcenterTypeAttachment'
    { _gaataCSV :: Maybe GoogleAppsAlertcenterTypeAttachmentCSV
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaataCSV'
googleAppsAlertcenterTypeAttachment
    :: GoogleAppsAlertcenterTypeAttachment
googleAppsAlertcenterTypeAttachment =
  GoogleAppsAlertcenterTypeAttachment' {_gaataCSV = Nothing}


-- | A CSV file attachment.
gaataCSV :: Lens' GoogleAppsAlertcenterTypeAttachment (Maybe GoogleAppsAlertcenterTypeAttachmentCSV)
gaataCSV = lens _gaataCSV (\ s a -> s{_gaataCSV = a})

instance FromJSON GoogleAppsAlertcenterTypeAttachment
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeAttachment"
              (\ o ->
                 GoogleAppsAlertcenterTypeAttachment' <$>
                   (o .:? "csv"))

instance ToJSON GoogleAppsAlertcenterTypeAttachment
         where
        toJSON GoogleAppsAlertcenterTypeAttachment'{..}
          = object (catMaybes [("csv" .=) <$> _gaataCSV])

-- | A user.
--
-- /See:/ 'googleAppsAlertcenterTypeUser' smart constructor.
data GoogleAppsAlertcenterTypeUser =
  GoogleAppsAlertcenterTypeUser'
    { _gaatuEmailAddress :: !(Maybe Text)
    , _gaatuDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatuEmailAddress'
--
-- * 'gaatuDisplayName'
googleAppsAlertcenterTypeUser
    :: GoogleAppsAlertcenterTypeUser
googleAppsAlertcenterTypeUser =
  GoogleAppsAlertcenterTypeUser'
    {_gaatuEmailAddress = Nothing, _gaatuDisplayName = Nothing}


-- | Email address of the user.
gaatuEmailAddress :: Lens' GoogleAppsAlertcenterTypeUser (Maybe Text)
gaatuEmailAddress
  = lens _gaatuEmailAddress
      (\ s a -> s{_gaatuEmailAddress = a})

-- | Display name of the user.
gaatuDisplayName :: Lens' GoogleAppsAlertcenterTypeUser (Maybe Text)
gaatuDisplayName
  = lens _gaatuDisplayName
      (\ s a -> s{_gaatuDisplayName = a})

instance FromJSON GoogleAppsAlertcenterTypeUser where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeUser"
              (\ o ->
                 GoogleAppsAlertcenterTypeUser' <$>
                   (o .:? "emailAddress") <*> (o .:? "displayName"))

instance ToJSON GoogleAppsAlertcenterTypeUser where
        toJSON GoogleAppsAlertcenterTypeUser'{..}
          = object
              (catMaybes
                 [("emailAddress" .=) <$> _gaatuEmailAddress,
                  ("displayName" .=) <$> _gaatuDisplayName])

-- | A representation of a single data row in a CSV file.
--
-- /See:/ 'googleAppsAlertcenterTypeAttachmentCSVCSVRow' smart constructor.
newtype GoogleAppsAlertcenterTypeAttachmentCSVCSVRow =
  GoogleAppsAlertcenterTypeAttachmentCSVCSVRow'
    { _gaataccrEntries :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAttachmentCSVCSVRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaataccrEntries'
googleAppsAlertcenterTypeAttachmentCSVCSVRow
    :: GoogleAppsAlertcenterTypeAttachmentCSVCSVRow
googleAppsAlertcenterTypeAttachmentCSVCSVRow =
  GoogleAppsAlertcenterTypeAttachmentCSVCSVRow' {_gaataccrEntries = Nothing}


-- | The data entries in a CSV file row, as a string array rather than a
-- single comma-separated string.
gaataccrEntries :: Lens' GoogleAppsAlertcenterTypeAttachmentCSVCSVRow [Text]
gaataccrEntries
  = lens _gaataccrEntries
      (\ s a -> s{_gaataccrEntries = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeAttachmentCSVCSVRow
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeAttachmentCSVCSVRow"
              (\ o ->
                 GoogleAppsAlertcenterTypeAttachmentCSVCSVRow' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeAttachmentCSVCSVRow
         where
        toJSON
          GoogleAppsAlertcenterTypeAttachmentCSVCSVRow'{..}
          = object
              (catMaybes [("entries" .=) <$> _gaataccrEntries])

-- | Alerts for user account warning events.
--
-- /See:/ 'googleAppsAlertcenterTypeAccountWarning' smart constructor.
data GoogleAppsAlertcenterTypeAccountWarning =
  GoogleAppsAlertcenterTypeAccountWarning'
    { _gaatawEmail :: !(Maybe Text)
    , _gaatawLoginDetails :: !(Maybe GoogleAppsAlertcenterTypeAccountWarningLoginDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAccountWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatawEmail'
--
-- * 'gaatawLoginDetails'
googleAppsAlertcenterTypeAccountWarning
    :: GoogleAppsAlertcenterTypeAccountWarning
googleAppsAlertcenterTypeAccountWarning =
  GoogleAppsAlertcenterTypeAccountWarning'
    {_gaatawEmail = Nothing, _gaatawLoginDetails = Nothing}


-- | Required. The email of the user that this event belongs to.
gaatawEmail :: Lens' GoogleAppsAlertcenterTypeAccountWarning (Maybe Text)
gaatawEmail
  = lens _gaatawEmail (\ s a -> s{_gaatawEmail = a})

-- | Optional. Details of the login action associated with the warning event.
-- This is only available for: * Suspicious login * Suspicious login (less
-- secure app) * Suspicious programmatic login * User suspended (suspicious
-- activity)
gaatawLoginDetails :: Lens' GoogleAppsAlertcenterTypeAccountWarning (Maybe GoogleAppsAlertcenterTypeAccountWarningLoginDetails)
gaatawLoginDetails
  = lens _gaatawLoginDetails
      (\ s a -> s{_gaatawLoginDetails = a})

instance FromJSON
           GoogleAppsAlertcenterTypeAccountWarning
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeAccountWarning"
              (\ o ->
                 GoogleAppsAlertcenterTypeAccountWarning' <$>
                   (o .:? "email") <*> (o .:? "loginDetails"))

instance ToJSON
           GoogleAppsAlertcenterTypeAccountWarning
         where
        toJSON GoogleAppsAlertcenterTypeAccountWarning'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gaatawEmail,
                  ("loginDetails" .=) <$> _gaatawLoginDetails])

-- | Details of a message in phishing spike alert.
--
-- /See:/ 'googleAppsAlertcenterTypeGmailMessageInfo' smart constructor.
data GoogleAppsAlertcenterTypeGmailMessageInfo =
  GoogleAppsAlertcenterTypeGmailMessageInfo'
    { _gaatgmiMD5HashSubject :: !(Maybe Text)
    , _gaatgmiSubjectText :: !(Maybe Text)
    , _gaatgmiDate :: !(Maybe DateTime')
    , _gaatgmiMD5HashMessageBody :: !(Maybe Text)
    , _gaatgmiAttachmentsSha256Hash :: !(Maybe [Text])
    , _gaatgmiRecipient :: !(Maybe Text)
    , _gaatgmiMessageBodySnippet :: !(Maybe Text)
    , _gaatgmiMessageId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeGmailMessageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatgmiMD5HashSubject'
--
-- * 'gaatgmiSubjectText'
--
-- * 'gaatgmiDate'
--
-- * 'gaatgmiMD5HashMessageBody'
--
-- * 'gaatgmiAttachmentsSha256Hash'
--
-- * 'gaatgmiRecipient'
--
-- * 'gaatgmiMessageBodySnippet'
--
-- * 'gaatgmiMessageId'
googleAppsAlertcenterTypeGmailMessageInfo
    :: GoogleAppsAlertcenterTypeGmailMessageInfo
googleAppsAlertcenterTypeGmailMessageInfo =
  GoogleAppsAlertcenterTypeGmailMessageInfo'
    { _gaatgmiMD5HashSubject = Nothing
    , _gaatgmiSubjectText = Nothing
    , _gaatgmiDate = Nothing
    , _gaatgmiMD5HashMessageBody = Nothing
    , _gaatgmiAttachmentsSha256Hash = Nothing
    , _gaatgmiRecipient = Nothing
    , _gaatgmiMessageBodySnippet = Nothing
    , _gaatgmiMessageId = Nothing
    }


-- | The MD5 Hash of email\'s subject (only available for reported emails).
gaatgmiMD5HashSubject :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiMD5HashSubject
  = lens _gaatgmiMD5HashSubject
      (\ s a -> s{_gaatgmiMD5HashSubject = a})

-- | The email subject text (only available for reported emails).
gaatgmiSubjectText :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiSubjectText
  = lens _gaatgmiSubjectText
      (\ s a -> s{_gaatgmiSubjectText = a})

-- | The date the malicious email was sent.
gaatgmiDate :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe UTCTime)
gaatgmiDate
  = lens _gaatgmiDate (\ s a -> s{_gaatgmiDate = a}) .
      mapping _DateTime

-- | The hash of the message body text.
gaatgmiMD5HashMessageBody :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiMD5HashMessageBody
  = lens _gaatgmiMD5HashMessageBody
      (\ s a -> s{_gaatgmiMD5HashMessageBody = a})

-- | The \`SHA256\` hash of email\'s attachment and all MIME parts.
gaatgmiAttachmentsSha256Hash :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo [Text]
gaatgmiAttachmentsSha256Hash
  = lens _gaatgmiAttachmentsSha256Hash
      (\ s a -> s{_gaatgmiAttachmentsSha256Hash = a})
      . _Default
      . _Coerce

-- | The recipient of this email.
gaatgmiRecipient :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiRecipient
  = lens _gaatgmiRecipient
      (\ s a -> s{_gaatgmiRecipient = a})

-- | The snippet of the message body text (only available for reported
-- emails).
gaatgmiMessageBodySnippet :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiMessageBodySnippet
  = lens _gaatgmiMessageBodySnippet
      (\ s a -> s{_gaatgmiMessageBodySnippet = a})

-- | The message ID.
gaatgmiMessageId :: Lens' GoogleAppsAlertcenterTypeGmailMessageInfo (Maybe Text)
gaatgmiMessageId
  = lens _gaatgmiMessageId
      (\ s a -> s{_gaatgmiMessageId = a})

instance FromJSON
           GoogleAppsAlertcenterTypeGmailMessageInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeGmailMessageInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeGmailMessageInfo' <$>
                   (o .:? "md5HashSubject") <*> (o .:? "subjectText")
                     <*> (o .:? "date")
                     <*> (o .:? "md5HashMessageBody")
                     <*> (o .:? "attachmentsSha256Hash" .!= mempty)
                     <*> (o .:? "recipient")
                     <*> (o .:? "messageBodySnippet")
                     <*> (o .:? "messageId"))

instance ToJSON
           GoogleAppsAlertcenterTypeGmailMessageInfo
         where
        toJSON GoogleAppsAlertcenterTypeGmailMessageInfo'{..}
          = object
              (catMaybes
                 [("md5HashSubject" .=) <$> _gaatgmiMD5HashSubject,
                  ("subjectText" .=) <$> _gaatgmiSubjectText,
                  ("date" .=) <$> _gaatgmiDate,
                  ("md5HashMessageBody" .=) <$>
                    _gaatgmiMD5HashMessageBody,
                  ("attachmentsSha256Hash" .=) <$>
                    _gaatgmiAttachmentsSha256Hash,
                  ("recipient" .=) <$> _gaatgmiRecipient,
                  ("messageBodySnippet" .=) <$>
                    _gaatgmiMessageBodySnippet,
                  ("messageId" .=) <$> _gaatgmiMessageId])

-- | Proto for all phishing alerts with common payload. Supported types are
-- any of the following: * User reported phishing * User reported spam
-- spike * Suspicious message reported * Phishing reclassification *
-- Malware reclassification * Gmail potential employee spoofing
--
-- /See:/ 'googleAppsAlertcenterTypeMailPhishing' smart constructor.
data GoogleAppsAlertcenterTypeMailPhishing =
  GoogleAppsAlertcenterTypeMailPhishing'
    { _gaatmpSystemActionType :: !(Maybe GoogleAppsAlertcenterTypeMailPhishingSystemActionType)
    , _gaatmpIsInternal :: !(Maybe Bool)
    , _gaatmpDomainId :: !(Maybe GoogleAppsAlertcenterTypeDomainId)
    , _gaatmpMessages :: !(Maybe [GoogleAppsAlertcenterTypeGmailMessageInfo])
    , _gaatmpMaliciousEntity :: !(Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeMailPhishing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatmpSystemActionType'
--
-- * 'gaatmpIsInternal'
--
-- * 'gaatmpDomainId'
--
-- * 'gaatmpMessages'
--
-- * 'gaatmpMaliciousEntity'
googleAppsAlertcenterTypeMailPhishing
    :: GoogleAppsAlertcenterTypeMailPhishing
googleAppsAlertcenterTypeMailPhishing =
  GoogleAppsAlertcenterTypeMailPhishing'
    { _gaatmpSystemActionType = Nothing
    , _gaatmpIsInternal = Nothing
    , _gaatmpDomainId = Nothing
    , _gaatmpMessages = Nothing
    , _gaatmpMaliciousEntity = Nothing
    }


-- | System actions on the messages.
gaatmpSystemActionType :: Lens' GoogleAppsAlertcenterTypeMailPhishing (Maybe GoogleAppsAlertcenterTypeMailPhishingSystemActionType)
gaatmpSystemActionType
  = lens _gaatmpSystemActionType
      (\ s a -> s{_gaatmpSystemActionType = a})

-- | If \`true\`, the email originated from within the organization.
gaatmpIsInternal :: Lens' GoogleAppsAlertcenterTypeMailPhishing (Maybe Bool)
gaatmpIsInternal
  = lens _gaatmpIsInternal
      (\ s a -> s{_gaatmpIsInternal = a})

-- | The domain ID.
gaatmpDomainId :: Lens' GoogleAppsAlertcenterTypeMailPhishing (Maybe GoogleAppsAlertcenterTypeDomainId)
gaatmpDomainId
  = lens _gaatmpDomainId
      (\ s a -> s{_gaatmpDomainId = a})

-- | The list of messages contained by this alert.
gaatmpMessages :: Lens' GoogleAppsAlertcenterTypeMailPhishing [GoogleAppsAlertcenterTypeGmailMessageInfo]
gaatmpMessages
  = lens _gaatmpMessages
      (\ s a -> s{_gaatmpMessages = a})
      . _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
gaatmpMaliciousEntity :: Lens' GoogleAppsAlertcenterTypeMailPhishing (Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
gaatmpMaliciousEntity
  = lens _gaatmpMaliciousEntity
      (\ s a -> s{_gaatmpMaliciousEntity = a})

instance FromJSON
           GoogleAppsAlertcenterTypeMailPhishing
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeMailPhishing"
              (\ o ->
                 GoogleAppsAlertcenterTypeMailPhishing' <$>
                   (o .:? "systemActionType") <*> (o .:? "isInternal")
                     <*> (o .:? "domainId")
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON GoogleAppsAlertcenterTypeMailPhishing
         where
        toJSON GoogleAppsAlertcenterTypeMailPhishing'{..}
          = object
              (catMaybes
                 [("systemActionType" .=) <$> _gaatmpSystemActionType,
                  ("isInternal" .=) <$> _gaatmpIsInternal,
                  ("domainId" .=) <$> _gaatmpDomainId,
                  ("messages" .=) <$> _gaatmpMessages,
                  ("maliciousEntity" .=) <$> _gaatmpMaliciousEntity])

-- | Alerts from Google Workspace Security Center rules service configured by
-- an admin.
--
-- /See:/ 'googleAppsAlertcenterTypeActivityRule' smart constructor.
data GoogleAppsAlertcenterTypeActivityRule =
  GoogleAppsAlertcenterTypeActivityRule'
    { _gaatarSupersededAlerts :: !(Maybe [Text])
    , _gaatarActionNames :: !(Maybe [Text])
    , _gaatarSupersedingAlert :: !(Maybe Text)
    , _gaatarTriggerSource :: !(Maybe Text)
    , _gaatarWindowSize :: !(Maybe GDuration)
    , _gaatarUpdateTime :: !(Maybe DateTime')
    , _gaatarName :: !(Maybe Text)
    , _gaatarThreshold :: !(Maybe Text)
    , _gaatarQuery :: !(Maybe Text)
    , _gaatarDisplayName :: !(Maybe Text)
    , _gaatarDescription :: !(Maybe Text)
    , _gaatarCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeActivityRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatarSupersededAlerts'
--
-- * 'gaatarActionNames'
--
-- * 'gaatarSupersedingAlert'
--
-- * 'gaatarTriggerSource'
--
-- * 'gaatarWindowSize'
--
-- * 'gaatarUpdateTime'
--
-- * 'gaatarName'
--
-- * 'gaatarThreshold'
--
-- * 'gaatarQuery'
--
-- * 'gaatarDisplayName'
--
-- * 'gaatarDescription'
--
-- * 'gaatarCreateTime'
googleAppsAlertcenterTypeActivityRule
    :: GoogleAppsAlertcenterTypeActivityRule
googleAppsAlertcenterTypeActivityRule =
  GoogleAppsAlertcenterTypeActivityRule'
    { _gaatarSupersededAlerts = Nothing
    , _gaatarActionNames = Nothing
    , _gaatarSupersedingAlert = Nothing
    , _gaatarTriggerSource = Nothing
    , _gaatarWindowSize = Nothing
    , _gaatarUpdateTime = Nothing
    , _gaatarName = Nothing
    , _gaatarThreshold = Nothing
    , _gaatarQuery = Nothing
    , _gaatarDisplayName = Nothing
    , _gaatarDescription = Nothing
    , _gaatarCreateTime = Nothing
    }


-- | List of alert IDs superseded by this alert. It is used to indicate that
-- this alert is essentially extension of superseded alerts and we found
-- the relationship after creating these alerts.
gaatarSupersededAlerts :: Lens' GoogleAppsAlertcenterTypeActivityRule [Text]
gaatarSupersededAlerts
  = lens _gaatarSupersededAlerts
      (\ s a -> s{_gaatarSupersededAlerts = a})
      . _Default
      . _Coerce

-- | List of action names associated with the rule threshold.
gaatarActionNames :: Lens' GoogleAppsAlertcenterTypeActivityRule [Text]
gaatarActionNames
  = lens _gaatarActionNames
      (\ s a -> s{_gaatarActionNames = a})
      . _Default
      . _Coerce

-- | Alert ID superseding this alert. It is used to indicate that superseding
-- alert is essentially extension of this alert and we found the
-- relationship after creating both alerts.
gaatarSupersedingAlert :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarSupersedingAlert
  = lens _gaatarSupersedingAlert
      (\ s a -> s{_gaatarSupersedingAlert = a})

-- | The trigger sources for this rule. * GMAIL_EVENTS * DEVICE_EVENTS *
-- USER_EVENTS
gaatarTriggerSource :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarTriggerSource
  = lens _gaatarTriggerSource
      (\ s a -> s{_gaatarTriggerSource = a})

-- | Rule window size. Possible values are 1 hour or 24 hours.
gaatarWindowSize :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Scientific)
gaatarWindowSize
  = lens _gaatarWindowSize
      (\ s a -> s{_gaatarWindowSize = a})
      . mapping _GDuration

-- | The timestamp of the last update to the rule.
gaatarUpdateTime :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe UTCTime)
gaatarUpdateTime
  = lens _gaatarUpdateTime
      (\ s a -> s{_gaatarUpdateTime = a})
      . mapping _DateTime

-- | Rule name.
gaatarName :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarName
  = lens _gaatarName (\ s a -> s{_gaatarName = a})

-- | Alert threshold is for example “COUNT > 5”.
gaatarThreshold :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarThreshold
  = lens _gaatarThreshold
      (\ s a -> s{_gaatarThreshold = a})

-- | Query that is used to get the data from the associated source.
gaatarQuery :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarQuery
  = lens _gaatarQuery (\ s a -> s{_gaatarQuery = a})

-- | Alert display name.
gaatarDisplayName :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarDisplayName
  = lens _gaatarDisplayName
      (\ s a -> s{_gaatarDisplayName = a})

-- | Description of the rule.
gaatarDescription :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe Text)
gaatarDescription
  = lens _gaatarDescription
      (\ s a -> s{_gaatarDescription = a})

-- | Rule create timestamp.
gaatarCreateTime :: Lens' GoogleAppsAlertcenterTypeActivityRule (Maybe UTCTime)
gaatarCreateTime
  = lens _gaatarCreateTime
      (\ s a -> s{_gaatarCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleAppsAlertcenterTypeActivityRule
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeActivityRule"
              (\ o ->
                 GoogleAppsAlertcenterTypeActivityRule' <$>
                   (o .:? "supersededAlerts" .!= mempty) <*>
                     (o .:? "actionNames" .!= mempty)
                     <*> (o .:? "supersedingAlert")
                     <*> (o .:? "triggerSource")
                     <*> (o .:? "windowSize")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "threshold")
                     <*> (o .:? "query")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleAppsAlertcenterTypeActivityRule
         where
        toJSON GoogleAppsAlertcenterTypeActivityRule'{..}
          = object
              (catMaybes
                 [("supersededAlerts" .=) <$> _gaatarSupersededAlerts,
                  ("actionNames" .=) <$> _gaatarActionNames,
                  ("supersedingAlert" .=) <$> _gaatarSupersedingAlert,
                  ("triggerSource" .=) <$> _gaatarTriggerSource,
                  ("windowSize" .=) <$> _gaatarWindowSize,
                  ("updateTime" .=) <$> _gaatarUpdateTime,
                  ("name" .=) <$> _gaatarName,
                  ("threshold" .=) <$> _gaatarThreshold,
                  ("query" .=) <$> _gaatarQuery,
                  ("displayName" .=) <$> _gaatarDisplayName,
                  ("description" .=) <$> _gaatarDescription,
                  ("createTime" .=) <$> _gaatarCreateTime])

-- | The status details for each failed alert_id.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus' smart constructor.
newtype GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus'
    { _gaavbdarfasAddtional :: HashMap Text GoogleRpcStatus
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbdarfasAddtional'
googleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
    :: HashMap Text GoogleRpcStatus -- ^ 'gaavbdarfasAddtional'
    -> GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
googleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus pGaavbdarfasAddtional_ =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus'
    {_gaavbdarfasAddtional = _Coerce # pGaavbdarfasAddtional_}


gaavbdarfasAddtional :: Lens' GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus (HashMap Text GoogleRpcStatus)
gaavbdarfasAddtional
  = lens _gaavbdarfasAddtional
      (\ s a -> s{_gaavbdarfasAddtional = a})
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus
         where
        toJSON = toJSON . _gaavbdarfasAddtional

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'


instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

-- | The status details for each failed alert_id.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus' smart constructor.
newtype GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus'
    { _gaavbuarfasAddtional :: HashMap Text GoogleRpcStatus
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbuarfasAddtional'
googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
    :: HashMap Text GoogleRpcStatus -- ^ 'gaavbuarfasAddtional'
    -> GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus pGaavbuarfasAddtional_ =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus'
    {_gaavbuarfasAddtional = _Coerce # pGaavbuarfasAddtional_}


gaavbuarfasAddtional :: Lens' GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus (HashMap Text GoogleRpcStatus)
gaavbuarfasAddtional
  = lens _gaavbuarfasAddtional
      (\ s a -> s{_gaavbuarfasAddtional = a})
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus
         where
        toJSON = toJSON . _gaavbuarfasAddtional

-- | Proto that contains resource information.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoResourceInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo'
    { _gaatrviriDocumentId :: !(Maybe Text)
    , _gaatrviriResourceTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrviriDocumentId'
--
-- * 'gaatrviriResourceTitle'
googleAppsAlertcenterTypeRuleViolationInfoResourceInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
googleAppsAlertcenterTypeRuleViolationInfoResourceInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo'
    {_gaatrviriDocumentId = Nothing, _gaatrviriResourceTitle = Nothing}


-- | Drive file ID.
gaatrviriDocumentId :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo (Maybe Text)
gaatrviriDocumentId
  = lens _gaatrviriDocumentId
      (\ s a -> s{_gaatrviriDocumentId = a})

-- | Title of the resource, for example email subject, or document title.
gaatrviriResourceTitle :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo (Maybe Text)
gaatrviriResourceTitle
  = lens _gaatrviriResourceTitle
      (\ s a -> s{_gaatrviriResourceTitle = a})

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo'
                   <$> (o .:? "documentId") <*> (o .:? "resourceTitle"))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo'{..}
          = object
              (catMaybes
                 [("documentId" .=) <$> _gaatrviriDocumentId,
                  ("resourceTitle" .=) <$> _gaatrviriResourceTitle])

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | Response message for an alert listing request.
--
-- /See:/ 'googleAppsAlertcenterV1beta1ListAlertsResponse' smart constructor.
data GoogleAppsAlertcenterV1beta1ListAlertsResponse =
  GoogleAppsAlertcenterV1beta1ListAlertsResponse'
    { _gaavlarNextPageToken :: !(Maybe Text)
    , _gaavlarAlerts :: !(Maybe [GoogleAppsAlertcenterV1beta1Alert])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1ListAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavlarNextPageToken'
--
-- * 'gaavlarAlerts'
googleAppsAlertcenterV1beta1ListAlertsResponse
    :: GoogleAppsAlertcenterV1beta1ListAlertsResponse
googleAppsAlertcenterV1beta1ListAlertsResponse =
  GoogleAppsAlertcenterV1beta1ListAlertsResponse'
    {_gaavlarNextPageToken = Nothing, _gaavlarAlerts = Nothing}


-- | The token for the next page. If not empty, indicates that there may be
-- more alerts that match the listing request; this value can be used in a
-- subsequent ListAlertsRequest to get alerts continuing from last result
-- of the current list call.
gaavlarNextPageToken :: Lens' GoogleAppsAlertcenterV1beta1ListAlertsResponse (Maybe Text)
gaavlarNextPageToken
  = lens _gaavlarNextPageToken
      (\ s a -> s{_gaavlarNextPageToken = a})

-- | The list of alerts.
gaavlarAlerts :: Lens' GoogleAppsAlertcenterV1beta1ListAlertsResponse [GoogleAppsAlertcenterV1beta1Alert]
gaavlarAlerts
  = lens _gaavlarAlerts
      (\ s a -> s{_gaavlarAlerts = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1ListAlertsResponse
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1ListAlertsResponse"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1ListAlertsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "alerts" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterV1beta1ListAlertsResponse
         where
        toJSON
          GoogleAppsAlertcenterV1beta1ListAlertsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gaavlarNextPageToken,
                  ("alerts" .=) <$> _gaavlarAlerts])

-- | Detector defined by administrators.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo'
    { _gaatrvimiuddiResourceName :: !(Maybe Text)
    , _gaatrvimiuddiDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrvimiuddiResourceName'
--
-- * 'gaatrvimiuddiDisplayName'
googleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
googleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo'
    {_gaatrvimiuddiResourceName = Nothing, _gaatrvimiuddiDisplayName = Nothing}


-- | Resource name that uniquely identifies the detector.
gaatrvimiuddiResourceName :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo (Maybe Text)
gaatrvimiuddiResourceName
  = lens _gaatrvimiuddiResourceName
      (\ s a -> s{_gaatrvimiuddiResourceName = a})

-- | Display name of the detector.
gaatrvimiuddiDisplayName :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo (Maybe Text)
gaatrvimiuddiDisplayName
  = lens _gaatrvimiuddiDisplayName
      (\ s a -> s{_gaatrvimiuddiDisplayName = a})

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo'
                   <$> (o .:? "resourceName") <*> (o .:? "displayName"))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _gaatrvimiuddiResourceName,
                  ("displayName" .=) <$> _gaatrvimiuddiDisplayName])

-- | Alerts that get triggered on violations of Data Loss Prevention (DLP)
-- rules.
--
-- /See:/ 'googleAppsAlertcenterTypeDlpRuleViolation' smart constructor.
newtype GoogleAppsAlertcenterTypeDlpRuleViolation =
  GoogleAppsAlertcenterTypeDlpRuleViolation'
    { _gaatdrvRuleViolationInfo :: Maybe GoogleAppsAlertcenterTypeRuleViolationInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeDlpRuleViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatdrvRuleViolationInfo'
googleAppsAlertcenterTypeDlpRuleViolation
    :: GoogleAppsAlertcenterTypeDlpRuleViolation
googleAppsAlertcenterTypeDlpRuleViolation =
  GoogleAppsAlertcenterTypeDlpRuleViolation'
    {_gaatdrvRuleViolationInfo = Nothing}


-- | Details about the violated DLP rule. Admins can use the predefined
-- detectors provided by Google Cloud DLP https:\/\/cloud.google.com\/dlp\/
-- when setting up a DLP rule. Matched Cloud DLP detectors in this
-- violation if any will be captured in the MatchInfo.predefined_detector.
gaatdrvRuleViolationInfo :: Lens' GoogleAppsAlertcenterTypeDlpRuleViolation (Maybe GoogleAppsAlertcenterTypeRuleViolationInfo)
gaatdrvRuleViolationInfo
  = lens _gaatdrvRuleViolationInfo
      (\ s a -> s{_gaatdrvRuleViolationInfo = a})

instance FromJSON
           GoogleAppsAlertcenterTypeDlpRuleViolation
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeDlpRuleViolation"
              (\ o ->
                 GoogleAppsAlertcenterTypeDlpRuleViolation' <$>
                   (o .:? "ruleViolationInfo"))

instance ToJSON
           GoogleAppsAlertcenterTypeDlpRuleViolation
         where
        toJSON GoogleAppsAlertcenterTypeDlpRuleViolation'{..}
          = object
              (catMaybes
                 [("ruleViolationInfo" .=) <$>
                    _gaatdrvRuleViolationInfo])

-- | A reference to a Cloud Pubsub topic. To register for notifications, the
-- owner of the topic must grant
-- \`alerts-api-push-notifications\'system.gserviceaccount.com\` the
-- \`projects.topics.publish\` permission.
--
-- /See:/ 'googleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic' smart constructor.
data GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic =
  GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic'
    { _gaavsncptTopicName :: !(Maybe Text)
    , _gaavsncptPayloadFormat :: !(Maybe GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavsncptTopicName'
--
-- * 'gaavsncptPayloadFormat'
googleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
    :: GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
googleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic =
  GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic'
    {_gaavsncptTopicName = Nothing, _gaavsncptPayloadFormat = Nothing}


-- | The \`name\` field of a Cloud Pubsub [Topic]
-- (https:\/\/cloud.google.com\/pubsub\/docs\/reference\/rest\/v1\/projects.topics#Topic).
gaavsncptTopicName :: Lens' GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic (Maybe Text)
gaavsncptTopicName
  = lens _gaavsncptTopicName
      (\ s a -> s{_gaavsncptTopicName = a})

-- | Optional. The format of the payload that would be sent. If not specified
-- the format will be JSON.
gaavsncptPayloadFormat :: Lens' GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic (Maybe GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopicPayloadFormat)
gaavsncptPayloadFormat
  = lens _gaavsncptPayloadFormat
      (\ s a -> s{_gaavsncptPayloadFormat = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic'
                   <$> (o .:? "topicName") <*> (o .:? "payloadFormat"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
         where
        toJSON
          GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic'{..}
          = object
              (catMaybes
                 [("topicName" .=) <$> _gaavsncptTopicName,
                  ("payloadFormat" .=) <$> _gaavsncptPayloadFormat])

-- | A representation of a CSV file attachment, as a list of column headers
-- and a list of data rows.
--
-- /See:/ 'googleAppsAlertcenterTypeAttachmentCSV' smart constructor.
data GoogleAppsAlertcenterTypeAttachmentCSV =
  GoogleAppsAlertcenterTypeAttachmentCSV'
    { _gaatacDataRows :: !(Maybe [GoogleAppsAlertcenterTypeAttachmentCSVCSVRow])
    , _gaatacHeaders :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAttachmentCSV' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatacDataRows'
--
-- * 'gaatacHeaders'
googleAppsAlertcenterTypeAttachmentCSV
    :: GoogleAppsAlertcenterTypeAttachmentCSV
googleAppsAlertcenterTypeAttachmentCSV =
  GoogleAppsAlertcenterTypeAttachmentCSV'
    {_gaatacDataRows = Nothing, _gaatacHeaders = Nothing}


-- | The list of data rows in a CSV file, as string arrays rather than as a
-- single comma-separated string.
gaatacDataRows :: Lens' GoogleAppsAlertcenterTypeAttachmentCSV [GoogleAppsAlertcenterTypeAttachmentCSVCSVRow]
gaatacDataRows
  = lens _gaatacDataRows
      (\ s a -> s{_gaatacDataRows = a})
      . _Default
      . _Coerce

-- | The list of headers for data columns in a CSV file.
gaatacHeaders :: Lens' GoogleAppsAlertcenterTypeAttachmentCSV [Text]
gaatacHeaders
  = lens _gaatacHeaders
      (\ s a -> s{_gaatacHeaders = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeAttachmentCSV
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeAttachmentCSV"
              (\ o ->
                 GoogleAppsAlertcenterTypeAttachmentCSV' <$>
                   (o .:? "dataRows" .!= mempty) <*>
                     (o .:? "headers" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeAttachmentCSV
         where
        toJSON GoogleAppsAlertcenterTypeAttachmentCSV'{..}
          = object
              (catMaybes
                 [("dataRows" .=) <$> _gaatacDataRows,
                  ("headers" .=) <$> _gaatacHeaders])

-- | Response to batch delete operation on alerts.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchDeleteAlertsResponse' smart constructor.
data GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse'
    { _gaavbdarSuccessAlertIds :: !(Maybe [Text])
    , _gaavbdarFailedAlertStatus :: !(Maybe GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbdarSuccessAlertIds'
--
-- * 'gaavbdarFailedAlertStatus'
googleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
    :: GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
googleAppsAlertcenterV1beta1BatchDeleteAlertsResponse =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse'
    {_gaavbdarSuccessAlertIds = Nothing, _gaavbdarFailedAlertStatus = Nothing}


-- | The successful list of alert IDs.
gaavbdarSuccessAlertIds :: Lens' GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse [Text]
gaavbdarSuccessAlertIds
  = lens _gaavbdarSuccessAlertIds
      (\ s a -> s{_gaavbdarSuccessAlertIds = a})
      . _Default
      . _Coerce

-- | The status details for each failed alert_id.
gaavbdarFailedAlertStatus :: Lens' GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse (Maybe GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponseFailedAlertStatus)
gaavbdarFailedAlertStatus
  = lens _gaavbdarFailedAlertStatus
      (\ s a -> s{_gaavbdarFailedAlertStatus = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse'
                   <$>
                   (o .:? "successAlertIds" .!= mempty) <*>
                     (o .:? "failedAlertStatus"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
         where
        toJSON
          GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse'{..}
          = object
              (catMaybes
                 [("successAlertIds" .=) <$> _gaavbdarSuccessAlertIds,
                  ("failedAlertStatus" .=) <$>
                    _gaavbdarFailedAlertStatus])

-- | Requests for one application that needs default SQL setup.
--
-- /See:/ 'googleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo' smart constructor.
data GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo =
  GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo'
    { _gaatamsqlsnriNumberOfRequests :: !(Maybe (Textual Int64))
    , _gaatamsqlsnriAppDeveloperEmail :: !(Maybe [Text])
    , _gaatamsqlsnriAppKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatamsqlsnriNumberOfRequests'
--
-- * 'gaatamsqlsnriAppDeveloperEmail'
--
-- * 'gaatamsqlsnriAppKey'
googleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
    :: GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
googleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo =
  GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo'
    { _gaatamsqlsnriNumberOfRequests = Nothing
    , _gaatamsqlsnriAppDeveloperEmail = Nothing
    , _gaatamsqlsnriAppKey = Nothing
    }


-- | Required. Number of requests sent for this application to set up default
-- SQL instance.
gaatamsqlsnriNumberOfRequests :: Lens' GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo (Maybe Int64)
gaatamsqlsnriNumberOfRequests
  = lens _gaatamsqlsnriNumberOfRequests
      (\ s a -> s{_gaatamsqlsnriNumberOfRequests = a})
      . mapping _Coerce

-- | List of app developers who triggered notifications for above
-- application.
gaatamsqlsnriAppDeveloperEmail :: Lens' GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo [Text]
gaatamsqlsnriAppDeveloperEmail
  = lens _gaatamsqlsnriAppDeveloperEmail
      (\ s a -> s{_gaatamsqlsnriAppDeveloperEmail = a})
      . _Default
      . _Coerce

-- | Required. The application that requires the SQL setup.
gaatamsqlsnriAppKey :: Lens' GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo (Maybe Text)
gaatamsqlsnriAppKey
  = lens _gaatamsqlsnriAppKey
      (\ s a -> s{_gaatamsqlsnriAppKey = a})

instance FromJSON
           GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo'
                   <$>
                   (o .:? "numberOfRequests") <*>
                     (o .:? "appDeveloperEmail" .!= mempty)
                     <*> (o .:? "appKey"))

instance ToJSON
           GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo'{..}
          = object
              (catMaybes
                 [("numberOfRequests" .=) <$>
                    _gaatamsqlsnriNumberOfRequests,
                  ("appDeveloperEmail" .=) <$>
                    _gaatamsqlsnriAppDeveloperEmail,
                  ("appKey" .=) <$> _gaatamsqlsnriAppKey])

-- | A mobile suspicious activity alert. Derived from audit logs.
--
-- /See:/ 'googleAppsAlertcenterTypeSuspiciousActivity' smart constructor.
data GoogleAppsAlertcenterTypeSuspiciousActivity =
  GoogleAppsAlertcenterTypeSuspiciousActivity'
    { _gaatsaEmail :: !(Maybe Text)
    , _gaatsaEvents :: !(Maybe [GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeSuspiciousActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatsaEmail'
--
-- * 'gaatsaEvents'
googleAppsAlertcenterTypeSuspiciousActivity
    :: GoogleAppsAlertcenterTypeSuspiciousActivity
googleAppsAlertcenterTypeSuspiciousActivity =
  GoogleAppsAlertcenterTypeSuspiciousActivity'
    {_gaatsaEmail = Nothing, _gaatsaEvents = Nothing}


-- | The email of the user this alert was created for.
gaatsaEmail :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivity (Maybe Text)
gaatsaEmail
  = lens _gaatsaEmail (\ s a -> s{_gaatsaEmail = a})

-- | Required. The list of security events.
gaatsaEvents :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivity [GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail]
gaatsaEvents
  = lens _gaatsaEvents (\ s a -> s{_gaatsaEvents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeSuspiciousActivity
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeSuspiciousActivity"
              (\ o ->
                 GoogleAppsAlertcenterTypeSuspiciousActivity' <$>
                   (o .:? "email") <*> (o .:? "events" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeSuspiciousActivity
         where
        toJSON
          GoogleAppsAlertcenterTypeSuspiciousActivity'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gaatsaEmail,
                  ("events" .=) <$> _gaatsaEvents])

-- | The details of the login action.
--
-- /See:/ 'googleAppsAlertcenterTypeAccountWarningLoginDetails' smart constructor.
data GoogleAppsAlertcenterTypeAccountWarningLoginDetails =
  GoogleAppsAlertcenterTypeAccountWarningLoginDetails'
    { _gaatawldIPAddress :: !(Maybe Text)
    , _gaatawldLoginTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAccountWarningLoginDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatawldIPAddress'
--
-- * 'gaatawldLoginTime'
googleAppsAlertcenterTypeAccountWarningLoginDetails
    :: GoogleAppsAlertcenterTypeAccountWarningLoginDetails
googleAppsAlertcenterTypeAccountWarningLoginDetails =
  GoogleAppsAlertcenterTypeAccountWarningLoginDetails'
    {_gaatawldIPAddress = Nothing, _gaatawldLoginTime = Nothing}


-- | Optional. The human-readable IP address (for example, \`11.22.33.44\`)
-- that is associated with the warning event.
gaatawldIPAddress :: Lens' GoogleAppsAlertcenterTypeAccountWarningLoginDetails (Maybe Text)
gaatawldIPAddress
  = lens _gaatawldIPAddress
      (\ s a -> s{_gaatawldIPAddress = a})

-- | Optional. The successful login time that is associated with the warning
-- event. This isn\'t present for blocked login attempts.
gaatawldLoginTime :: Lens' GoogleAppsAlertcenterTypeAccountWarningLoginDetails (Maybe UTCTime)
gaatawldLoginTime
  = lens _gaatawldLoginTime
      (\ s a -> s{_gaatawldLoginTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleAppsAlertcenterTypeAccountWarningLoginDetails
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeAccountWarningLoginDetails"
              (\ o ->
                 GoogleAppsAlertcenterTypeAccountWarningLoginDetails'
                   <$> (o .:? "ipAddress") <*> (o .:? "loginTime"))

instance ToJSON
           GoogleAppsAlertcenterTypeAccountWarningLoginDetails
         where
        toJSON
          GoogleAppsAlertcenterTypeAccountWarningLoginDetails'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _gaatawldIPAddress,
                  ("loginTime" .=) <$> _gaatawldLoginTime])

-- | Response message for an alert feedback listing request.
--
-- /See:/ 'googleAppsAlertcenterV1beta1ListAlertFeedbackResponse' smart constructor.
newtype GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse =
  GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse'
    { _gaavlafrFeedback :: Maybe [GoogleAppsAlertcenterV1beta1AlertFeedback]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavlafrFeedback'
googleAppsAlertcenterV1beta1ListAlertFeedbackResponse
    :: GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
googleAppsAlertcenterV1beta1ListAlertFeedbackResponse =
  GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse'
    {_gaavlafrFeedback = Nothing}


-- | The list of alert feedback. Feedback entries for each alert are ordered
-- by creation time descending.
gaavlafrFeedback :: Lens' GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse [GoogleAppsAlertcenterV1beta1AlertFeedback]
gaavlafrFeedback
  = lens _gaavlafrFeedback
      (\ s a -> s{_gaavlafrFeedback = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse'
                   <$> (o .:? "feedback" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
         where
        toJSON
          GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse'{..}
          = object
              (catMaybes [("feedback" .=) <$> _gaavlafrFeedback])

-- | Common alert information about violated rules that are configured by
-- Google Workspace administrators.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfo'
    { _gaatrviTriggeredActionTypes :: !(Maybe [GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem])
    , _gaatrviSuppressedActionTypes :: !(Maybe [GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem])
    , _gaatrviTriggeringUserEmail :: !(Maybe Text)
    , _gaatrviResourceInfo :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo)
    , _gaatrviMatchInfo :: !(Maybe [GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo])
    , _gaatrviDataSource :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoDataSource)
    , _gaatrviTrigger :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoTrigger)
    , _gaatrviRecipients :: !(Maybe [Text])
    , _gaatrviRuleInfo :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo)
    , _gaatrviTriggeredActionInfo :: !(Maybe [GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrviTriggeredActionTypes'
--
-- * 'gaatrviSuppressedActionTypes'
--
-- * 'gaatrviTriggeringUserEmail'
--
-- * 'gaatrviResourceInfo'
--
-- * 'gaatrviMatchInfo'
--
-- * 'gaatrviDataSource'
--
-- * 'gaatrviTrigger'
--
-- * 'gaatrviRecipients'
--
-- * 'gaatrviRuleInfo'
--
-- * 'gaatrviTriggeredActionInfo'
googleAppsAlertcenterTypeRuleViolationInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfo
googleAppsAlertcenterTypeRuleViolationInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfo'
    { _gaatrviTriggeredActionTypes = Nothing
    , _gaatrviSuppressedActionTypes = Nothing
    , _gaatrviTriggeringUserEmail = Nothing
    , _gaatrviResourceInfo = Nothing
    , _gaatrviMatchInfo = Nothing
    , _gaatrviDataSource = Nothing
    , _gaatrviTrigger = Nothing
    , _gaatrviRecipients = Nothing
    , _gaatrviRuleInfo = Nothing
    , _gaatrviTriggeredActionInfo = Nothing
    }


-- | Actions applied as a consequence of the rule being triggered.
gaatrviTriggeredActionTypes :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo [GoogleAppsAlertcenterTypeRuleViolationInfoTriggeredActionTypesItem]
gaatrviTriggeredActionTypes
  = lens _gaatrviTriggeredActionTypes
      (\ s a -> s{_gaatrviTriggeredActionTypes = a})
      . _Default
      . _Coerce

-- | Actions suppressed due to other actions with higher priority.
gaatrviSuppressedActionTypes :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo [GoogleAppsAlertcenterTypeRuleViolationInfoSuppressedActionTypesItem]
gaatrviSuppressedActionTypes
  = lens _gaatrviSuppressedActionTypes
      (\ s a -> s{_gaatrviSuppressedActionTypes = a})
      . _Default
      . _Coerce

-- | Email of the user who caused the violation. Value could be empty if not
-- applicable, for example, a violation found by drive continuous scan.
gaatrviTriggeringUserEmail :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo (Maybe Text)
gaatrviTriggeringUserEmail
  = lens _gaatrviTriggeringUserEmail
      (\ s a -> s{_gaatrviTriggeringUserEmail = a})

-- | Details of the resource which violated the rule.
gaatrviResourceInfo :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo)
gaatrviResourceInfo
  = lens _gaatrviResourceInfo
      (\ s a -> s{_gaatrviResourceInfo = a})

-- | List of matches that were found in the resource content.
gaatrviMatchInfo :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo [GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo]
gaatrviMatchInfo
  = lens _gaatrviMatchInfo
      (\ s a -> s{_gaatrviMatchInfo = a})
      . _Default
      . _Coerce

-- | Source of the data.
gaatrviDataSource :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoDataSource)
gaatrviDataSource
  = lens _gaatrviDataSource
      (\ s a -> s{_gaatrviDataSource = a})

-- | Trigger of the rule.
gaatrviTrigger :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoTrigger)
gaatrviTrigger
  = lens _gaatrviTrigger
      (\ s a -> s{_gaatrviTrigger = a})

-- | Resource recipients. For Drive, they are grantees that the Drive file
-- was shared with at the time of rule triggering. Valid values include
-- user emails, group emails, domains, or \'anyone\' if the file was
-- publicly accessible. If the file was private the recipients list will be
-- empty. For Gmail, they are emails of the users or groups that the Gmail
-- message was sent to.
gaatrviRecipients :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo [Text]
gaatrviRecipients
  = lens _gaatrviRecipients
      (\ s a -> s{_gaatrviRecipients = a})
      . _Default
      . _Coerce

-- | Details of the violated rule.
gaatrviRuleInfo :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo)
gaatrviRuleInfo
  = lens _gaatrviRuleInfo
      (\ s a -> s{_gaatrviRuleInfo = a})

-- | Metadata related to the triggered actions.
gaatrviTriggeredActionInfo :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfo [GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo]
gaatrviTriggeredActionInfo
  = lens _gaatrviTriggeredActionInfo
      (\ s a -> s{_gaatrviTriggeredActionInfo = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfo' <$>
                   (o .:? "triggeredActionTypes" .!= mempty) <*>
                     (o .:? "suppressedActionTypes" .!= mempty)
                     <*> (o .:? "triggeringUserEmail")
                     <*> (o .:? "resourceInfo")
                     <*> (o .:? "matchInfo" .!= mempty)
                     <*> (o .:? "dataSource")
                     <*> (o .:? "trigger")
                     <*> (o .:? "recipients" .!= mempty)
                     <*> (o .:? "ruleInfo")
                     <*> (o .:? "triggeredActionInfo" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfo'{..}
          = object
              (catMaybes
                 [("triggeredActionTypes" .=) <$>
                    _gaatrviTriggeredActionTypes,
                  ("suppressedActionTypes" .=) <$>
                    _gaatrviSuppressedActionTypes,
                  ("triggeringUserEmail" .=) <$>
                    _gaatrviTriggeringUserEmail,
                  ("resourceInfo" .=) <$> _gaatrviResourceInfo,
                  ("matchInfo" .=) <$> _gaatrviMatchInfo,
                  ("dataSource" .=) <$> _gaatrviDataSource,
                  ("trigger" .=) <$> _gaatrviTrigger,
                  ("recipients" .=) <$> _gaatrviRecipients,
                  ("ruleInfo" .=) <$> _gaatrviRuleInfo,
                  ("triggeredActionInfo" .=) <$>
                    _gaatrviTriggeredActionInfo])

-- | Entity whose actions triggered a Gmail phishing alert.
--
-- /See:/ 'googleAppsAlertcenterTypeMaliciousEntity' smart constructor.
data GoogleAppsAlertcenterTypeMaliciousEntity =
  GoogleAppsAlertcenterTypeMaliciousEntity'
    { _gaatmeFromHeader :: !(Maybe Text)
    , _gaatmeDisplayName :: !(Maybe Text)
    , _gaatmeEntity :: !(Maybe GoogleAppsAlertcenterTypeUser)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeMaliciousEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatmeFromHeader'
--
-- * 'gaatmeDisplayName'
--
-- * 'gaatmeEntity'
googleAppsAlertcenterTypeMaliciousEntity
    :: GoogleAppsAlertcenterTypeMaliciousEntity
googleAppsAlertcenterTypeMaliciousEntity =
  GoogleAppsAlertcenterTypeMaliciousEntity'
    { _gaatmeFromHeader = Nothing
    , _gaatmeDisplayName = Nothing
    , _gaatmeEntity = Nothing
    }


-- | The sender email address.
gaatmeFromHeader :: Lens' GoogleAppsAlertcenterTypeMaliciousEntity (Maybe Text)
gaatmeFromHeader
  = lens _gaatmeFromHeader
      (\ s a -> s{_gaatmeFromHeader = a})

-- | The header from display name.
gaatmeDisplayName :: Lens' GoogleAppsAlertcenterTypeMaliciousEntity (Maybe Text)
gaatmeDisplayName
  = lens _gaatmeDisplayName
      (\ s a -> s{_gaatmeDisplayName = a})

-- | The actor who triggered a gmail phishing alert.
gaatmeEntity :: Lens' GoogleAppsAlertcenterTypeMaliciousEntity (Maybe GoogleAppsAlertcenterTypeUser)
gaatmeEntity
  = lens _gaatmeEntity (\ s a -> s{_gaatmeEntity = a})

instance FromJSON
           GoogleAppsAlertcenterTypeMaliciousEntity
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeMaliciousEntity"
              (\ o ->
                 GoogleAppsAlertcenterTypeMaliciousEntity' <$>
                   (o .:? "fromHeader") <*> (o .:? "displayName") <*>
                     (o .:? "entity"))

instance ToJSON
           GoogleAppsAlertcenterTypeMaliciousEntity
         where
        toJSON GoogleAppsAlertcenterTypeMaliciousEntity'{..}
          = object
              (catMaybes
                 [("fromHeader" .=) <$> _gaatmeFromHeader,
                  ("displayName" .=) <$> _gaatmeDisplayName,
                  ("entity" .=) <$> _gaatmeEntity])

-- | Customer-level settings.
--
-- /See:/ 'googleAppsAlertcenterV1beta1Settings' smart constructor.
newtype GoogleAppsAlertcenterV1beta1Settings =
  GoogleAppsAlertcenterV1beta1Settings'
    { _gaavsNotifications :: Maybe [GoogleAppsAlertcenterV1beta1SettingsNotification]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavsNotifications'
googleAppsAlertcenterV1beta1Settings
    :: GoogleAppsAlertcenterV1beta1Settings
googleAppsAlertcenterV1beta1Settings =
  GoogleAppsAlertcenterV1beta1Settings' {_gaavsNotifications = Nothing}


-- | The list of notifications.
gaavsNotifications :: Lens' GoogleAppsAlertcenterV1beta1Settings [GoogleAppsAlertcenterV1beta1SettingsNotification]
gaavsNotifications
  = lens _gaavsNotifications
      (\ s a -> s{_gaavsNotifications = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterV1beta1Settings
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterV1beta1Settings"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1Settings' <$>
                   (o .:? "notifications" .!= mempty))

instance ToJSON GoogleAppsAlertcenterV1beta1Settings
         where
        toJSON GoogleAppsAlertcenterV1beta1Settings'{..}
          = object
              (catMaybes
                 [("notifications" .=) <$> _gaavsNotifications])

-- | A request to undelete a specific alert that was marked for deletion.
--
-- /See:/ 'googleAppsAlertcenterV1beta1UndeleteAlertRequest' smart constructor.
newtype GoogleAppsAlertcenterV1beta1UndeleteAlertRequest =
  GoogleAppsAlertcenterV1beta1UndeleteAlertRequest'
    { _gaavuarCustomerId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1UndeleteAlertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavuarCustomerId'
googleAppsAlertcenterV1beta1UndeleteAlertRequest
    :: GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
googleAppsAlertcenterV1beta1UndeleteAlertRequest =
  GoogleAppsAlertcenterV1beta1UndeleteAlertRequest'
    {_gaavuarCustomerId = Nothing}


-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alert is associated with. Inferred from the
-- caller identity if not provided.
gaavuarCustomerId :: Lens' GoogleAppsAlertcenterV1beta1UndeleteAlertRequest (Maybe Text)
gaavuarCustomerId
  = lens _gaavuarCustomerId
      (\ s a -> s{_gaavuarCustomerId = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1UndeleteAlertRequest"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1UndeleteAlertRequest' <$>
                   (o .:? "customerId"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
         where
        toJSON
          GoogleAppsAlertcenterV1beta1UndeleteAlertRequest'{..}
          = object
              (catMaybes
                 [("customerId" .=) <$> _gaavuarCustomerId])

-- | Proto that contains match information from the condition part of the
-- rule.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoMatchInfo' smart constructor.
data GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo'
    { _gaatrvimiPredefinedDetector :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo)
    , _gaatrvimiUserDefinedDetector :: !(Maybe GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrvimiPredefinedDetector'
--
-- * 'gaatrvimiUserDefinedDetector'
googleAppsAlertcenterTypeRuleViolationInfoMatchInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
googleAppsAlertcenterTypeRuleViolationInfoMatchInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo'
    { _gaatrvimiPredefinedDetector = Nothing
    , _gaatrvimiUserDefinedDetector = Nothing
    }


-- | For matched detector predefined by Google.
gaatrvimiPredefinedDetector :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo)
gaatrvimiPredefinedDetector
  = lens _gaatrvimiPredefinedDetector
      (\ s a -> s{_gaatrvimiPredefinedDetector = a})

-- | For matched detector defined by administrators.
gaatrvimiUserDefinedDetector :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo (Maybe GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo)
gaatrvimiUserDefinedDetector
  = lens _gaatrvimiUserDefinedDetector
      (\ s a -> s{_gaatrvimiUserDefinedDetector = a})

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo'
                   <$>
                   (o .:? "predefinedDetector") <*>
                     (o .:? "userDefinedDetector"))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo'{..}
          = object
              (catMaybes
                 [("predefinedDetector" .=) <$>
                    _gaatrvimiPredefinedDetector,
                  ("userDefinedDetector" .=) <$>
                    _gaatrvimiUserDefinedDetector])

-- | Settings for callback notifications. For more details see [Google
-- Workspace Alert
-- Notification](\/admin-sdk\/alertcenter\/guides\/notifications).
--
-- /See:/ 'googleAppsAlertcenterV1beta1SettingsNotification' smart constructor.
newtype GoogleAppsAlertcenterV1beta1SettingsNotification =
  GoogleAppsAlertcenterV1beta1SettingsNotification'
    { _gaavsnCloudPubsubTopic :: Maybe GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1SettingsNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavsnCloudPubsubTopic'
googleAppsAlertcenterV1beta1SettingsNotification
    :: GoogleAppsAlertcenterV1beta1SettingsNotification
googleAppsAlertcenterV1beta1SettingsNotification =
  GoogleAppsAlertcenterV1beta1SettingsNotification'
    {_gaavsnCloudPubsubTopic = Nothing}


-- | A Google Cloud Pub\/sub topic destination.
gaavsnCloudPubsubTopic :: Lens' GoogleAppsAlertcenterV1beta1SettingsNotification (Maybe GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic)
gaavsnCloudPubsubTopic
  = lens _gaavsnCloudPubsubTopic
      (\ s a -> s{_gaavsnCloudPubsubTopic = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1SettingsNotification
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1SettingsNotification"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1SettingsNotification' <$>
                   (o .:? "cloudPubsubTopic"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1SettingsNotification
         where
        toJSON
          GoogleAppsAlertcenterV1beta1SettingsNotification'{..}
          = object
              (catMaybes
                 [("cloudPubsubTopic" .=) <$>
                    _gaavsnCloudPubsubTopic])

-- | Response to batch undelete operation on alerts.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse' smart constructor.
data GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse'
    { _gaavbuarSuccessAlertIds :: !(Maybe [Text])
    , _gaavbuarFailedAlertStatus :: !(Maybe GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbuarSuccessAlertIds'
--
-- * 'gaavbuarFailedAlertStatus'
googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
    :: GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
googleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse'
    {_gaavbuarSuccessAlertIds = Nothing, _gaavbuarFailedAlertStatus = Nothing}


-- | The successful list of alert IDs.
gaavbuarSuccessAlertIds :: Lens' GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse [Text]
gaavbuarSuccessAlertIds
  = lens _gaavbuarSuccessAlertIds
      (\ s a -> s{_gaavbuarSuccessAlertIds = a})
      . _Default
      . _Coerce

-- | The status details for each failed alert_id.
gaavbuarFailedAlertStatus :: Lens' GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse (Maybe GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponseFailedAlertStatus)
gaavbuarFailedAlertStatus
  = lens _gaavbuarFailedAlertStatus
      (\ s a -> s{_gaavbuarFailedAlertStatus = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse'
                   <$>
                   (o .:? "successAlertIds" .!= mempty) <*>
                     (o .:? "failedAlertStatus"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
         where
        toJSON
          GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse'{..}
          = object
              (catMaybes
                 [("successAlertIds" .=) <$> _gaavbuarSuccessAlertIds,
                  ("failedAlertStatus" .=) <$>
                    _gaavbuarFailedAlertStatus])

-- | A customer feedback about an alert.
--
-- /See:/ 'googleAppsAlertcenterV1beta1AlertFeedback' smart constructor.
data GoogleAppsAlertcenterV1beta1AlertFeedback =
  GoogleAppsAlertcenterV1beta1AlertFeedback'
    { _gaavafFeedbackId :: !(Maybe Text)
    , _gaavafEmail :: !(Maybe Text)
    , _gaavafAlertId :: !(Maybe Text)
    , _gaavafCustomerId :: !(Maybe Text)
    , _gaavafType :: !(Maybe GoogleAppsAlertcenterV1beta1AlertFeedbackType)
    , _gaavafCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1AlertFeedback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavafFeedbackId'
--
-- * 'gaavafEmail'
--
-- * 'gaavafAlertId'
--
-- * 'gaavafCustomerId'
--
-- * 'gaavafType'
--
-- * 'gaavafCreateTime'
googleAppsAlertcenterV1beta1AlertFeedback
    :: GoogleAppsAlertcenterV1beta1AlertFeedback
googleAppsAlertcenterV1beta1AlertFeedback =
  GoogleAppsAlertcenterV1beta1AlertFeedback'
    { _gaavafFeedbackId = Nothing
    , _gaavafEmail = Nothing
    , _gaavafAlertId = Nothing
    , _gaavafCustomerId = Nothing
    , _gaavafType = Nothing
    , _gaavafCreateTime = Nothing
    }


-- | Output only. The unique identifier for the feedback.
gaavafFeedbackId :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe Text)
gaavafFeedbackId
  = lens _gaavafFeedbackId
      (\ s a -> s{_gaavafFeedbackId = a})

-- | Output only. The email of the user that provided the feedback.
gaavafEmail :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe Text)
gaavafEmail
  = lens _gaavafEmail (\ s a -> s{_gaavafEmail = a})

-- | Output only. The alert identifier.
gaavafAlertId :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe Text)
gaavafAlertId
  = lens _gaavafAlertId
      (\ s a -> s{_gaavafAlertId = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
gaavafCustomerId :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe Text)
gaavafCustomerId
  = lens _gaavafCustomerId
      (\ s a -> s{_gaavafCustomerId = a})

-- | Required. The type of the feedback.
gaavafType :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe GoogleAppsAlertcenterV1beta1AlertFeedbackType)
gaavafType
  = lens _gaavafType (\ s a -> s{_gaavafType = a})

-- | Output only. The time this feedback was created.
gaavafCreateTime :: Lens' GoogleAppsAlertcenterV1beta1AlertFeedback (Maybe UTCTime)
gaavafCreateTime
  = lens _gaavafCreateTime
      (\ s a -> s{_gaavafCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleAppsAlertcenterV1beta1AlertFeedback
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1AlertFeedback"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1AlertFeedback' <$>
                   (o .:? "feedbackId") <*> (o .:? "email") <*>
                     (o .:? "alertId")
                     <*> (o .:? "customerId")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1AlertFeedback
         where
        toJSON GoogleAppsAlertcenterV1beta1AlertFeedback'{..}
          = object
              (catMaybes
                 [("feedbackId" .=) <$> _gaavafFeedbackId,
                  ("email" .=) <$> _gaavafEmail,
                  ("alertId" .=) <$> _gaavafAlertId,
                  ("customerId" .=) <$> _gaavafCustomerId,
                  ("type" .=) <$> _gaavafType,
                  ("createTime" .=) <$> _gaavafCreateTime])

-- | Alert for a spike in user reported phishing. *Warning*: This type has
-- been deprecated. Use
-- [MailPhishing](\/admin-sdk\/alertcenter\/reference\/rest\/v1beta1\/MailPhishing)
-- instead.
--
-- /See:/ 'googleAppsAlertcenterTypePhishingSpike' smart constructor.
data GoogleAppsAlertcenterTypePhishingSpike =
  GoogleAppsAlertcenterTypePhishingSpike'
    { _gaatpsIsInternal :: !(Maybe Bool)
    , _gaatpsDomainId :: !(Maybe GoogleAppsAlertcenterTypeDomainId)
    , _gaatpsMessages :: !(Maybe [GoogleAppsAlertcenterTypeGmailMessageInfo])
    , _gaatpsMaliciousEntity :: !(Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypePhishingSpike' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatpsIsInternal'
--
-- * 'gaatpsDomainId'
--
-- * 'gaatpsMessages'
--
-- * 'gaatpsMaliciousEntity'
googleAppsAlertcenterTypePhishingSpike
    :: GoogleAppsAlertcenterTypePhishingSpike
googleAppsAlertcenterTypePhishingSpike =
  GoogleAppsAlertcenterTypePhishingSpike'
    { _gaatpsIsInternal = Nothing
    , _gaatpsDomainId = Nothing
    , _gaatpsMessages = Nothing
    , _gaatpsMaliciousEntity = Nothing
    }


-- | If \`true\`, the email originated from within the organization.
gaatpsIsInternal :: Lens' GoogleAppsAlertcenterTypePhishingSpike (Maybe Bool)
gaatpsIsInternal
  = lens _gaatpsIsInternal
      (\ s a -> s{_gaatpsIsInternal = a})

-- | The domain ID.
gaatpsDomainId :: Lens' GoogleAppsAlertcenterTypePhishingSpike (Maybe GoogleAppsAlertcenterTypeDomainId)
gaatpsDomainId
  = lens _gaatpsDomainId
      (\ s a -> s{_gaatpsDomainId = a})

-- | The list of messages contained by this alert.
gaatpsMessages :: Lens' GoogleAppsAlertcenterTypePhishingSpike [GoogleAppsAlertcenterTypeGmailMessageInfo]
gaatpsMessages
  = lens _gaatpsMessages
      (\ s a -> s{_gaatpsMessages = a})
      . _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
gaatpsMaliciousEntity :: Lens' GoogleAppsAlertcenterTypePhishingSpike (Maybe GoogleAppsAlertcenterTypeMaliciousEntity)
gaatpsMaliciousEntity
  = lens _gaatpsMaliciousEntity
      (\ s a -> s{_gaatpsMaliciousEntity = a})

instance FromJSON
           GoogleAppsAlertcenterTypePhishingSpike
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypePhishingSpike"
              (\ o ->
                 GoogleAppsAlertcenterTypePhishingSpike' <$>
                   (o .:? "isInternal") <*> (o .:? "domainId") <*>
                     (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON
           GoogleAppsAlertcenterTypePhishingSpike
         where
        toJSON GoogleAppsAlertcenterTypePhishingSpike'{..}
          = object
              (catMaybes
                 [("isInternal" .=) <$> _gaatpsIsInternal,
                  ("domainId" .=) <$> _gaatpsDomainId,
                  ("messages" .=) <$> _gaatpsMessages,
                  ("maliciousEntity" .=) <$> _gaatpsMaliciousEntity])

-- | A request to perform batch undelete on alerts.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest' smart constructor.
data GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest'
    { _gaavbuarAlertId :: !(Maybe [Text])
    , _gaavbuarCustomerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbuarAlertId'
--
-- * 'gaavbuarCustomerId'
googleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
    :: GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
googleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest =
  GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest'
    {_gaavbuarAlertId = Nothing, _gaavbuarCustomerId = Nothing}


-- | Required. list of alert IDs.
gaavbuarAlertId :: Lens' GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest [Text]
gaavbuarAlertId
  = lens _gaavbuarAlertId
      (\ s a -> s{_gaavbuarAlertId = a})
      . _Default
      . _Coerce

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alerts are associated with.
gaavbuarCustomerId :: Lens' GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest (Maybe Text)
gaavbuarCustomerId
  = lens _gaavbuarCustomerId
      (\ s a -> s{_gaavbuarCustomerId = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest'
                   <$>
                   (o .:? "alertId" .!= mempty) <*>
                     (o .:? "customerId"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
         where
        toJSON
          GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest'{..}
          = object
              (catMaybes
                 [("alertId" .=) <$> _gaavbuarAlertId,
                  ("customerId" .=) <$> _gaavbuarCustomerId])

-- | Detector provided by Google.
--
-- /See:/ 'googleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo' smart constructor.
newtype GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo'
    { _gaatrvimipdiDetectorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatrvimipdiDetectorName'
googleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
    :: GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
googleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo =
  GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo'
    {_gaatrvimipdiDetectorName = Nothing}


-- | Name that uniquely identifies the detector.
gaatrvimipdiDetectorName :: Lens' GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo (Maybe Text)
gaatrvimipdiDetectorName
  = lens _gaatrvimipdiDetectorName
      (\ s a -> s{_gaatrvimipdiDetectorName = a})

instance FromJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo"
              (\ o ->
                 GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo'
                   <$> (o .:? "detectorName"))

instance ToJSON
           GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
         where
        toJSON
          GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo'{..}
          = object
              (catMaybes
                 [("detectorName" .=) <$> _gaatrvimipdiDetectorName])

-- | A request to perform batch delete on alerts.
--
-- /See:/ 'googleAppsAlertcenterV1beta1BatchDeleteAlertsRequest' smart constructor.
data GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest'
    { _gaavbdarAlertId :: !(Maybe [Text])
    , _gaavbdarCustomerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavbdarAlertId'
--
-- * 'gaavbdarCustomerId'
googleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
    :: GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
googleAppsAlertcenterV1beta1BatchDeleteAlertsRequest =
  GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest'
    {_gaavbdarAlertId = Nothing, _gaavbdarCustomerId = Nothing}


-- | Required. list of alert IDs.
gaavbdarAlertId :: Lens' GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest [Text]
gaavbdarAlertId
  = lens _gaavbdarAlertId
      (\ s a -> s{_gaavbdarAlertId = a})
      . _Default
      . _Coerce

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alerts are associated with.
gaavbdarCustomerId :: Lens' GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest (Maybe Text)
gaavbdarCustomerId
  = lens _gaavbdarCustomerId
      (\ s a -> s{_gaavbdarCustomerId = a})

instance FromJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest'
                   <$>
                   (o .:? "alertId" .!= mempty) <*>
                     (o .:? "customerId"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
         where
        toJSON
          GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest'{..}
          = object
              (catMaybes
                 [("alertId" .=) <$> _gaavbdarAlertId,
                  ("customerId" .=) <$> _gaavbdarCustomerId])

-- | Domain ID of Gmail phishing alerts.
--
-- /See:/ 'googleAppsAlertcenterTypeDomainId' smart constructor.
newtype GoogleAppsAlertcenterTypeDomainId =
  GoogleAppsAlertcenterTypeDomainId'
    { _gaatdiCustomerPrimaryDomain :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeDomainId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatdiCustomerPrimaryDomain'
googleAppsAlertcenterTypeDomainId
    :: GoogleAppsAlertcenterTypeDomainId
googleAppsAlertcenterTypeDomainId =
  GoogleAppsAlertcenterTypeDomainId' {_gaatdiCustomerPrimaryDomain = Nothing}


-- | The primary domain for the customer.
gaatdiCustomerPrimaryDomain :: Lens' GoogleAppsAlertcenterTypeDomainId (Maybe Text)
gaatdiCustomerPrimaryDomain
  = lens _gaatdiCustomerPrimaryDomain
      (\ s a -> s{_gaatdiCustomerPrimaryDomain = a})

instance FromJSON GoogleAppsAlertcenterTypeDomainId
         where
        parseJSON
          = withObject "GoogleAppsAlertcenterTypeDomainId"
              (\ o ->
                 GoogleAppsAlertcenterTypeDomainId' <$>
                   (o .:? "customerPrimaryDomain"))

instance ToJSON GoogleAppsAlertcenterTypeDomainId
         where
        toJSON GoogleAppsAlertcenterTypeDomainId'{..}
          = object
              (catMaybes
                 [("customerPrimaryDomain" .=) <$>
                    _gaatdiCustomerPrimaryDomain])

-- | A takeout operation for the entire domain was initiated by an admin.
-- Derived from audit logs.
--
-- /See:/ 'googleAppsAlertcenterTypeDomainWideTakeoutInitiated' smart constructor.
data GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated =
  GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated'
    { _gaatdwtiEmail :: !(Maybe Text)
    , _gaatdwtiTakeoutRequestId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatdwtiEmail'
--
-- * 'gaatdwtiTakeoutRequestId'
googleAppsAlertcenterTypeDomainWideTakeoutInitiated
    :: GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
googleAppsAlertcenterTypeDomainWideTakeoutInitiated =
  GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated'
    {_gaatdwtiEmail = Nothing, _gaatdwtiTakeoutRequestId = Nothing}


-- | The email of the admin who initiated the takeout.
gaatdwtiEmail :: Lens' GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated (Maybe Text)
gaatdwtiEmail
  = lens _gaatdwtiEmail
      (\ s a -> s{_gaatdwtiEmail = a})

-- | The takeout request ID.
gaatdwtiTakeoutRequestId :: Lens' GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated (Maybe Text)
gaatdwtiTakeoutRequestId
  = lens _gaatdwtiTakeoutRequestId
      (\ s a -> s{_gaatdwtiTakeoutRequestId = a})

instance FromJSON
           GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated"
              (\ o ->
                 GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated'
                   <$> (o .:? "email") <*> (o .:? "takeoutRequestId"))

instance ToJSON
           GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
         where
        toJSON
          GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gaatdwtiEmail,
                  ("takeoutRequestId" .=) <$>
                    _gaatdwtiTakeoutRequestId])

-- | Alerts from App Maker to notify admins to set up default SQL instance.
--
-- /See:/ 'googleAppsAlertcenterTypeAppMakerSQLSetupNotification' smart constructor.
newtype GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification =
  GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification'
    { _gaatamsqlsnRequestInfo :: Maybe [GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatamsqlsnRequestInfo'
googleAppsAlertcenterTypeAppMakerSQLSetupNotification
    :: GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification
googleAppsAlertcenterTypeAppMakerSQLSetupNotification =
  GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification'
    {_gaatamsqlsnRequestInfo = Nothing}


-- | List of applications with requests for default SQL set up.
gaatamsqlsnRequestInfo :: Lens' GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification [GoogleAppsAlertcenterTypeAppMakerSQLSetupNotificationRequestInfo]
gaatamsqlsnRequestInfo
  = lens _gaatamsqlsnRequestInfo
      (\ s a -> s{_gaatamsqlsnRequestInfo = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification"
              (\ o ->
                 GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification'
                   <$> (o .:? "requestInfo" .!= mempty))

instance ToJSON
           GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification
         where
        toJSON
          GoogleAppsAlertcenterTypeAppMakerSQLSetupNotification'{..}
          = object
              (catMaybes
                 [("requestInfo" .=) <$> _gaatamsqlsnRequestInfo])

-- | An alert metadata.
--
-- /See:/ 'googleAppsAlertcenterV1beta1AlertMetadata' smart constructor.
data GoogleAppsAlertcenterV1beta1AlertMetadata =
  GoogleAppsAlertcenterV1beta1AlertMetadata'
    { _gaavamStatus :: !(Maybe Text)
    , _gaavamEtag :: !(Maybe Text)
    , _gaavamSeverity :: !(Maybe Text)
    , _gaavamAlertId :: !(Maybe Text)
    , _gaavamAssignee :: !(Maybe Text)
    , _gaavamCustomerId :: !(Maybe Text)
    , _gaavamUpdateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterV1beta1AlertMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaavamStatus'
--
-- * 'gaavamEtag'
--
-- * 'gaavamSeverity'
--
-- * 'gaavamAlertId'
--
-- * 'gaavamAssignee'
--
-- * 'gaavamCustomerId'
--
-- * 'gaavamUpdateTime'
googleAppsAlertcenterV1beta1AlertMetadata
    :: GoogleAppsAlertcenterV1beta1AlertMetadata
googleAppsAlertcenterV1beta1AlertMetadata =
  GoogleAppsAlertcenterV1beta1AlertMetadata'
    { _gaavamStatus = Nothing
    , _gaavamEtag = Nothing
    , _gaavamSeverity = Nothing
    , _gaavamAlertId = Nothing
    , _gaavamAssignee = Nothing
    , _gaavamCustomerId = Nothing
    , _gaavamUpdateTime = Nothing
    }


-- | The current status of the alert. The supported values are the following:
-- * NOT_STARTED * IN_PROGRESS * CLOSED
gaavamStatus :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamStatus
  = lens _gaavamStatus (\ s a -> s{_gaavamStatus = a})

-- | Optional. \`etag\` is used for optimistic concurrency control as a way
-- to help prevent simultaneous updates of an alert metadata from
-- overwriting each other. It is strongly suggested that systems make use
-- of the \`etag\` in the read-modify-write cycle to perform metatdata
-- updates in order to avoid race conditions: An \`etag\` is returned in
-- the response which contains alert metadata, and systems are expected to
-- put that etag in the request to update alert metadata to ensure that
-- their change will be applied to the same version of the alert metadata.
-- If no \`etag\` is provided in the call to update alert metadata, then
-- the existing alert metadata is overwritten blindly.
gaavamEtag :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamEtag
  = lens _gaavamEtag (\ s a -> s{_gaavamEtag = a})

-- | The severity value of the alert. Alert Center will set this field at
-- alert creation time, default\'s to an empty string when it could not be
-- determined. The supported values for update actions on this field are
-- the following: * HIGH * MEDIUM * LOW
gaavamSeverity :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamSeverity
  = lens _gaavamSeverity
      (\ s a -> s{_gaavamSeverity = a})

-- | Output only. The alert identifier.
gaavamAlertId :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamAlertId
  = lens _gaavamAlertId
      (\ s a -> s{_gaavamAlertId = a})

-- | The email address of the user assigned to the alert.
gaavamAssignee :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamAssignee
  = lens _gaavamAssignee
      (\ s a -> s{_gaavamAssignee = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
gaavamCustomerId :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe Text)
gaavamCustomerId
  = lens _gaavamCustomerId
      (\ s a -> s{_gaavamCustomerId = a})

-- | Output only. The time this metadata was last updated.
gaavamUpdateTime :: Lens' GoogleAppsAlertcenterV1beta1AlertMetadata (Maybe UTCTime)
gaavamUpdateTime
  = lens _gaavamUpdateTime
      (\ s a -> s{_gaavamUpdateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleAppsAlertcenterV1beta1AlertMetadata
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterV1beta1AlertMetadata"
              (\ o ->
                 GoogleAppsAlertcenterV1beta1AlertMetadata' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "severity")
                     <*> (o .:? "alertId")
                     <*> (o .:? "assignee")
                     <*> (o .:? "customerId")
                     <*> (o .:? "updateTime"))

instance ToJSON
           GoogleAppsAlertcenterV1beta1AlertMetadata
         where
        toJSON GoogleAppsAlertcenterV1beta1AlertMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _gaavamStatus,
                  ("etag" .=) <$> _gaavamEtag,
                  ("severity" .=) <$> _gaavamSeverity,
                  ("alertId" .=) <$> _gaavamAlertId,
                  ("assignee" .=) <$> _gaavamAssignee,
                  ("customerId" .=) <$> _gaavamCustomerId,
                  ("updateTime" .=) <$> _gaavamUpdateTime])

-- | Detailed information of a single MDM device compromised event.
--
-- /See:/ 'googleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail' smart constructor.
data GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail =
  GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail'
    { _gaatdcdcsdResourceId :: !(Maybe Text)
    , _gaatdcdcsdDeviceCompromisedState :: !(Maybe Text)
    , _gaatdcdcsdIosVendorId :: !(Maybe Text)
    , _gaatdcdcsdDeviceModel :: !(Maybe Text)
    , _gaatdcdcsdDeviceId :: !(Maybe Text)
    , _gaatdcdcsdDeviceType :: !(Maybe Text)
    , _gaatdcdcsdSerialNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatdcdcsdResourceId'
--
-- * 'gaatdcdcsdDeviceCompromisedState'
--
-- * 'gaatdcdcsdIosVendorId'
--
-- * 'gaatdcdcsdDeviceModel'
--
-- * 'gaatdcdcsdDeviceId'
--
-- * 'gaatdcdcsdDeviceType'
--
-- * 'gaatdcdcsdSerialNumber'
googleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
    :: GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
googleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail =
  GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail'
    { _gaatdcdcsdResourceId = Nothing
    , _gaatdcdcsdDeviceCompromisedState = Nothing
    , _gaatdcdcsdIosVendorId = Nothing
    , _gaatdcdcsdDeviceModel = Nothing
    , _gaatdcdcsdDeviceId = Nothing
    , _gaatdcdcsdDeviceType = Nothing
    , _gaatdcdcsdSerialNumber = Nothing
    }


-- | The device resource ID.
gaatdcdcsdResourceId :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdResourceId
  = lens _gaatdcdcsdResourceId
      (\ s a -> s{_gaatdcdcsdResourceId = a})

-- | The device compromised state. Possible values are \"\`Compromised\`\" or
-- \"\`Not Compromised\`\".
gaatdcdcsdDeviceCompromisedState :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdDeviceCompromisedState
  = lens _gaatdcdcsdDeviceCompromisedState
      (\ s a -> s{_gaatdcdcsdDeviceCompromisedState = a})

-- | Required for iOS, empty for others.
gaatdcdcsdIosVendorId :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdIosVendorId
  = lens _gaatdcdcsdIosVendorId
      (\ s a -> s{_gaatdcdcsdIosVendorId = a})

-- | The model of the device.
gaatdcdcsdDeviceModel :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdDeviceModel
  = lens _gaatdcdcsdDeviceModel
      (\ s a -> s{_gaatdcdcsdDeviceModel = a})

-- | Required. The device ID.
gaatdcdcsdDeviceId :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdDeviceId
  = lens _gaatdcdcsdDeviceId
      (\ s a -> s{_gaatdcdcsdDeviceId = a})

-- | The type of the device.
gaatdcdcsdDeviceType :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdDeviceType
  = lens _gaatdcdcsdDeviceType
      (\ s a -> s{_gaatdcdcsdDeviceType = a})

-- | The serial number of the device.
gaatdcdcsdSerialNumber :: Lens' GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail (Maybe Text)
gaatdcdcsdSerialNumber
  = lens _gaatdcdcsdSerialNumber
      (\ s a -> s{_gaatdcdcsdSerialNumber = a})

instance FromJSON
           GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail"
              (\ o ->
                 GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail'
                   <$>
                   (o .:? "resourceId") <*>
                     (o .:? "deviceCompromisedState")
                     <*> (o .:? "iosVendorId")
                     <*> (o .:? "deviceModel")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "deviceType")
                     <*> (o .:? "serialNumber"))

instance ToJSON
           GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
         where
        toJSON
          GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _gaatdcdcsdResourceId,
                  ("deviceCompromisedState" .=) <$>
                    _gaatdcdcsdDeviceCompromisedState,
                  ("iosVendorId" .=) <$> _gaatdcdcsdIosVendorId,
                  ("deviceModel" .=) <$> _gaatdcdcsdDeviceModel,
                  ("deviceId" .=) <$> _gaatdcdcsdDeviceId,
                  ("deviceType" .=) <$> _gaatdcdcsdDeviceType,
                  ("serialNumber" .=) <$> _gaatdcdcsdSerialNumber])

-- | Detailed information of a single MDM suspicious activity event.
--
-- /See:/ 'googleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail' smart constructor.
data GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail =
  GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail'
    { _gaatsasasdDeviceProperty :: !(Maybe Text)
    , _gaatsasasdResourceId :: !(Maybe Text)
    , _gaatsasasdIosVendorId :: !(Maybe Text)
    , _gaatsasasdOldValue :: !(Maybe Text)
    , _gaatsasasdNewValue :: !(Maybe Text)
    , _gaatsasasdDeviceModel :: !(Maybe Text)
    , _gaatsasasdDeviceId :: !(Maybe Text)
    , _gaatsasasdDeviceType :: !(Maybe Text)
    , _gaatsasasdSerialNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatsasasdDeviceProperty'
--
-- * 'gaatsasasdResourceId'
--
-- * 'gaatsasasdIosVendorId'
--
-- * 'gaatsasasdOldValue'
--
-- * 'gaatsasasdNewValue'
--
-- * 'gaatsasasdDeviceModel'
--
-- * 'gaatsasasdDeviceId'
--
-- * 'gaatsasasdDeviceType'
--
-- * 'gaatsasasdSerialNumber'
googleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
    :: GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
googleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail =
  GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail'
    { _gaatsasasdDeviceProperty = Nothing
    , _gaatsasasdResourceId = Nothing
    , _gaatsasasdIosVendorId = Nothing
    , _gaatsasasdOldValue = Nothing
    , _gaatsasasdNewValue = Nothing
    , _gaatsasasdDeviceModel = Nothing
    , _gaatsasasdDeviceId = Nothing
    , _gaatsasasdDeviceType = Nothing
    , _gaatsasasdSerialNumber = Nothing
    }


-- | The device property which was changed.
gaatsasasdDeviceProperty :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdDeviceProperty
  = lens _gaatsasasdDeviceProperty
      (\ s a -> s{_gaatsasasdDeviceProperty = a})

-- | The device resource ID.
gaatsasasdResourceId :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdResourceId
  = lens _gaatsasasdResourceId
      (\ s a -> s{_gaatsasasdResourceId = a})

-- | Required for iOS, empty for others.
gaatsasasdIosVendorId :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdIosVendorId
  = lens _gaatsasasdIosVendorId
      (\ s a -> s{_gaatsasasdIosVendorId = a})

-- | The old value of the device property before the change.
gaatsasasdOldValue :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdOldValue
  = lens _gaatsasasdOldValue
      (\ s a -> s{_gaatsasasdOldValue = a})

-- | The new value of the device property after the change.
gaatsasasdNewValue :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdNewValue
  = lens _gaatsasasdNewValue
      (\ s a -> s{_gaatsasasdNewValue = a})

-- | The model of the device.
gaatsasasdDeviceModel :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdDeviceModel
  = lens _gaatsasasdDeviceModel
      (\ s a -> s{_gaatsasasdDeviceModel = a})

-- | Required. The device ID.
gaatsasasdDeviceId :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdDeviceId
  = lens _gaatsasasdDeviceId
      (\ s a -> s{_gaatsasasdDeviceId = a})

-- | The type of the device.
gaatsasasdDeviceType :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdDeviceType
  = lens _gaatsasasdDeviceType
      (\ s a -> s{_gaatsasasdDeviceType = a})

-- | The serial number of the device.
gaatsasasdSerialNumber :: Lens' GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail (Maybe Text)
gaatsasasdSerialNumber
  = lens _gaatsasasdSerialNumber
      (\ s a -> s{_gaatsasasdSerialNumber = a})

instance FromJSON
           GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail"
              (\ o ->
                 GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail'
                   <$>
                   (o .:? "deviceProperty") <*> (o .:? "resourceId") <*>
                     (o .:? "iosVendorId")
                     <*> (o .:? "oldValue")
                     <*> (o .:? "newValue")
                     <*> (o .:? "deviceModel")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "deviceType")
                     <*> (o .:? "serialNumber"))

instance ToJSON
           GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
         where
        toJSON
          GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail'{..}
          = object
              (catMaybes
                 [("deviceProperty" .=) <$> _gaatsasasdDeviceProperty,
                  ("resourceId" .=) <$> _gaatsasasdResourceId,
                  ("iosVendorId" .=) <$> _gaatsasasdIosVendorId,
                  ("oldValue" .=) <$> _gaatsasasdOldValue,
                  ("newValue" .=) <$> _gaatsasasdNewValue,
                  ("deviceModel" .=) <$> _gaatsasasdDeviceModel,
                  ("deviceId" .=) <$> _gaatsasasdDeviceId,
                  ("deviceType" .=) <$> _gaatsasasdDeviceType,
                  ("serialNumber" .=) <$> _gaatsasasdSerialNumber])

-- | An incident reported by Google Operations for a Google Workspace
-- application.
--
-- /See:/ 'googleAppsAlertcenterTypeGoogleOperations' smart constructor.
data GoogleAppsAlertcenterTypeGoogleOperations =
  GoogleAppsAlertcenterTypeGoogleOperations'
    { _gaatgoAttachmentData :: !(Maybe GoogleAppsAlertcenterTypeAttachment)
    , _gaatgoAffectedUserEmails :: !(Maybe [Text])
    , _gaatgoHeader :: !(Maybe Text)
    , _gaatgoTitle :: !(Maybe Text)
    , _gaatgoDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsAlertcenterTypeGoogleOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaatgoAttachmentData'
--
-- * 'gaatgoAffectedUserEmails'
--
-- * 'gaatgoHeader'
--
-- * 'gaatgoTitle'
--
-- * 'gaatgoDescription'
googleAppsAlertcenterTypeGoogleOperations
    :: GoogleAppsAlertcenterTypeGoogleOperations
googleAppsAlertcenterTypeGoogleOperations =
  GoogleAppsAlertcenterTypeGoogleOperations'
    { _gaatgoAttachmentData = Nothing
    , _gaatgoAffectedUserEmails = Nothing
    , _gaatgoHeader = Nothing
    , _gaatgoTitle = Nothing
    , _gaatgoDescription = Nothing
    }


-- | Optional. Application-specific data for an incident, provided when the
-- Google Workspace application which reported the incident cannot be
-- completely restored to a valid state.
gaatgoAttachmentData :: Lens' GoogleAppsAlertcenterTypeGoogleOperations (Maybe GoogleAppsAlertcenterTypeAttachment)
gaatgoAttachmentData
  = lens _gaatgoAttachmentData
      (\ s a -> s{_gaatgoAttachmentData = a})

-- | The list of emails which correspond to the users directly affected by
-- the incident.
gaatgoAffectedUserEmails :: Lens' GoogleAppsAlertcenterTypeGoogleOperations [Text]
gaatgoAffectedUserEmails
  = lens _gaatgoAffectedUserEmails
      (\ s a -> s{_gaatgoAffectedUserEmails = a})
      . _Default
      . _Coerce

-- | A header to display above the incident message. Typically used to attach
-- a localized notice on the timeline for followup comms translations.
gaatgoHeader :: Lens' GoogleAppsAlertcenterTypeGoogleOperations (Maybe Text)
gaatgoHeader
  = lens _gaatgoHeader (\ s a -> s{_gaatgoHeader = a})

-- | A one-line incident description.
gaatgoTitle :: Lens' GoogleAppsAlertcenterTypeGoogleOperations (Maybe Text)
gaatgoTitle
  = lens _gaatgoTitle (\ s a -> s{_gaatgoTitle = a})

-- | A detailed, freeform incident description.
gaatgoDescription :: Lens' GoogleAppsAlertcenterTypeGoogleOperations (Maybe Text)
gaatgoDescription
  = lens _gaatgoDescription
      (\ s a -> s{_gaatgoDescription = a})

instance FromJSON
           GoogleAppsAlertcenterTypeGoogleOperations
         where
        parseJSON
          = withObject
              "GoogleAppsAlertcenterTypeGoogleOperations"
              (\ o ->
                 GoogleAppsAlertcenterTypeGoogleOperations' <$>
                   (o .:? "attachmentData") <*>
                     (o .:? "affectedUserEmails" .!= mempty)
                     <*> (o .:? "header")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleAppsAlertcenterTypeGoogleOperations
         where
        toJSON GoogleAppsAlertcenterTypeGoogleOperations'{..}
          = object
              (catMaybes
                 [("attachmentData" .=) <$> _gaatgoAttachmentData,
                  ("affectedUserEmails" .=) <$>
                    _gaatgoAffectedUserEmails,
                  ("header" .=) <$> _gaatgoHeader,
                  ("title" .=) <$> _gaatgoTitle,
                  ("description" .=) <$> _gaatgoDescription])
