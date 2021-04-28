{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The name of the template to retrieve.
data OrdersGettestOrdertemplateTemplateName
    = TEMPLATE1
      -- ^ @TEMPLATE1@
    | TEMPLATE2
      -- ^ @TEMPLATE2@
    | TEMPLATE1A
      -- ^ @TEMPLATE1A@
    | TEMPLATE1B
      -- ^ @TEMPLATE1B@
    | TEMPLATE3
      -- ^ @TEMPLATE3@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersGettestOrdertemplateTemplateName

instance FromHttpApiData OrdersGettestOrdertemplateTemplateName where
    parseQueryParam = \case
        "TEMPLATE1" -> Right TEMPLATE1
        "TEMPLATE2" -> Right TEMPLATE2
        "TEMPLATE1A" -> Right TEMPLATE1A
        "TEMPLATE1B" -> Right TEMPLATE1B
        "TEMPLATE3" -> Right TEMPLATE3
        x -> Left ("Unable to parse OrdersGettestOrdertemplateTemplateName from: " <> x)

instance ToHttpApiData OrdersGettestOrdertemplateTemplateName where
    toQueryParam = \case
        TEMPLATE1 -> "TEMPLATE1"
        TEMPLATE2 -> "TEMPLATE2"
        TEMPLATE1A -> "TEMPLATE1A"
        TEMPLATE1B -> "TEMPLATE1B"
        TEMPLATE3 -> "TEMPLATE3"

instance FromJSON OrdersGettestOrdertemplateTemplateName where
    parseJSON = parseJSONText "OrdersGettestOrdertemplateTemplateName"

instance ToJSON OrdersGettestOrdertemplateTemplateName where
    toJSON = toJSONText

-- | Obtains orders that match any of the specified statuses. Please note
-- that \`active\` is a shortcut for \`pendingShipment\` and
-- \`partiallyShipped\`, and \`completed\` is a shortcut for \`shipped\`,
-- \`partiallyDelivered\`, \`delivered\`, \`partiallyReturned\`,
-- \`returned\`, and \`canceled\`.
data OrdersListStatuses
    = Active
      -- ^ @ACTIVE@
    | Completed
      -- ^ @COMPLETED@
    | Canceled
      -- ^ @CANCELED@
    | InProgress
      -- ^ @IN_PROGRESS@
    | PendingShipment
      -- ^ @PENDING_SHIPMENT@
    | PartiallyShipped
      -- ^ @PARTIALLY_SHIPPED@
    | Shipped
      -- ^ @SHIPPED@
    | PartiallyDelivered
      -- ^ @PARTIALLY_DELIVERED@
    | Delivered
      -- ^ @DELIVERED@
    | PartiallyReturned
      -- ^ @PARTIALLY_RETURNED@
    | Returned
      -- ^ @RETURNED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListStatuses

instance FromHttpApiData OrdersListStatuses where
    parseQueryParam = \case
        "ACTIVE" -> Right Active
        "COMPLETED" -> Right Completed
        "CANCELED" -> Right Canceled
        "IN_PROGRESS" -> Right InProgress
        "PENDING_SHIPMENT" -> Right PendingShipment
        "PARTIALLY_SHIPPED" -> Right PartiallyShipped
        "SHIPPED" -> Right Shipped
        "PARTIALLY_DELIVERED" -> Right PartiallyDelivered
        "DELIVERED" -> Right Delivered
        "PARTIALLY_RETURNED" -> Right PartiallyReturned
        "RETURNED" -> Right Returned
        x -> Left ("Unable to parse OrdersListStatuses from: " <> x)

instance ToHttpApiData OrdersListStatuses where
    toQueryParam = \case
        Active -> "ACTIVE"
        Completed -> "COMPLETED"
        Canceled -> "CANCELED"
        InProgress -> "IN_PROGRESS"
        PendingShipment -> "PENDING_SHIPMENT"
        PartiallyShipped -> "PARTIALLY_SHIPPED"
        Shipped -> "SHIPPED"
        PartiallyDelivered -> "PARTIALLY_DELIVERED"
        Delivered -> "DELIVERED"
        PartiallyReturned -> "PARTIALLY_RETURNED"
        Returned -> "RETURNED"

instance FromJSON OrdersListStatuses where
    parseJSON = parseJSONText "OrdersListStatuses"

instance ToJSON OrdersListStatuses where
    toJSON = toJSONText

-- | Return the results in the specified order.
data OrderreturnsListOrderBy
    = ReturnCreationTimeDesc
      -- ^ @RETURN_CREATION_TIME_DESC@
    | ReturnCreationTimeAsc
      -- ^ @RETURN_CREATION_TIME_ASC@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListOrderBy

instance FromHttpApiData OrderreturnsListOrderBy where
    parseQueryParam = \case
        "RETURN_CREATION_TIME_DESC" -> Right ReturnCreationTimeDesc
        "RETURN_CREATION_TIME_ASC" -> Right ReturnCreationTimeAsc
        x -> Left ("Unable to parse OrderreturnsListOrderBy from: " <> x)

instance ToHttpApiData OrderreturnsListOrderBy where
    toQueryParam = \case
        ReturnCreationTimeDesc -> "RETURN_CREATION_TIME_DESC"
        ReturnCreationTimeAsc -> "RETURN_CREATION_TIME_ASC"

instance FromJSON OrderreturnsListOrderBy where
    parseJSON = parseJSONText "OrderreturnsListOrderBy"

instance ToJSON OrderreturnsListOrderBy where
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
