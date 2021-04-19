{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecretManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecretManager.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. The current state of the SecretVersion.
data SecretVersionState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified. This value is unused and invalid.
    | Enabled
      -- ^ @ENABLED@
      -- The SecretVersion may be accessed.
    | Disabled
      -- ^ @DISABLED@
      -- The SecretVersion may not be accessed, but the secret data is still
      -- available and can be placed back into the ENABLED state.
    | Destroyed
      -- ^ @DESTROYED@
      -- The SecretVersion is destroyed and the secret data is no longer stored.
      -- A version may not leave this state once entered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SecretVersionState

instance FromHttpApiData SecretVersionState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ENABLED" -> Right Enabled
        "DISABLED" -> Right Disabled
        "DESTROYED" -> Right Destroyed
        x -> Left ("Unable to parse SecretVersionState from: " <> x)

instance ToHttpApiData SecretVersionState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Enabled -> "ENABLED"
        Disabled -> "DISABLED"
        Destroyed -> "DESTROYED"

instance FromJSON SecretVersionState where
    parseJSON = parseJSONText "SecretVersionState"

instance ToJSON SecretVersionState where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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
