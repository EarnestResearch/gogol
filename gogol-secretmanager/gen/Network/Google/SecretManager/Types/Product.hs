{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecretManager.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecretManager.Types.Product where

import Network.Google.Prelude
import Network.Google.SecretManager.Types.Sum

-- | Describes the status of a user-managed replica for the SecretVersion.
--
-- /See:/ 'replicaStatus' smart constructor.
data ReplicaStatus =
  ReplicaStatus'
    { _rsLocation :: !(Maybe Text)
    , _rsCustomerManagedEncryption :: !(Maybe CustomerManagedEncryptionStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicaStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsLocation'
--
-- * 'rsCustomerManagedEncryption'
replicaStatus
    :: ReplicaStatus
replicaStatus =
  ReplicaStatus' {_rsLocation = Nothing, _rsCustomerManagedEncryption = Nothing}


-- | Output only. The canonical ID of the replica location. For example:
-- \`\"us-east1\"\`.
rsLocation :: Lens' ReplicaStatus (Maybe Text)
rsLocation
  = lens _rsLocation (\ s a -> s{_rsLocation = a})

-- | Output only. The customer-managed encryption status of the
-- SecretVersion. Only populated if customer-managed encryption is used.
rsCustomerManagedEncryption :: Lens' ReplicaStatus (Maybe CustomerManagedEncryptionStatus)
rsCustomerManagedEncryption
  = lens _rsCustomerManagedEncryption
      (\ s a -> s{_rsCustomerManagedEncryption = a})

instance FromJSON ReplicaStatus where
        parseJSON
          = withObject "ReplicaStatus"
              (\ o ->
                 ReplicaStatus' <$>
                   (o .:? "location") <*>
                     (o .:? "customerManagedEncryption"))

instance ToJSON ReplicaStatus where
        toJSON ReplicaStatus'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _rsLocation,
                  ("customerManagedEncryption" .=) <$>
                    _rsCustomerManagedEncryption])

-- | Response message for SecretManagerService.ListSecrets.
--
-- /See:/ 'listSecretsResponse' smart constructor.
data ListSecretsResponse =
  ListSecretsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSecrets :: !(Maybe [Secret])
    , _lsrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSecretsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSecrets'
--
-- * 'lsrTotalSize'
listSecretsResponse
    :: ListSecretsResponse
listSecretsResponse =
  ListSecretsResponse'
    { _lsrNextPageToken = Nothing
    , _lsrSecrets = Nothing
    , _lsrTotalSize = Nothing
    }


-- | A token to retrieve the next page of results. Pass this value in
-- ListSecretsRequest.page_token to retrieve the next page.
lsrNextPageToken :: Lens' ListSecretsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The list of Secrets sorted in reverse by create_time (newest first).
lsrSecrets :: Lens' ListSecretsResponse [Secret]
lsrSecrets
  = lens _lsrSecrets (\ s a -> s{_lsrSecrets = a}) .
      _Default
      . _Coerce

-- | The total number of Secrets.
lsrTotalSize :: Lens' ListSecretsResponse (Maybe Int32)
lsrTotalSize
  = lens _lsrTotalSize (\ s a -> s{_lsrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListSecretsResponse where
        parseJSON
          = withObject "ListSecretsResponse"
              (\ o ->
                 ListSecretsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "secrets" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListSecretsResponse where
        toJSON ListSecretsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("secrets" .=) <$> _lsrSecrets,
                  ("totalSize" .=) <$> _lsrTotalSize])

-- | A secret version resource in the Secret Manager API.
--
-- /See:/ 'secretVersion' smart constructor.
data SecretVersion =
  SecretVersion'
    { _svState :: !(Maybe SecretVersionState)
    , _svName :: !(Maybe Text)
    , _svDestroyTime :: !(Maybe DateTime')
    , _svReplicationStatus :: !(Maybe ReplicationStatus)
    , _svCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svState'
--
-- * 'svName'
--
-- * 'svDestroyTime'
--
-- * 'svReplicationStatus'
--
-- * 'svCreateTime'
secretVersion
    :: SecretVersion
secretVersion =
  SecretVersion'
    { _svState = Nothing
    , _svName = Nothing
    , _svDestroyTime = Nothing
    , _svReplicationStatus = Nothing
    , _svCreateTime = Nothing
    }


-- | Output only. The current state of the SecretVersion.
svState :: Lens' SecretVersion (Maybe SecretVersionState)
svState = lens _svState (\ s a -> s{_svState = a})

-- | Output only. The resource name of the SecretVersion in the format
-- \`projects\/*\/secrets\/*\/versions\/*\`. SecretVersion IDs in a Secret
-- start at 1 and are incremented for each subsequent version of the
-- secret.
svName :: Lens' SecretVersion (Maybe Text)
svName = lens _svName (\ s a -> s{_svName = a})

-- | Output only. The time this SecretVersion was destroyed. Only present if
-- state is DESTROYED.
svDestroyTime :: Lens' SecretVersion (Maybe UTCTime)
svDestroyTime
  = lens _svDestroyTime
      (\ s a -> s{_svDestroyTime = a})
      . mapping _DateTime

-- | The replication status of the SecretVersion.
svReplicationStatus :: Lens' SecretVersion (Maybe ReplicationStatus)
svReplicationStatus
  = lens _svReplicationStatus
      (\ s a -> s{_svReplicationStatus = a})

-- | Output only. The time at which the SecretVersion was created.
svCreateTime :: Lens' SecretVersion (Maybe UTCTime)
svCreateTime
  = lens _svCreateTime (\ s a -> s{_svCreateTime = a})
      . mapping _DateTime

instance FromJSON SecretVersion where
        parseJSON
          = withObject "SecretVersion"
              (\ o ->
                 SecretVersion' <$>
                   (o .:? "state") <*> (o .:? "name") <*>
                     (o .:? "destroyTime")
                     <*> (o .:? "replicationStatus")
                     <*> (o .:? "createTime"))

instance ToJSON SecretVersion where
        toJSON SecretVersion'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _svState, ("name" .=) <$> _svName,
                  ("destroyTime" .=) <$> _svDestroyTime,
                  ("replicationStatus" .=) <$> _svReplicationStatus,
                  ("createTime" .=) <$> _svCreateTime])

-- | The rotation time and period for a Secret. At next_rotation_time, Secret
-- Manager will send a Pub\/Sub notification to the topics configured on
-- the Secret. Secret.topics must be set to configure rotation.
--
-- /See:/ 'rotation' smart constructor.
data Rotation =
  Rotation'
    { _rRotationPeriod :: !(Maybe GDuration)
    , _rNextRotationTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Rotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRotationPeriod'
--
-- * 'rNextRotationTime'
rotation
    :: Rotation
rotation = Rotation' {_rRotationPeriod = Nothing, _rNextRotationTime = Nothing}


-- | Input only. The Duration between rotation notifications. Must be in
-- seconds and at least 3600s (1h) and at most 3153600000s (100 years). If
-- rotation_period is set, next_rotation_time must be set.
-- next_rotation_time will be advanced by this period when the service
-- automatically sends rotation notifications.
rRotationPeriod :: Lens' Rotation (Maybe Scientific)
rRotationPeriod
  = lens _rRotationPeriod
      (\ s a -> s{_rRotationPeriod = a})
      . mapping _GDuration

-- | Optional. Timestamp in UTC at which the Secret is scheduled to rotate.
-- next_rotation_time MUST be set if rotation_period is set.
rNextRotationTime :: Lens' Rotation (Maybe UTCTime)
rNextRotationTime
  = lens _rNextRotationTime
      (\ s a -> s{_rNextRotationTime = a})
      . mapping _DateTime

instance FromJSON Rotation where
        parseJSON
          = withObject "Rotation"
              (\ o ->
                 Rotation' <$>
                   (o .:? "rotationPeriod") <*>
                     (o .:? "nextRotationTime"))

instance ToJSON Rotation where
        toJSON Rotation'{..}
          = object
              (catMaybes
                 [("rotationPeriod" .=) <$> _rRotationPeriod,
                  ("nextRotationTime" .=) <$> _rNextRotationTime])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | Request message for SecretManagerService.DestroySecretVersion.
--
-- /See:/ 'destroySecretVersionRequest' smart constructor.
data DestroySecretVersionRequest =
  DestroySecretVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DestroySecretVersionRequest' with the minimum fields required to make a request.
--
destroySecretVersionRequest
    :: DestroySecretVersionRequest
destroySecretVersionRequest = DestroySecretVersionRequest'


instance FromJSON DestroySecretVersionRequest where
        parseJSON
          = withObject "DestroySecretVersionRequest"
              (\ o -> pure DestroySecretVersionRequest')

instance ToJSON DestroySecretVersionRequest where
        toJSON = const emptyObject

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Describes the status of customer-managed encryption.
--
-- /See:/ 'customerManagedEncryptionStatus' smart constructor.
newtype CustomerManagedEncryptionStatus =
  CustomerManagedEncryptionStatus'
    { _cmesKmsKeyVersionName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerManagedEncryptionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmesKmsKeyVersionName'
customerManagedEncryptionStatus
    :: CustomerManagedEncryptionStatus
customerManagedEncryptionStatus =
  CustomerManagedEncryptionStatus' {_cmesKmsKeyVersionName = Nothing}


-- | Required. The resource name of the Cloud KMS CryptoKeyVersion used to
-- encrypt the secret payload, in the following format:
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\/versions\/*\`.
cmesKmsKeyVersionName :: Lens' CustomerManagedEncryptionStatus (Maybe Text)
cmesKmsKeyVersionName
  = lens _cmesKmsKeyVersionName
      (\ s a -> s{_cmesKmsKeyVersionName = a})

instance FromJSON CustomerManagedEncryptionStatus
         where
        parseJSON
          = withObject "CustomerManagedEncryptionStatus"
              (\ o ->
                 CustomerManagedEncryptionStatus' <$>
                   (o .:? "kmsKeyVersionName"))

instance ToJSON CustomerManagedEncryptionStatus where
        toJSON CustomerManagedEncryptionStatus'{..}
          = object
              (catMaybes
                 [("kmsKeyVersionName" .=) <$>
                    _cmesKmsKeyVersionName])

-- | A replication policy that replicates the Secret payload without any
-- restrictions.
--
-- /See:/ 'automatic' smart constructor.
newtype Automatic =
  Automatic'
    { _aCustomerManagedEncryption :: Maybe CustomerManagedEncryption
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Automatic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCustomerManagedEncryption'
automatic
    :: Automatic
automatic = Automatic' {_aCustomerManagedEncryption = Nothing}


-- | Optional. The customer-managed encryption configuration of the Secret.
-- If no configuration is provided, Google-managed default encryption is
-- used. Updates to the Secret encryption configuration only apply to
-- SecretVersions added afterwards. They do not apply retroactively to
-- existing SecretVersions.
aCustomerManagedEncryption :: Lens' Automatic (Maybe CustomerManagedEncryption)
aCustomerManagedEncryption
  = lens _aCustomerManagedEncryption
      (\ s a -> s{_aCustomerManagedEncryption = a})

instance FromJSON Automatic where
        parseJSON
          = withObject "Automatic"
              (\ o ->
                 Automatic' <$> (o .:? "customerManagedEncryption"))

instance ToJSON Automatic where
        toJSON Automatic'{..}
          = object
              (catMaybes
                 [("customerManagedEncryption" .=) <$>
                    _aCustomerManagedEncryption])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A secret payload resource in the Secret Manager API. This contains the
-- sensitive secret payload that is associated with a SecretVersion.
--
-- /See:/ 'secretPayload' smart constructor.
newtype SecretPayload =
  SecretPayload'
    { _spData :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spData'
secretPayload
    :: SecretPayload
secretPayload = SecretPayload' {_spData = Nothing}


-- | The secret data. Must be no larger than 64KiB.
spData :: Lens' SecretPayload (Maybe ByteString)
spData
  = lens _spData (\ s a -> s{_spData = a}) .
      mapping _Bytes

instance FromJSON SecretPayload where
        parseJSON
          = withObject "SecretPayload"
              (\ o -> SecretPayload' <$> (o .:? "data"))

instance ToJSON SecretPayload where
        toJSON SecretPayload'{..}
          = object (catMaybes [("data" .=) <$> _spData])

-- | Represents a Replica for this Secret.
--
-- /See:/ 'replica' smart constructor.
data Replica =
  Replica'
    { _rLocation :: !(Maybe Text)
    , _rCustomerManagedEncryption :: !(Maybe CustomerManagedEncryption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Replica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rLocation'
--
-- * 'rCustomerManagedEncryption'
replica
    :: Replica
replica = Replica' {_rLocation = Nothing, _rCustomerManagedEncryption = Nothing}


-- | The canonical IDs of the location to replicate data. For example:
-- \`\"us-east1\"\`.
rLocation :: Lens' Replica (Maybe Text)
rLocation
  = lens _rLocation (\ s a -> s{_rLocation = a})

-- | Optional. The customer-managed encryption configuration of the
-- User-Managed Replica. If no configuration is provided, Google-managed
-- default encryption is used. Updates to the Secret encryption
-- configuration only apply to SecretVersions added afterwards. They do not
-- apply retroactively to existing SecretVersions.
rCustomerManagedEncryption :: Lens' Replica (Maybe CustomerManagedEncryption)
rCustomerManagedEncryption
  = lens _rCustomerManagedEncryption
      (\ s a -> s{_rCustomerManagedEncryption = a})

instance FromJSON Replica where
        parseJSON
          = withObject "Replica"
              (\ o ->
                 Replica' <$>
                   (o .:? "location") <*>
                     (o .:? "customerManagedEncryption"))

instance ToJSON Replica where
        toJSON Replica'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _rLocation,
                  ("customerManagedEncryption" .=) <$>
                    _rCustomerManagedEncryption])

-- | The labels assigned to this Secret. Label keys must be between 1 and 63
-- characters long, have a UTF-8 encoding of maximum 128 bytes, and must
-- conform to the following PCRE regular expression:
-- \`\\p{Ll}\\p{Lo}{0,62}\` Label values must be between 0 and 63
-- characters long, have a UTF-8 encoding of maximum 128 bytes, and must
-- conform to the following PCRE regular expression:
-- \`[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\` No more than 64 labels can be
-- assigned to a given resource.
--
-- /See:/ 'secretLabels' smart constructor.
newtype SecretLabels =
  SecretLabels'
    { _slAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slAddtional'
secretLabels
    :: HashMap Text Text -- ^ 'slAddtional'
    -> SecretLabels
secretLabels pSlAddtional_ =
  SecretLabels' {_slAddtional = _Coerce # pSlAddtional_}


slAddtional :: Lens' SecretLabels (HashMap Text Text)
slAddtional
  = lens _slAddtional (\ s a -> s{_slAddtional = a}) .
      _Coerce

instance FromJSON SecretLabels where
        parseJSON
          = withObject "SecretLabels"
              (\ o -> SecretLabels' <$> (parseJSONObject o))

instance ToJSON SecretLabels where
        toJSON = toJSON . _slAddtional

-- | Response message for SecretManagerService.AccessSecretVersion.
--
-- /See:/ 'accessSecretVersionResponse' smart constructor.
data AccessSecretVersionResponse =
  AccessSecretVersionResponse'
    { _asvrPayload :: !(Maybe SecretPayload)
    , _asvrName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessSecretVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvrPayload'
--
-- * 'asvrName'
accessSecretVersionResponse
    :: AccessSecretVersionResponse
accessSecretVersionResponse =
  AccessSecretVersionResponse' {_asvrPayload = Nothing, _asvrName = Nothing}


-- | Secret payload
asvrPayload :: Lens' AccessSecretVersionResponse (Maybe SecretPayload)
asvrPayload
  = lens _asvrPayload (\ s a -> s{_asvrPayload = a})

-- | The resource name of the SecretVersion in the format
-- \`projects\/*\/secrets\/*\/versions\/*\`.
asvrName :: Lens' AccessSecretVersionResponse (Maybe Text)
asvrName = lens _asvrName (\ s a -> s{_asvrName = a})

instance FromJSON AccessSecretVersionResponse where
        parseJSON
          = withObject "AccessSecretVersionResponse"
              (\ o ->
                 AccessSecretVersionResponse' <$>
                   (o .:? "payload") <*> (o .:? "name"))

instance ToJSON AccessSecretVersionResponse where
        toJSON AccessSecretVersionResponse'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _asvrPayload,
                  ("name" .=) <$> _asvrName])

-- | Response message for SecretManagerService.ListSecretVersions.
--
-- /See:/ 'listSecretVersionsResponse' smart constructor.
data ListSecretVersionsResponse =
  ListSecretVersionsResponse'
    { _lsvrNextPageToken :: !(Maybe Text)
    , _lsvrVersions :: !(Maybe [SecretVersion])
    , _lsvrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSecretVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsvrNextPageToken'
--
-- * 'lsvrVersions'
--
-- * 'lsvrTotalSize'
listSecretVersionsResponse
    :: ListSecretVersionsResponse
listSecretVersionsResponse =
  ListSecretVersionsResponse'
    { _lsvrNextPageToken = Nothing
    , _lsvrVersions = Nothing
    , _lsvrTotalSize = Nothing
    }


-- | A token to retrieve the next page of results. Pass this value in
-- ListSecretVersionsRequest.page_token to retrieve the next page.
lsvrNextPageToken :: Lens' ListSecretVersionsResponse (Maybe Text)
lsvrNextPageToken
  = lens _lsvrNextPageToken
      (\ s a -> s{_lsvrNextPageToken = a})

-- | The list of SecretVersions sorted in reverse by create_time (newest
-- first).
lsvrVersions :: Lens' ListSecretVersionsResponse [SecretVersion]
lsvrVersions
  = lens _lsvrVersions (\ s a -> s{_lsvrVersions = a})
      . _Default
      . _Coerce

-- | The total number of SecretVersions.
lsvrTotalSize :: Lens' ListSecretVersionsResponse (Maybe Int32)
lsvrTotalSize
  = lens _lsvrTotalSize
      (\ s a -> s{_lsvrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListSecretVersionsResponse where
        parseJSON
          = withObject "ListSecretVersionsResponse"
              (\ o ->
                 ListSecretVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListSecretVersionsResponse where
        toJSON ListSecretVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsvrNextPageToken,
                  ("versions" .=) <$> _lsvrVersions,
                  ("totalSize" .=) <$> _lsvrTotalSize])

-- | A Secret is a logical secret whose value and versions can be accessed. A
-- Secret is made up of zero or more SecretVersions that represent the
-- secret data.
--
-- /See:/ 'secret' smart constructor.
data Secret =
  Secret'
    { _sTtl :: !(Maybe GDuration)
    , _sRotation :: !(Maybe Rotation)
    , _sTopics :: !(Maybe [Topic])
    , _sReplication :: !(Maybe Replication)
    , _sName :: !(Maybe Text)
    , _sLabels :: !(Maybe SecretLabels)
    , _sExpireTime :: !(Maybe DateTime')
    , _sCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Secret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTtl'
--
-- * 'sRotation'
--
-- * 'sTopics'
--
-- * 'sReplication'
--
-- * 'sName'
--
-- * 'sLabels'
--
-- * 'sExpireTime'
--
-- * 'sCreateTime'
secret
    :: Secret
secret =
  Secret'
    { _sTtl = Nothing
    , _sRotation = Nothing
    , _sTopics = Nothing
    , _sReplication = Nothing
    , _sName = Nothing
    , _sLabels = Nothing
    , _sExpireTime = Nothing
    , _sCreateTime = Nothing
    }


-- | Input only. The TTL for the Secret.
sTtl :: Lens' Secret (Maybe Scientific)
sTtl
  = lens _sTtl (\ s a -> s{_sTtl = a}) .
      mapping _GDuration

-- | Optional. Rotation policy attached to the Secret. May be excluded if
-- there is no rotation policy.
sRotation :: Lens' Secret (Maybe Rotation)
sRotation
  = lens _sRotation (\ s a -> s{_sRotation = a})

-- | Optional. A list of up to 10 Pub\/Sub topics to which messages are
-- published when control plane operations are called on the secret or its
-- versions.
sTopics :: Lens' Secret [Topic]
sTopics
  = lens _sTopics (\ s a -> s{_sTopics = a}) . _Default
      . _Coerce

-- | Required. Immutable. The replication policy of the secret data attached
-- to the Secret. The replication policy cannot be changed after the Secret
-- has been created.
sReplication :: Lens' Secret (Maybe Replication)
sReplication
  = lens _sReplication (\ s a -> s{_sReplication = a})

-- | Output only. The resource name of the Secret in the format
-- \`projects\/*\/secrets\/*\`.
sName :: Lens' Secret (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The labels assigned to this Secret. Label keys must be between 1 and 63
-- characters long, have a UTF-8 encoding of maximum 128 bytes, and must
-- conform to the following PCRE regular expression:
-- \`\\p{Ll}\\p{Lo}{0,62}\` Label values must be between 0 and 63
-- characters long, have a UTF-8 encoding of maximum 128 bytes, and must
-- conform to the following PCRE regular expression:
-- \`[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\` No more than 64 labels can be
-- assigned to a given resource.
sLabels :: Lens' Secret (Maybe SecretLabels)
sLabels = lens _sLabels (\ s a -> s{_sLabels = a})

-- | Optional. Timestamp in UTC when the Secret is scheduled to expire. This
-- is always provided on output, regardless of what was sent on input.
sExpireTime :: Lens' Secret (Maybe UTCTime)
sExpireTime
  = lens _sExpireTime (\ s a -> s{_sExpireTime = a}) .
      mapping _DateTime

-- | Output only. The time at which the Secret was created.
sCreateTime :: Lens' Secret (Maybe UTCTime)
sCreateTime
  = lens _sCreateTime (\ s a -> s{_sCreateTime = a}) .
      mapping _DateTime

instance FromJSON Secret where
        parseJSON
          = withObject "Secret"
              (\ o ->
                 Secret' <$>
                   (o .:? "ttl") <*> (o .:? "rotation") <*>
                     (o .:? "topics" .!= mempty)
                     <*> (o .:? "replication")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "createTime"))

instance ToJSON Secret where
        toJSON Secret'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _sTtl,
                  ("rotation" .=) <$> _sRotation,
                  ("topics" .=) <$> _sTopics,
                  ("replication" .=) <$> _sReplication,
                  ("name" .=) <$> _sName, ("labels" .=) <$> _sLabels,
                  ("expireTime" .=) <$> _sExpireTime,
                  ("createTime" .=) <$> _sCreateTime])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: \`paths: \"bindings, etag\"\`
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Request message for SecretManagerService.DisableSecretVersion.
--
-- /See:/ 'disableSecretVersionRequest' smart constructor.
data DisableSecretVersionRequest =
  DisableSecretVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisableSecretVersionRequest' with the minimum fields required to make a request.
--
disableSecretVersionRequest
    :: DisableSecretVersionRequest
disableSecretVersionRequest = DisableSecretVersionRequest'


instance FromJSON DisableSecretVersionRequest where
        parseJSON
          = withObject "DisableSecretVersionRequest"
              (\ o -> pure DisableSecretVersionRequest')

instance ToJSON DisableSecretVersionRequest where
        toJSON = const emptyObject

-- | A Pub\/Sub topic which Secret Manager will publish to when control plane
-- events occur on this secret.
--
-- /See:/ 'topic' smart constructor.
newtype Topic =
  Topic'
    { _tName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Topic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
topic
    :: Topic
topic = Topic' {_tName = Nothing}


-- | Required. The resource name of the Pub\/Sub topic that will be published
-- to, in the following format: \`projects\/*\/topics\/*\`. For publication
-- to succeed, the Secret Manager P4SA must have \`pubsub.publisher\`
-- permissions on the topic.
tName :: Lens' Topic (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

instance FromJSON Topic where
        parseJSON
          = withObject "Topic"
              (\ o -> Topic' <$> (o .:? "name"))

instance ToJSON Topic where
        toJSON Topic'{..}
          = object (catMaybes [("name" .=) <$> _tName])

-- | The replication status of a SecretVersion using automatic replication.
-- Only populated if the parent Secret has an automatic replication policy.
--
-- /See:/ 'automaticStatus' smart constructor.
newtype AutomaticStatus =
  AutomaticStatus'
    { _asCustomerManagedEncryption :: Maybe CustomerManagedEncryptionStatus
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutomaticStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asCustomerManagedEncryption'
automaticStatus
    :: AutomaticStatus
automaticStatus = AutomaticStatus' {_asCustomerManagedEncryption = Nothing}


-- | Output only. The customer-managed encryption status of the
-- SecretVersion. Only populated if customer-managed encryption is used.
asCustomerManagedEncryption :: Lens' AutomaticStatus (Maybe CustomerManagedEncryptionStatus)
asCustomerManagedEncryption
  = lens _asCustomerManagedEncryption
      (\ s a -> s{_asCustomerManagedEncryption = a})

instance FromJSON AutomaticStatus where
        parseJSON
          = withObject "AutomaticStatus"
              (\ o ->
                 AutomaticStatus' <$>
                   (o .:? "customerManagedEncryption"))

instance ToJSON AutomaticStatus where
        toJSON AutomaticStatus'{..}
          = object
              (catMaybes
                 [("customerManagedEncryption" .=) <$>
                    _asCustomerManagedEncryption])

-- | Request message for SecretManagerService.AddSecretVersion.
--
-- /See:/ 'addSecretVersionRequest' smart constructor.
newtype AddSecretVersionRequest =
  AddSecretVersionRequest'
    { _aPayload :: Maybe SecretPayload
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddSecretVersionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPayload'
addSecretVersionRequest
    :: AddSecretVersionRequest
addSecretVersionRequest = AddSecretVersionRequest' {_aPayload = Nothing}


-- | Required. The secret payload of the SecretVersion.
aPayload :: Lens' AddSecretVersionRequest (Maybe SecretPayload)
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

instance FromJSON AddSecretVersionRequest where
        parseJSON
          = withObject "AddSecretVersionRequest"
              (\ o ->
                 AddSecretVersionRequest' <$> (o .:? "payload"))

instance ToJSON AddSecretVersionRequest where
        toJSON AddSecretVersionRequest'{..}
          = object (catMaybes [("payload" .=) <$> _aPayload])

-- | A policy that defines the replication and encryption configuration of
-- data.
--
-- /See:/ 'replication' smart constructor.
data Replication =
  Replication'
    { _rAutomatic :: !(Maybe Automatic)
    , _rUserManaged :: !(Maybe UserManaged)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Replication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAutomatic'
--
-- * 'rUserManaged'
replication
    :: Replication
replication = Replication' {_rAutomatic = Nothing, _rUserManaged = Nothing}


-- | The Secret will automatically be replicated without any restrictions.
rAutomatic :: Lens' Replication (Maybe Automatic)
rAutomatic
  = lens _rAutomatic (\ s a -> s{_rAutomatic = a})

-- | The Secret will only be replicated into the locations specified.
rUserManaged :: Lens' Replication (Maybe UserManaged)
rUserManaged
  = lens _rUserManaged (\ s a -> s{_rUserManaged = a})

instance FromJSON Replication where
        parseJSON
          = withObject "Replication"
              (\ o ->
                 Replication' <$>
                   (o .:? "automatic") <*> (o .:? "userManaged"))

instance ToJSON Replication where
        toJSON Replication'{..}
          = object
              (catMaybes
                 [("automatic" .=) <$> _rAutomatic,
                  ("userManaged" .=) <$> _rUserManaged])

-- | Request message for SecretManagerService.EnableSecretVersion.
--
-- /See:/ 'enableSecretVersionRequest' smart constructor.
data EnableSecretVersionRequest =
  EnableSecretVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnableSecretVersionRequest' with the minimum fields required to make a request.
--
enableSecretVersionRequest
    :: EnableSecretVersionRequest
enableSecretVersionRequest = EnableSecretVersionRequest'


instance FromJSON EnableSecretVersionRequest where
        parseJSON
          = withObject "EnableSecretVersionRequest"
              (\ o -> pure EnableSecretVersionRequest')

instance ToJSON EnableSecretVersionRequest where
        toJSON = const emptyObject

-- | A replication policy that replicates the Secret payload into the
-- locations specified in Secret.replication.user_managed.replicas
--
-- /See:/ 'userManaged' smart constructor.
newtype UserManaged =
  UserManaged'
    { _umReplicas :: Maybe [Replica]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserManaged' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umReplicas'
userManaged
    :: UserManaged
userManaged = UserManaged' {_umReplicas = Nothing}


-- | Required. The list of Replicas for this Secret. Cannot be empty.
umReplicas :: Lens' UserManaged [Replica]
umReplicas
  = lens _umReplicas (\ s a -> s{_umReplicas = a}) .
      _Default
      . _Coerce

instance FromJSON UserManaged where
        parseJSON
          = withObject "UserManaged"
              (\ o ->
                 UserManaged' <$> (o .:? "replicas" .!= mempty))

instance ToJSON UserManaged where
        toJSON UserManaged'{..}
          = object
              (catMaybes [("replicas" .=) <$> _umReplicas])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | The replication status of a SecretVersion using user-managed
-- replication. Only populated if the parent Secret has a user-managed
-- replication policy.
--
-- /See:/ 'userManagedStatus' smart constructor.
newtype UserManagedStatus =
  UserManagedStatus'
    { _umsReplicas :: Maybe [ReplicaStatus]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserManagedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umsReplicas'
userManagedStatus
    :: UserManagedStatus
userManagedStatus = UserManagedStatus' {_umsReplicas = Nothing}


-- | Output only. The list of replica statuses for the SecretVersion.
umsReplicas :: Lens' UserManagedStatus [ReplicaStatus]
umsReplicas
  = lens _umsReplicas (\ s a -> s{_umsReplicas = a}) .
      _Default
      . _Coerce

instance FromJSON UserManagedStatus where
        parseJSON
          = withObject "UserManagedStatus"
              (\ o ->
                 UserManagedStatus' <$> (o .:? "replicas" .!= mempty))

instance ToJSON UserManagedStatus where
        toJSON UserManagedStatus'{..}
          = object
              (catMaybes [("replicas" .=) <$> _umsReplicas])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | The replication status of a SecretVersion.
--
-- /See:/ 'replicationStatus' smart constructor.
data ReplicationStatus =
  ReplicationStatus'
    { _rsAutomatic :: !(Maybe AutomaticStatus)
    , _rsUserManaged :: !(Maybe UserManagedStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsAutomatic'
--
-- * 'rsUserManaged'
replicationStatus
    :: ReplicationStatus
replicationStatus =
  ReplicationStatus' {_rsAutomatic = Nothing, _rsUserManaged = Nothing}


-- | Describes the replication status of a SecretVersion with automatic
-- replication. Only populated if the parent Secret has an automatic
-- replication policy.
rsAutomatic :: Lens' ReplicationStatus (Maybe AutomaticStatus)
rsAutomatic
  = lens _rsAutomatic (\ s a -> s{_rsAutomatic = a})

-- | Describes the replication status of a SecretVersion with user-managed
-- replication. Only populated if the parent Secret has a user-managed
-- replication policy.
rsUserManaged :: Lens' ReplicationStatus (Maybe UserManagedStatus)
rsUserManaged
  = lens _rsUserManaged
      (\ s a -> s{_rsUserManaged = a})

instance FromJSON ReplicationStatus where
        parseJSON
          = withObject "ReplicationStatus"
              (\ o ->
                 ReplicationStatus' <$>
                   (o .:? "automatic") <*> (o .:? "userManaged"))

instance ToJSON ReplicationStatus where
        toJSON ReplicationStatus'{..}
          = object
              (catMaybes
                 [("automatic" .=) <$> _rsAutomatic,
                  ("userManaged" .=) <$> _rsUserManaged])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | Configuration for encrypting secret payloads using customer-managed
-- encryption keys (CMEK).
--
-- /See:/ 'customerManagedEncryption' smart constructor.
newtype CustomerManagedEncryption =
  CustomerManagedEncryption'
    { _cmeKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerManagedEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmeKmsKeyName'
customerManagedEncryption
    :: CustomerManagedEncryption
customerManagedEncryption =
  CustomerManagedEncryption' {_cmeKmsKeyName = Nothing}


-- | Required. The resource name of the Cloud KMS CryptoKey used to encrypt
-- secret payloads. For secrets using the UserManaged replication policy
-- type, Cloud KMS CryptoKeys must reside in the same location as the
-- replica location. For secrets using the Automatic replication policy
-- type, Cloud KMS CryptoKeys must reside in \`global\`. The expected
-- format is \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
cmeKmsKeyName :: Lens' CustomerManagedEncryption (Maybe Text)
cmeKmsKeyName
  = lens _cmeKmsKeyName
      (\ s a -> s{_cmeKmsKeyName = a})

instance FromJSON CustomerManagedEncryption where
        parseJSON
          = withObject "CustomerManagedEncryption"
              (\ o ->
                 CustomerManagedEncryption' <$> (o .:? "kmsKeyName"))

instance ToJSON CustomerManagedEncryption where
        toJSON CustomerManagedEncryption'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _cmeKmsKeyName])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
