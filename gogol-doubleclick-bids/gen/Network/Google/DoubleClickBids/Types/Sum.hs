{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Format of the generated report.
data QueryMetadataFormat
    = CSV
      -- ^ @CSV@
    | ExcelCSV
      -- ^ @EXCEL_CSV@
    | Xlsx
      -- ^ @XLSX@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMetadataFormat

instance FromHttpApiData QueryMetadataFormat where
    parseQueryParam = \case
        "CSV" -> Right CSV
        "EXCEL_CSV" -> Right ExcelCSV
        "XLSX" -> Right Xlsx
        x -> Left ("Unable to parse QueryMetadataFormat from: " <> x)

instance ToHttpApiData QueryMetadataFormat where
    toQueryParam = \case
        CSV -> "CSV"
        ExcelCSV -> "EXCEL_CSV"
        Xlsx -> "XLSX"

instance FromJSON QueryMetadataFormat where
    parseJSON = parseJSONText "QueryMetadataFormat"

instance ToJSON QueryMetadataFormat where
    toJSON = toJSONText

-- | Report type.
data ParametersType
    = TypeGeneral
      -- ^ @TYPE_GENERAL@
    | TypeAudiencePerformance
      -- ^ @TYPE_AUDIENCE_PERFORMANCE@
    | TypeInventoryAvailability
      -- ^ @TYPE_INVENTORY_AVAILABILITY@
    | TypeKeyword
      -- ^ @TYPE_KEYWORD@
    | TypePixelLoad
      -- ^ @TYPE_PIXEL_LOAD@
    | TypeAudienceComPosition
      -- ^ @TYPE_AUDIENCE_COMPOSITION@
    | TypeCrossPartner
      -- ^ @TYPE_CROSS_PARTNER@
    | TypePageCategory
      -- ^ @TYPE_PAGE_CATEGORY@
    | TypeThirdPartyDataProvider
      -- ^ @TYPE_THIRD_PARTY_DATA_PROVIDER@
    | TypeCrossPartnerThirdPartyDataProvider
      -- ^ @TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER@
    | TypeClientSafe
      -- ^ @TYPE_CLIENT_SAFE@
    | TypeOrderId
      -- ^ @TYPE_ORDER_ID@
    | TypeFee
      -- ^ @TYPE_FEE@
    | TypeCrossFee
      -- ^ @TYPE_CROSS_FEE@
    | TypeActiveGrp
      -- ^ @TYPE_ACTIVE_GRP@
    | TypeYouTubeVertical
      -- ^ @TYPE_YOUTUBE_VERTICAL@
    | TypeComscoreVce
      -- ^ @TYPE_COMSCORE_VCE@
    | TypeTrueview
      -- ^ @TYPE_TRUEVIEW@
    | TypeNielsenAudienceProFile
      -- ^ @TYPE_NIELSEN_AUDIENCE_PROFILE@
    | TypeNielsenDailyReachBuild
      -- ^ @TYPE_NIELSEN_DAILY_REACH_BUILD@
    | TypeNielsenSite
      -- ^ @TYPE_NIELSEN_SITE@
    | TypeReachAndFrequency
      -- ^ @TYPE_REACH_AND_FREQUENCY@
    | TypeEstimatedConversion
      -- ^ @TYPE_ESTIMATED_CONVERSION@
    | TypeVerification
      -- ^ @TYPE_VERIFICATION@
    | TypeTrueviewIar
      -- ^ @TYPE_TRUEVIEW_IAR@
    | TypeNielsenOnlineGlobalMarket
      -- ^ @TYPE_NIELSEN_ONLINE_GLOBAL_MARKET@
    | TypePetraNielsenAudienceProFile
      -- ^ @TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE@
    | TypePetraNielsenDailyReachBuild
      -- ^ @TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD@
    | TypePetraNielsenOnlineGlobalMarket
      -- ^ @TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET@
    | TypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | TypeReachAudience
      -- ^ @TYPE_REACH_AUDIENCE@
    | TypeLinearTvSearchLift
      -- ^ @TYPE_LINEAR_TV_SEARCH_LIFT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersType

instance FromHttpApiData ParametersType where
    parseQueryParam = \case
        "TYPE_GENERAL" -> Right TypeGeneral
        "TYPE_AUDIENCE_PERFORMANCE" -> Right TypeAudiencePerformance
        "TYPE_INVENTORY_AVAILABILITY" -> Right TypeInventoryAvailability
        "TYPE_KEYWORD" -> Right TypeKeyword
        "TYPE_PIXEL_LOAD" -> Right TypePixelLoad
        "TYPE_AUDIENCE_COMPOSITION" -> Right TypeAudienceComPosition
        "TYPE_CROSS_PARTNER" -> Right TypeCrossPartner
        "TYPE_PAGE_CATEGORY" -> Right TypePageCategory
        "TYPE_THIRD_PARTY_DATA_PROVIDER" -> Right TypeThirdPartyDataProvider
        "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER" -> Right TypeCrossPartnerThirdPartyDataProvider
        "TYPE_CLIENT_SAFE" -> Right TypeClientSafe
        "TYPE_ORDER_ID" -> Right TypeOrderId
        "TYPE_FEE" -> Right TypeFee
        "TYPE_CROSS_FEE" -> Right TypeCrossFee
        "TYPE_ACTIVE_GRP" -> Right TypeActiveGrp
        "TYPE_YOUTUBE_VERTICAL" -> Right TypeYouTubeVertical
        "TYPE_COMSCORE_VCE" -> Right TypeComscoreVce
        "TYPE_TRUEVIEW" -> Right TypeTrueview
        "TYPE_NIELSEN_AUDIENCE_PROFILE" -> Right TypeNielsenAudienceProFile
        "TYPE_NIELSEN_DAILY_REACH_BUILD" -> Right TypeNielsenDailyReachBuild
        "TYPE_NIELSEN_SITE" -> Right TypeNielsenSite
        "TYPE_REACH_AND_FREQUENCY" -> Right TypeReachAndFrequency
        "TYPE_ESTIMATED_CONVERSION" -> Right TypeEstimatedConversion
        "TYPE_VERIFICATION" -> Right TypeVerification
        "TYPE_TRUEVIEW_IAR" -> Right TypeTrueviewIar
        "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypeNielsenOnlineGlobalMarket
        "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE" -> Right TypePetraNielsenAudienceProFile
        "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD" -> Right TypePetraNielsenDailyReachBuild
        "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypePetraNielsenOnlineGlobalMarket
        "TYPE_NOT_SUPPORTED" -> Right TypeNotSupported
        "TYPE_REACH_AUDIENCE" -> Right TypeReachAudience
        "TYPE_LINEAR_TV_SEARCH_LIFT" -> Right TypeLinearTvSearchLift
        x -> Left ("Unable to parse ParametersType from: " <> x)

instance ToHttpApiData ParametersType where
    toQueryParam = \case
        TypeGeneral -> "TYPE_GENERAL"
        TypeAudiencePerformance -> "TYPE_AUDIENCE_PERFORMANCE"
        TypeInventoryAvailability -> "TYPE_INVENTORY_AVAILABILITY"
        TypeKeyword -> "TYPE_KEYWORD"
        TypePixelLoad -> "TYPE_PIXEL_LOAD"
        TypeAudienceComPosition -> "TYPE_AUDIENCE_COMPOSITION"
        TypeCrossPartner -> "TYPE_CROSS_PARTNER"
        TypePageCategory -> "TYPE_PAGE_CATEGORY"
        TypeThirdPartyDataProvider -> "TYPE_THIRD_PARTY_DATA_PROVIDER"
        TypeCrossPartnerThirdPartyDataProvider -> "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"
        TypeClientSafe -> "TYPE_CLIENT_SAFE"
        TypeOrderId -> "TYPE_ORDER_ID"
        TypeFee -> "TYPE_FEE"
        TypeCrossFee -> "TYPE_CROSS_FEE"
        TypeActiveGrp -> "TYPE_ACTIVE_GRP"
        TypeYouTubeVertical -> "TYPE_YOUTUBE_VERTICAL"
        TypeComscoreVce -> "TYPE_COMSCORE_VCE"
        TypeTrueview -> "TYPE_TRUEVIEW"
        TypeNielsenAudienceProFile -> "TYPE_NIELSEN_AUDIENCE_PROFILE"
        TypeNielsenDailyReachBuild -> "TYPE_NIELSEN_DAILY_REACH_BUILD"
        TypeNielsenSite -> "TYPE_NIELSEN_SITE"
        TypeReachAndFrequency -> "TYPE_REACH_AND_FREQUENCY"
        TypeEstimatedConversion -> "TYPE_ESTIMATED_CONVERSION"
        TypeVerification -> "TYPE_VERIFICATION"
        TypeTrueviewIar -> "TYPE_TRUEVIEW_IAR"
        TypeNielsenOnlineGlobalMarket -> "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET"
        TypePetraNielsenAudienceProFile -> "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE"
        TypePetraNielsenDailyReachBuild -> "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD"
        TypePetraNielsenOnlineGlobalMarket -> "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET"
        TypeNotSupported -> "TYPE_NOT_SUPPORTED"
        TypeReachAudience -> "TYPE_REACH_AUDIENCE"
        TypeLinearTvSearchLift -> "TYPE_LINEAR_TV_SEARCH_LIFT"

instance FromJSON ParametersType where
    parseJSON = parseJSONText "ParametersType"

instance ToJSON ParametersType where
    toJSON = toJSONText

-- | Filter type used to filter line items to fetch.
data DownloadLineItemsRequestFilterType
    = AdvertiserId
      -- ^ @ADVERTISER_ID@
    | InsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | LineItemId
      -- ^ @LINE_ITEM_ID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFilterType

instance FromHttpApiData DownloadLineItemsRequestFilterType where
    parseQueryParam = \case
        "ADVERTISER_ID" -> Right AdvertiserId
        "INSERTION_ORDER_ID" -> Right InsertionOrderId
        "LINE_ITEM_ID" -> Right LineItemId
        x -> Left ("Unable to parse DownloadLineItemsRequestFilterType from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFilterType where
    toQueryParam = \case
        AdvertiserId -> "ADVERTISER_ID"
        InsertionOrderId -> "INSERTION_ORDER_ID"
        LineItemId -> "LINE_ITEM_ID"

instance FromJSON DownloadLineItemsRequestFilterType where
    parseJSON = parseJSONText "DownloadLineItemsRequestFilterType"

instance ToJSON DownloadLineItemsRequestFilterType where
    toJSON = toJSONText

-- | Filter type used to filter entities to fetch. PARTNER_ID and
-- INVENTORY_SOURCE_ID may only be used when downloading inventory sources.
data DownloadRequestFilterType
    = DRFTAdvertiserId
      -- ^ @ADVERTISER_ID@
    | DRFTInsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | DRFTLineItemId
      -- ^ @LINE_ITEM_ID@
    | DRFTCampaignId
      -- ^ @CAMPAIGN_ID@
    | DRFTInventorySourceId
      -- ^ @INVENTORY_SOURCE_ID@
    | DRFTPartnerId
      -- ^ @PARTNER_ID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadRequestFilterType

instance FromHttpApiData DownloadRequestFilterType where
    parseQueryParam = \case
        "ADVERTISER_ID" -> Right DRFTAdvertiserId
        "INSERTION_ORDER_ID" -> Right DRFTInsertionOrderId
        "LINE_ITEM_ID" -> Right DRFTLineItemId
        "CAMPAIGN_ID" -> Right DRFTCampaignId
        "INVENTORY_SOURCE_ID" -> Right DRFTInventorySourceId
        "PARTNER_ID" -> Right DRFTPartnerId
        x -> Left ("Unable to parse DownloadRequestFilterType from: " <> x)

instance ToHttpApiData DownloadRequestFilterType where
    toQueryParam = \case
        DRFTAdvertiserId -> "ADVERTISER_ID"
        DRFTInsertionOrderId -> "INSERTION_ORDER_ID"
        DRFTLineItemId -> "LINE_ITEM_ID"
        DRFTCampaignId -> "CAMPAIGN_ID"
        DRFTInventorySourceId -> "INVENTORY_SOURCE_ID"
        DRFTPartnerId -> "PARTNER_ID"

instance FromJSON DownloadRequestFilterType where
    parseJSON = parseJSONText "DownloadRequestFilterType"

instance ToJSON DownloadRequestFilterType where
    toJSON = toJSONText

data DownloadRequestFileTypesItem
    = InsertionOrder
      -- ^ @INSERTION_ORDER@
    | LineItem
      -- ^ @LINE_ITEM@
    | AdGroup
      -- ^ @AD_GROUP@
    | AD
      -- ^ @AD@
    | Campaign
      -- ^ @CAMPAIGN@
    | InventorySource
      -- ^ @INVENTORY_SOURCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadRequestFileTypesItem

instance FromHttpApiData DownloadRequestFileTypesItem where
    parseQueryParam = \case
        "INSERTION_ORDER" -> Right InsertionOrder
        "LINE_ITEM" -> Right LineItem
        "AD_GROUP" -> Right AdGroup
        "AD" -> Right AD
        "CAMPAIGN" -> Right Campaign
        "INVENTORY_SOURCE" -> Right InventorySource
        x -> Left ("Unable to parse DownloadRequestFileTypesItem from: " <> x)

instance ToHttpApiData DownloadRequestFileTypesItem where
    toQueryParam = \case
        InsertionOrder -> "INSERTION_ORDER"
        LineItem -> "LINE_ITEM"
        AdGroup -> "AD_GROUP"
        AD -> "AD"
        Campaign -> "CAMPAIGN"
        InventorySource -> "INVENTORY_SOURCE"

instance FromJSON DownloadRequestFileTypesItem where
    parseJSON = parseJSONText "DownloadRequestFileTypesItem"

instance ToJSON DownloadRequestFileTypesItem where
    toJSON = toJSONText

-- | Range of report data.
data QueryMetadataDataRange
    = QMDRCustomDates
      -- ^ @CUSTOM_DATES@
    | QMDRCurrentDay
      -- ^ @CURRENT_DAY@
    | QMDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | QMDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | QMDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | QMDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | QMDRYearToDate
      -- ^ @YEAR_TO_DATE@
    | QMDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | QMDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | QMDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | QMDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | QMDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | QMDRLast7Days
      -- ^ @LAST_7_DAYS@
    | QMDRLast30Days
      -- ^ @LAST_30_DAYS@
    | QMDRLast90Days
      -- ^ @LAST_90_DAYS@
    | QMDRLast365Days
      -- ^ @LAST_365_DAYS@
    | QMDRAllTime
      -- ^ @ALL_TIME@
    | QMDRLast14Days
      -- ^ @LAST_14_DAYS@
    | QMDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMetadataDataRange

instance FromHttpApiData QueryMetadataDataRange where
    parseQueryParam = \case
        "CUSTOM_DATES" -> Right QMDRCustomDates
        "CURRENT_DAY" -> Right QMDRCurrentDay
        "PREVIOUS_DAY" -> Right QMDRPreviousDay
        "WEEK_TO_DATE" -> Right QMDRWeekToDate
        "MONTH_TO_DATE" -> Right QMDRMonthToDate
        "QUARTER_TO_DATE" -> Right QMDRQuarterToDate
        "YEAR_TO_DATE" -> Right QMDRYearToDate
        "PREVIOUS_WEEK" -> Right QMDRPreviousWeek
        "PREVIOUS_HALF_MONTH" -> Right QMDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right QMDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right QMDRPreviousQuarter
        "PREVIOUS_YEAR" -> Right QMDRPreviousYear
        "LAST_7_DAYS" -> Right QMDRLast7Days
        "LAST_30_DAYS" -> Right QMDRLast30Days
        "LAST_90_DAYS" -> Right QMDRLast90Days
        "LAST_365_DAYS" -> Right QMDRLast365Days
        "ALL_TIME" -> Right QMDRAllTime
        "LAST_14_DAYS" -> Right QMDRLast14Days
        "TYPE_NOT_SUPPORTED" -> Right QMDRTypeNotSupported
        x -> Left ("Unable to parse QueryMetadataDataRange from: " <> x)

instance ToHttpApiData QueryMetadataDataRange where
    toQueryParam = \case
        QMDRCustomDates -> "CUSTOM_DATES"
        QMDRCurrentDay -> "CURRENT_DAY"
        QMDRPreviousDay -> "PREVIOUS_DAY"
        QMDRWeekToDate -> "WEEK_TO_DATE"
        QMDRMonthToDate -> "MONTH_TO_DATE"
        QMDRQuarterToDate -> "QUARTER_TO_DATE"
        QMDRYearToDate -> "YEAR_TO_DATE"
        QMDRPreviousWeek -> "PREVIOUS_WEEK"
        QMDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        QMDRPreviousMonth -> "PREVIOUS_MONTH"
        QMDRPreviousQuarter -> "PREVIOUS_QUARTER"
        QMDRPreviousYear -> "PREVIOUS_YEAR"
        QMDRLast7Days -> "LAST_7_DAYS"
        QMDRLast30Days -> "LAST_30_DAYS"
        QMDRLast90Days -> "LAST_90_DAYS"
        QMDRLast365Days -> "LAST_365_DAYS"
        QMDRAllTime -> "ALL_TIME"
        QMDRLast14Days -> "LAST_14_DAYS"
        QMDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"

instance FromJSON QueryMetadataDataRange where
    parseJSON = parseJSONText "QueryMetadataDataRange"

instance ToJSON QueryMetadataDataRange where
    toJSON = toJSONText

data ParametersMetricsItem
    = MetricUnknown
      -- ^ @METRIC_UNKNOWN@
    | MetricImpressions
      -- ^ @METRIC_IMPRESSIONS@
    | MetricClicks
      -- ^ @METRIC_CLICKS@
    | MetricLastImpressions
      -- ^ @METRIC_LAST_IMPRESSIONS@
    | MetricLastClicks
      -- ^ @METRIC_LAST_CLICKS@
    | MetricTotalConversions
      -- ^ @METRIC_TOTAL_CONVERSIONS@
    | MetricMediaCostAdvertiser
      -- ^ @METRIC_MEDIA_COST_ADVERTISER@
    | MetricMediaCostUsd
      -- ^ @METRIC_MEDIA_COST_USD@
    | MetricMediaCostPartner
      -- ^ @METRIC_MEDIA_COST_PARTNER@
    | MetricDataCostAdvertiser
      -- ^ @METRIC_DATA_COST_ADVERTISER@
    | MetricDataCostUsd
      -- ^ @METRIC_DATA_COST_USD@
    | MetricDataCostPartner
      -- ^ @METRIC_DATA_COST_PARTNER@
    | MetricCpmFEE1Advertiser
      -- ^ @METRIC_CPM_FEE1_ADVERTISER@
    | MetricCpmFEE1Usd
      -- ^ @METRIC_CPM_FEE1_USD@
    | MetricCpmFEE1Partner
      -- ^ @METRIC_CPM_FEE1_PARTNER@
    | MetricCpmFEE2Advertiser
      -- ^ @METRIC_CPM_FEE2_ADVERTISER@
    | MetricCpmFEE2Usd
      -- ^ @METRIC_CPM_FEE2_USD@
    | MetricCpmFEE2Partner
      -- ^ @METRIC_CPM_FEE2_PARTNER@
    | MetricMediaFEE1Advertiser
      -- ^ @METRIC_MEDIA_FEE1_ADVERTISER@
    | MetricMediaFEE1Usd
      -- ^ @METRIC_MEDIA_FEE1_USD@
    | MetricMediaFEE1Partner
      -- ^ @METRIC_MEDIA_FEE1_PARTNER@
    | MetricMediaFEE2Advertiser
      -- ^ @METRIC_MEDIA_FEE2_ADVERTISER@
    | MetricMediaFEE2Usd
      -- ^ @METRIC_MEDIA_FEE2_USD@
    | MetricMediaFEE2Partner
      -- ^ @METRIC_MEDIA_FEE2_PARTNER@
    | MetricRevenueAdvertiser
      -- ^ @METRIC_REVENUE_ADVERTISER@
    | MetricRevenueUsd
      -- ^ @METRIC_REVENUE_USD@
    | MetricRevenuePartner
      -- ^ @METRIC_REVENUE_PARTNER@
    | MetricProfitAdvertiser
      -- ^ @METRIC_PROFIT_ADVERTISER@
    | MetricProfitUsd
      -- ^ @METRIC_PROFIT_USD@
    | MetricProfitPartner
      -- ^ @METRIC_PROFIT_PARTNER@
    | MetricProfitMargin
      -- ^ @METRIC_PROFIT_MARGIN@
    | MetricTotalMediaCostUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_USD@
    | MetricTotalMediaCostPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_PARTNER@
    | MetricTotalMediaCostAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ADVERTISER@
    | MetricBillableCostUsd
      -- ^ @METRIC_BILLABLE_COST_USD@
    | MetricBillableCostPartner
      -- ^ @METRIC_BILLABLE_COST_PARTNER@
    | MetricBillableCostAdvertiser
      -- ^ @METRIC_BILLABLE_COST_ADVERTISER@
    | MetricPlatformFeeUsd
      -- ^ @METRIC_PLATFORM_FEE_USD@
    | MetricPlatformFeePartner
      -- ^ @METRIC_PLATFORM_FEE_PARTNER@
    | MetricPlatformFeeAdvertiser
      -- ^ @METRIC_PLATFORM_FEE_ADVERTISER@
    | MetricVideoCompletionRate
      -- ^ @METRIC_VIDEO_COMPLETION_RATE@
    | MetricProfitEcpmAdvertiser
      -- ^ @METRIC_PROFIT_ECPM_ADVERTISER@
    | MetricProfitEcpmUsd
      -- ^ @METRIC_PROFIT_ECPM_USD@
    | MetricProfitEcpmPartner
      -- ^ @METRIC_PROFIT_ECPM_PARTNER@
    | MetricRevenueEcpmAdvertiser
      -- ^ @METRIC_REVENUE_ECPM_ADVERTISER@
    | MetricRevenueEcpmUsd
      -- ^ @METRIC_REVENUE_ECPM_USD@
    | MetricRevenueEcpmPartner
      -- ^ @METRIC_REVENUE_ECPM_PARTNER@
    | MetricRevenueEcpcAdvertiser
      -- ^ @METRIC_REVENUE_ECPC_ADVERTISER@
    | MetricRevenueEcpcUsd
      -- ^ @METRIC_REVENUE_ECPC_USD@
    | MetricRevenueEcpcPartner
      -- ^ @METRIC_REVENUE_ECPC_PARTNER@
    | MetricRevenueEcpaAdvertiser
      -- ^ @METRIC_REVENUE_ECPA_ADVERTISER@
    | MetricRevenueEcpaUsd
      -- ^ @METRIC_REVENUE_ECPA_USD@
    | MetricRevenueEcpaPartner
      -- ^ @METRIC_REVENUE_ECPA_PARTNER@
    | MetricRevenueEcpapvAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPV_ADVERTISER@
    | MetricRevenueEcpapvUsd
      -- ^ @METRIC_REVENUE_ECPAPV_USD@
    | MetricRevenueEcpapvPartner
      -- ^ @METRIC_REVENUE_ECPAPV_PARTNER@
    | MetricRevenueEcpapcAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPC_ADVERTISER@
    | MetricRevenueEcpapcUsd
      -- ^ @METRIC_REVENUE_ECPAPC_USD@
    | MetricRevenueEcpapcPartner
      -- ^ @METRIC_REVENUE_ECPAPC_PARTNER@
    | MetricMediaCostEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPM_ADVERTISER@
    | MetricMediaCostEcpmUsd
      -- ^ @METRIC_MEDIA_COST_ECPM_USD@
    | MetricMediaCostEcpmPartner
      -- ^ @METRIC_MEDIA_COST_ECPM_PARTNER@
    | MetricMediaCostEcpcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPC_ADVERTISER@
    | MetricMediaCostEcpcUsd
      -- ^ @METRIC_MEDIA_COST_ECPC_USD@
    | MetricMediaCostEcpcPartner
      -- ^ @METRIC_MEDIA_COST_ECPC_PARTNER@
    | MetricMediaCostEcpaAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPA_ADVERTISER@
    | MetricMediaCostEcpaUsd
      -- ^ @METRIC_MEDIA_COST_ECPA_USD@
    | MetricMediaCostEcpaPartner
      -- ^ @METRIC_MEDIA_COST_ECPA_PARTNER@
    | MetricMediaCostEcpapvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricMediaCostEcpapvUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPV_USD@
    | MetricMediaCostEcpapvPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPV_PARTNER@
    | MetricMediaCostEcpapcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricMediaCostEcpapcUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPC_USD@
    | MetricMediaCostEcpapcPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPC_PARTNER@
    | MetricTotalMediaCostEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER@
    | MetricTotalMediaCostEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_USD@
    | MetricTotalMediaCostEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER@
    | MetricTotalMediaCostEcpcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER@
    | MetricTotalMediaCostEcpcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_USD@
    | MetricTotalMediaCostEcpcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER@
    | MetricTotalMediaCostEcpaAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER@
    | MetricTotalMediaCostEcpaUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_USD@
    | MetricTotalMediaCostEcpaPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER@
    | MetricTotalMediaCostEcpapvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricTotalMediaCostEcpapvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_USD@
    | MetricTotalMediaCostEcpapvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER@
    | MetricTotalMediaCostEcpapcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricTotalMediaCostEcpapcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_USD@
    | MetricTotalMediaCostEcpapcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER@
    | MetricRichMediaVideoPlays
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PLAYS@
    | MetricRichMediaVideoCompletions
      -- ^ @METRIC_RICH_MEDIA_VIDEO_COMPLETIONS@
    | MetricRichMediaVideoPauses
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PAUSES@
    | MetricRichMediaVideoMutes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MUTES@
    | MetricRichMediaVideoMidpoints
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MIDPOINTS@
    | MetricRichMediaVideoFullScreens
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS@
    | MetricRichMediaVideoFirstQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES@
    | MetricRichMediaVideoThirdQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES@
    | MetricClickToPostClickConversionRate
      -- ^ @METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE@
    | MetricImpressionsToConversionRate
      -- ^ @METRIC_IMPRESSIONS_TO_CONVERSION_RATE@
    | MetricConversionsPerMille
      -- ^ @METRIC_CONVERSIONS_PER_MILLE@
    | MetricCtr
      -- ^ @METRIC_CTR@
    | MetricBidRequests
      -- ^ @METRIC_BID_REQUESTS@
    | MetricUniqueVisitorsCookies
      -- ^ @METRIC_UNIQUE_VISITORS_COOKIES@
    | MetricRevenueEcpcvAdvertiser
      -- ^ @METRIC_REVENUE_ECPCV_ADVERTISER@
    | MetricRevenueEcpcvUsd
      -- ^ @METRIC_REVENUE_ECPCV_USD@
    | MetricRevenueEcpcvPartner
      -- ^ @METRIC_REVENUE_ECPCV_PARTNER@
    | MetricMediaCostEcpcvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricMediaCostEcpcvUsd
      -- ^ @METRIC_MEDIA_COST_ECPCV_USD@
    | MetricMediaCostEcpcvPartner
      -- ^ @METRIC_MEDIA_COST_ECPCV_PARTNER@
    | MetricTotalMediaCostEcpcvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricTotalMediaCostEcpcvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_USD@
    | MetricTotalMediaCostEcpcvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER@
    | MetricRichMediaVideoSkips
      -- ^ @METRIC_RICH_MEDIA_VIDEO_SKIPS@
    | MetricFEE2Advertiser
      -- ^ @METRIC_FEE2_ADVERTISER@
    | MetricFEE2Usd
      -- ^ @METRIC_FEE2_USD@
    | MetricFEE2Partner
      -- ^ @METRIC_FEE2_PARTNER@
    | MetricFEE3Advertiser
      -- ^ @METRIC_FEE3_ADVERTISER@
    | MetricFEE3Usd
      -- ^ @METRIC_FEE3_USD@
    | MetricFEE3Partner
      -- ^ @METRIC_FEE3_PARTNER@
    | MetricFEE4Advertiser
      -- ^ @METRIC_FEE4_ADVERTISER@
    | MetricFEE4Usd
      -- ^ @METRIC_FEE4_USD@
    | MetricFEE4Partner
      -- ^ @METRIC_FEE4_PARTNER@
    | MetricFEE5Advertiser
      -- ^ @METRIC_FEE5_ADVERTISER@
    | MetricFEE5Usd
      -- ^ @METRIC_FEE5_USD@
    | MetricFEE5Partner
      -- ^ @METRIC_FEE5_PARTNER@
    | MetricFEE6Advertiser
      -- ^ @METRIC_FEE6_ADVERTISER@
    | MetricFEE6Usd
      -- ^ @METRIC_FEE6_USD@
    | MetricFEE6Partner
      -- ^ @METRIC_FEE6_PARTNER@
    | MetricFEE7Advertiser
      -- ^ @METRIC_FEE7_ADVERTISER@
    | MetricFEE7Usd
      -- ^ @METRIC_FEE7_USD@
    | MetricFEE7Partner
      -- ^ @METRIC_FEE7_PARTNER@
    | MetricFEE8Advertiser
      -- ^ @METRIC_FEE8_ADVERTISER@
    | MetricFEE8Usd
      -- ^ @METRIC_FEE8_USD@
    | MetricFEE8Partner
      -- ^ @METRIC_FEE8_PARTNER@
    | MetricFEE9Advertiser
      -- ^ @METRIC_FEE9_ADVERTISER@
    | MetricFEE9Usd
      -- ^ @METRIC_FEE9_USD@
    | MetricFEE9Partner
      -- ^ @METRIC_FEE9_PARTNER@
    | MetricFEE10Advertiser
      -- ^ @METRIC_FEE10_ADVERTISER@
    | MetricFEE10Usd
      -- ^ @METRIC_FEE10_USD@
    | MetricFEE10Partner
      -- ^ @METRIC_FEE10_PARTNER@
    | MetricFEE11Advertiser
      -- ^ @METRIC_FEE11_ADVERTISER@
    | MetricFEE11Usd
      -- ^ @METRIC_FEE11_USD@
    | MetricFEE11Partner
      -- ^ @METRIC_FEE11_PARTNER@
    | MetricFEE12Advertiser
      -- ^ @METRIC_FEE12_ADVERTISER@
    | MetricFEE12Usd
      -- ^ @METRIC_FEE12_USD@
    | MetricFEE12Partner
      -- ^ @METRIC_FEE12_PARTNER@
    | MetricFEE13Advertiser
      -- ^ @METRIC_FEE13_ADVERTISER@
    | MetricFEE13Usd
      -- ^ @METRIC_FEE13_USD@
    | MetricFEE13Partner
      -- ^ @METRIC_FEE13_PARTNER@
    | MetricFEE14Advertiser
      -- ^ @METRIC_FEE14_ADVERTISER@
    | MetricFEE14Usd
      -- ^ @METRIC_FEE14_USD@
    | MetricFEE14Partner
      -- ^ @METRIC_FEE14_PARTNER@
    | MetricFEE15Advertiser
      -- ^ @METRIC_FEE15_ADVERTISER@
    | MetricFEE15Usd
      -- ^ @METRIC_FEE15_USD@
    | MetricFEE15Partner
      -- ^ @METRIC_FEE15_PARTNER@
    | MetricCpmFEE3Advertiser
      -- ^ @METRIC_CPM_FEE3_ADVERTISER@
    | MetricCpmFEE3Usd
      -- ^ @METRIC_CPM_FEE3_USD@
    | MetricCpmFEE3Partner
      -- ^ @METRIC_CPM_FEE3_PARTNER@
    | MetricCpmFEE4Advertiser
      -- ^ @METRIC_CPM_FEE4_ADVERTISER@
    | MetricCpmFEE4Usd
      -- ^ @METRIC_CPM_FEE4_USD@
    | MetricCpmFEE4Partner
      -- ^ @METRIC_CPM_FEE4_PARTNER@
    | MetricCpmFEE5Advertiser
      -- ^ @METRIC_CPM_FEE5_ADVERTISER@
    | MetricCpmFEE5Usd
      -- ^ @METRIC_CPM_FEE5_USD@
    | MetricCpmFEE5Partner
      -- ^ @METRIC_CPM_FEE5_PARTNER@
    | MetricMediaFEE3Advertiser
      -- ^ @METRIC_MEDIA_FEE3_ADVERTISER@
    | MetricMediaFEE3Usd
      -- ^ @METRIC_MEDIA_FEE3_USD@
    | MetricMediaFEE3Partner
      -- ^ @METRIC_MEDIA_FEE3_PARTNER@
    | MetricMediaFEE4Advertiser
      -- ^ @METRIC_MEDIA_FEE4_ADVERTISER@
    | MetricMediaFEE4Usd
      -- ^ @METRIC_MEDIA_FEE4_USD@
    | MetricMediaFEE4Partner
      -- ^ @METRIC_MEDIA_FEE4_PARTNER@
    | MetricMediaFEE5Advertiser
      -- ^ @METRIC_MEDIA_FEE5_ADVERTISER@
    | MetricMediaFEE5Usd
      -- ^ @METRIC_MEDIA_FEE5_USD@
    | MetricMediaFEE5Partner
      -- ^ @METRIC_MEDIA_FEE5_PARTNER@
    | MetricVideoCompanionImpressions
      -- ^ @METRIC_VIDEO_COMPANION_IMPRESSIONS@
    | MetricVideoCompanionClicks
      -- ^ @METRIC_VIDEO_COMPANION_CLICKS@
    | MetricFEE16Advertiser
      -- ^ @METRIC_FEE16_ADVERTISER@
    | MetricFEE16Usd
      -- ^ @METRIC_FEE16_USD@
    | MetricFEE16Partner
      -- ^ @METRIC_FEE16_PARTNER@
    | MetricFEE17Advertiser
      -- ^ @METRIC_FEE17_ADVERTISER@
    | MetricFEE17Usd
      -- ^ @METRIC_FEE17_USD@
    | MetricFEE17Partner
      -- ^ @METRIC_FEE17_PARTNER@
    | MetricFEE18Advertiser
      -- ^ @METRIC_FEE18_ADVERTISER@
    | MetricFEE18Usd
      -- ^ @METRIC_FEE18_USD@
    | MetricFEE18Partner
      -- ^ @METRIC_FEE18_PARTNER@
    | MetricTrueviewViews
      -- ^ @METRIC_TRUEVIEW_VIEWS@
    | MetricTrueviewUniqueViewers
      -- ^ @METRIC_TRUEVIEW_UNIQUE_VIEWERS@
    | MetricTrueviewEarnedViews
      -- ^ @METRIC_TRUEVIEW_EARNED_VIEWS@
    | MetricTrueviewEarnedSubscribers
      -- ^ @METRIC_TRUEVIEW_EARNED_SUBSCRIBERS@
    | MetricTrueviewEarnedPlayListAdditions
      -- ^ @METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS@
    | MetricTrueviewEarnedLikes
      -- ^ @METRIC_TRUEVIEW_EARNED_LIKES@
    | MetricTrueviewEarnedShares
      -- ^ @METRIC_TRUEVIEW_EARNED_SHARES@
    | MetricTrueviewImpressionShare
      -- ^ @METRIC_TRUEVIEW_IMPRESSION_SHARE@
    | MetricTrueviewLostIsBudget
      -- ^ @METRIC_TRUEVIEW_LOST_IS_BUDGET@
    | MetricTrueviewLostIsRank
      -- ^ @METRIC_TRUEVIEW_LOST_IS_RANK@
    | MetricTrueviewViewThroughConversion
      -- ^ @METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION@
    | MetricTrueviewConversionManyPerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW@
    | MetricTrueviewTotalConversionValue
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE@
    | MetricTrueviewViewRate
      -- ^ @METRIC_TRUEVIEW_VIEW_RATE@
    | MetricTrueviewConversionRateOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW@
    | MetricTrueviewCpvAdvertiser
      -- ^ @METRIC_TRUEVIEW_CPV_ADVERTISER@
    | MetricTrueviewCpvUsd
      -- ^ @METRIC_TRUEVIEW_CPV_USD@
    | MetricTrueviewCpvPartner
      -- ^ @METRIC_TRUEVIEW_CPV_PARTNER@
    | MetricFEE19Advertiser
      -- ^ @METRIC_FEE19_ADVERTISER@
    | MetricFEE19Usd
      -- ^ @METRIC_FEE19_USD@
    | MetricFEE19Partner
      -- ^ @METRIC_FEE19_PARTNER@
    | MetricTeaTrueviewImpressions
      -- ^ @METRIC_TEA_TRUEVIEW_IMPRESSIONS@
    | MetricTeaTrueviewUniqueCookies
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES@
    | MetricFEE20Advertiser
      -- ^ @METRIC_FEE20_ADVERTISER@
    | MetricFEE20Usd
      -- ^ @METRIC_FEE20_USD@
    | MetricFEE20Partner
      -- ^ @METRIC_FEE20_PARTNER@
    | MetricFEE21Advertiser
      -- ^ @METRIC_FEE21_ADVERTISER@
    | MetricFEE21Usd
      -- ^ @METRIC_FEE21_USD@
    | MetricFEE21Partner
      -- ^ @METRIC_FEE21_PARTNER@
    | MetricFEE22Advertiser
      -- ^ @METRIC_FEE22_ADVERTISER@
    | MetricFEE22Usd
      -- ^ @METRIC_FEE22_USD@
    | MetricFEE22Partner
      -- ^ @METRIC_FEE22_PARTNER@
    | MetricTrueviewTotalConversionValuesAdvertiser
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER@
    | MetricTrueviewTotalConversionValuesUsd
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD@
    | MetricTrueviewTotalConversionValuesPartner
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER@
    | MetricTrueviewConversionCostManyPerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionCostManyPerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD@
    | MetricTrueviewConversionCostManyPerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER@
    | MetricProfitViewableEcpmAdvertiser
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER@
    | MetricProfitViewableEcpmUsd
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_USD@
    | MetricProfitViewableEcpmPartner
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_PARTNER@
    | MetricRevenueViewableEcpmAdvertiser
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER@
    | MetricRevenueViewableEcpmUsd
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_USD@
    | MetricRevenueViewableEcpmPartner
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_PARTNER@
    | MetricMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricMediaCostViewableEcpmUsd
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_USD@
    | MetricMediaCostViewableEcpmPartner
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricTotalMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricTotalMediaCostViewableEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD@
    | MetricTotalMediaCostViewableEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricTrueviewEngagements
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENTS@
    | MetricTrueviewEngagementRate
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENT_RATE@
    | MetricTrueviewAverageCpeAdvertiser
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER@
    | MetricTrueviewAverageCpeUsd
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_USD@
    | MetricTrueviewAverageCpePartner
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER@
    | MetricActiveViewViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewEligibleImpressions
      -- ^ @METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS@
    | MetricActiveViewMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewAverageViewableTime
      -- ^ @METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME@
    | MetricActiveViewUnmeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS@
    | MetricActiveViewUnviewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS@
    | MetricActiveViewDistributionUnmeasurable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE@
    | MetricActiveViewDistributionUnviewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE@
    | MetricActiveViewDistributionViewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE@
    | MetricActiveViewPercentViewableForTimeThreshold
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD@
    | MetricActiveViewViewableForTimeThreshold
      -- ^ @METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD@
    | MetricActiveViewPercentVisibleAtStart
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START@
    | MetricActiveViewPercentVisibleFirstQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR@
    | MetricActiveViewPercentVisibleSecondQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR@
    | MetricActiveViewPercentVisibleThirdQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR@
    | MetricActiveViewPercentVisibleOnComplete
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE@
    | MetricActiveViewPercentAudibleVisibleAtStart
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START@
    | MetricActiveViewPercentAudibleVisibleFirstQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR@
    | MetricActiveViewPercentAudibleVisibleSecondQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR@
    | MetricActiveViewPercentAudibleVisibleThirdQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR@
    | MetricActiveViewPercentAudibleVisibleOnComplete
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE@
    | MetricActiveViewAudibleVisibleOnCompleteImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS@
    | MetricViewableBidRequests
      -- ^ @METRIC_VIEWABLE_BID_REQUESTS@
    | MetricCookieReachImpressionReach
      -- ^ @METRIC_COOKIE_REACH_IMPRESSION_REACH@
    | MetricCookieReachAverageImpressionFrequency
      -- ^ @METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY@
    | MetricDBmEngagementRate
      -- ^ @METRIC_DBM_ENGAGEMENT_RATE@
    | MetricRichMediaScrolls
      -- ^ @METRIC_RICH_MEDIA_SCROLLS@
    | MetricCmPostViewRevenue
      -- ^ @METRIC_CM_POST_VIEW_REVENUE@
    | MetricCmPostClickRevenue
      -- ^ @METRIC_CM_POST_CLICK_REVENUE@
    | MetricFloodlightImpressions
      -- ^ @METRIC_FLOODLIGHT_IMPRESSIONS@
    | MetricBillableImpressions
      -- ^ @METRIC_BILLABLE_IMPRESSIONS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersMetricsItem

instance FromHttpApiData ParametersMetricsItem where
    parseQueryParam = \case
        "METRIC_UNKNOWN" -> Right MetricUnknown
        "METRIC_IMPRESSIONS" -> Right MetricImpressions
        "METRIC_CLICKS" -> Right MetricClicks
        "METRIC_LAST_IMPRESSIONS" -> Right MetricLastImpressions
        "METRIC_LAST_CLICKS" -> Right MetricLastClicks
        "METRIC_TOTAL_CONVERSIONS" -> Right MetricTotalConversions
        "METRIC_MEDIA_COST_ADVERTISER" -> Right MetricMediaCostAdvertiser
        "METRIC_MEDIA_COST_USD" -> Right MetricMediaCostUsd
        "METRIC_MEDIA_COST_PARTNER" -> Right MetricMediaCostPartner
        "METRIC_DATA_COST_ADVERTISER" -> Right MetricDataCostAdvertiser
        "METRIC_DATA_COST_USD" -> Right MetricDataCostUsd
        "METRIC_DATA_COST_PARTNER" -> Right MetricDataCostPartner
        "METRIC_CPM_FEE1_ADVERTISER" -> Right MetricCpmFEE1Advertiser
        "METRIC_CPM_FEE1_USD" -> Right MetricCpmFEE1Usd
        "METRIC_CPM_FEE1_PARTNER" -> Right MetricCpmFEE1Partner
        "METRIC_CPM_FEE2_ADVERTISER" -> Right MetricCpmFEE2Advertiser
        "METRIC_CPM_FEE2_USD" -> Right MetricCpmFEE2Usd
        "METRIC_CPM_FEE2_PARTNER" -> Right MetricCpmFEE2Partner
        "METRIC_MEDIA_FEE1_ADVERTISER" -> Right MetricMediaFEE1Advertiser
        "METRIC_MEDIA_FEE1_USD" -> Right MetricMediaFEE1Usd
        "METRIC_MEDIA_FEE1_PARTNER" -> Right MetricMediaFEE1Partner
        "METRIC_MEDIA_FEE2_ADVERTISER" -> Right MetricMediaFEE2Advertiser
        "METRIC_MEDIA_FEE2_USD" -> Right MetricMediaFEE2Usd
        "METRIC_MEDIA_FEE2_PARTNER" -> Right MetricMediaFEE2Partner
        "METRIC_REVENUE_ADVERTISER" -> Right MetricRevenueAdvertiser
        "METRIC_REVENUE_USD" -> Right MetricRevenueUsd
        "METRIC_REVENUE_PARTNER" -> Right MetricRevenuePartner
        "METRIC_PROFIT_ADVERTISER" -> Right MetricProfitAdvertiser
        "METRIC_PROFIT_USD" -> Right MetricProfitUsd
        "METRIC_PROFIT_PARTNER" -> Right MetricProfitPartner
        "METRIC_PROFIT_MARGIN" -> Right MetricProfitMargin
        "METRIC_TOTAL_MEDIA_COST_USD" -> Right MetricTotalMediaCostUsd
        "METRIC_TOTAL_MEDIA_COST_PARTNER" -> Right MetricTotalMediaCostPartner
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER" -> Right MetricTotalMediaCostAdvertiser
        "METRIC_BILLABLE_COST_USD" -> Right MetricBillableCostUsd
        "METRIC_BILLABLE_COST_PARTNER" -> Right MetricBillableCostPartner
        "METRIC_BILLABLE_COST_ADVERTISER" -> Right MetricBillableCostAdvertiser
        "METRIC_PLATFORM_FEE_USD" -> Right MetricPlatformFeeUsd
        "METRIC_PLATFORM_FEE_PARTNER" -> Right MetricPlatformFeePartner
        "METRIC_PLATFORM_FEE_ADVERTISER" -> Right MetricPlatformFeeAdvertiser
        "METRIC_VIDEO_COMPLETION_RATE" -> Right MetricVideoCompletionRate
        "METRIC_PROFIT_ECPM_ADVERTISER" -> Right MetricProfitEcpmAdvertiser
        "METRIC_PROFIT_ECPM_USD" -> Right MetricProfitEcpmUsd
        "METRIC_PROFIT_ECPM_PARTNER" -> Right MetricProfitEcpmPartner
        "METRIC_REVENUE_ECPM_ADVERTISER" -> Right MetricRevenueEcpmAdvertiser
        "METRIC_REVENUE_ECPM_USD" -> Right MetricRevenueEcpmUsd
        "METRIC_REVENUE_ECPM_PARTNER" -> Right MetricRevenueEcpmPartner
        "METRIC_REVENUE_ECPC_ADVERTISER" -> Right MetricRevenueEcpcAdvertiser
        "METRIC_REVENUE_ECPC_USD" -> Right MetricRevenueEcpcUsd
        "METRIC_REVENUE_ECPC_PARTNER" -> Right MetricRevenueEcpcPartner
        "METRIC_REVENUE_ECPA_ADVERTISER" -> Right MetricRevenueEcpaAdvertiser
        "METRIC_REVENUE_ECPA_USD" -> Right MetricRevenueEcpaUsd
        "METRIC_REVENUE_ECPA_PARTNER" -> Right MetricRevenueEcpaPartner
        "METRIC_REVENUE_ECPAPV_ADVERTISER" -> Right MetricRevenueEcpapvAdvertiser
        "METRIC_REVENUE_ECPAPV_USD" -> Right MetricRevenueEcpapvUsd
        "METRIC_REVENUE_ECPAPV_PARTNER" -> Right MetricRevenueEcpapvPartner
        "METRIC_REVENUE_ECPAPC_ADVERTISER" -> Right MetricRevenueEcpapcAdvertiser
        "METRIC_REVENUE_ECPAPC_USD" -> Right MetricRevenueEcpapcUsd
        "METRIC_REVENUE_ECPAPC_PARTNER" -> Right MetricRevenueEcpapcPartner
        "METRIC_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricMediaCostEcpmAdvertiser
        "METRIC_MEDIA_COST_ECPM_USD" -> Right MetricMediaCostEcpmUsd
        "METRIC_MEDIA_COST_ECPM_PARTNER" -> Right MetricMediaCostEcpmPartner
        "METRIC_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricMediaCostEcpcAdvertiser
        "METRIC_MEDIA_COST_ECPC_USD" -> Right MetricMediaCostEcpcUsd
        "METRIC_MEDIA_COST_ECPC_PARTNER" -> Right MetricMediaCostEcpcPartner
        "METRIC_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricMediaCostEcpaAdvertiser
        "METRIC_MEDIA_COST_ECPA_USD" -> Right MetricMediaCostEcpaUsd
        "METRIC_MEDIA_COST_ECPA_PARTNER" -> Right MetricMediaCostEcpaPartner
        "METRIC_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricMediaCostEcpapvAdvertiser
        "METRIC_MEDIA_COST_ECPAPV_USD" -> Right MetricMediaCostEcpapvUsd
        "METRIC_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricMediaCostEcpapvPartner
        "METRIC_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricMediaCostEcpapcAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_USD" -> Right MetricMediaCostEcpapcUsd
        "METRIC_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricMediaCostEcpapcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricTotalMediaCostEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPM_USD" -> Right MetricTotalMediaCostEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER" -> Right MetricTotalMediaCostEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricTotalMediaCostEcpcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPC_USD" -> Right MetricTotalMediaCostEcpcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER" -> Right MetricTotalMediaCostEcpcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricTotalMediaCostEcpaAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPA_USD" -> Right MetricTotalMediaCostEcpaUsd
        "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER" -> Right MetricTotalMediaCostEcpaPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricTotalMediaCostEcpapvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD" -> Right MetricTotalMediaCostEcpapvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricTotalMediaCostEcpapvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricTotalMediaCostEcpapcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD" -> Right MetricTotalMediaCostEcpapcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricTotalMediaCostEcpapcPartner
        "METRIC_RICH_MEDIA_VIDEO_PLAYS" -> Right MetricRichMediaVideoPlays
        "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS" -> Right MetricRichMediaVideoCompletions
        "METRIC_RICH_MEDIA_VIDEO_PAUSES" -> Right MetricRichMediaVideoPauses
        "METRIC_RICH_MEDIA_VIDEO_MUTES" -> Right MetricRichMediaVideoMutes
        "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS" -> Right MetricRichMediaVideoMidpoints
        "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS" -> Right MetricRichMediaVideoFullScreens
        "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoFirstQuartileCompletes
        "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoThirdQuartileCompletes
        "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE" -> Right MetricClickToPostClickConversionRate
        "METRIC_IMPRESSIONS_TO_CONVERSION_RATE" -> Right MetricImpressionsToConversionRate
        "METRIC_CONVERSIONS_PER_MILLE" -> Right MetricConversionsPerMille
        "METRIC_CTR" -> Right MetricCtr
        "METRIC_BID_REQUESTS" -> Right MetricBidRequests
        "METRIC_UNIQUE_VISITORS_COOKIES" -> Right MetricUniqueVisitorsCookies
        "METRIC_REVENUE_ECPCV_ADVERTISER" -> Right MetricRevenueEcpcvAdvertiser
        "METRIC_REVENUE_ECPCV_USD" -> Right MetricRevenueEcpcvUsd
        "METRIC_REVENUE_ECPCV_PARTNER" -> Right MetricRevenueEcpcvPartner
        "METRIC_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricMediaCostEcpcvAdvertiser
        "METRIC_MEDIA_COST_ECPCV_USD" -> Right MetricMediaCostEcpcvUsd
        "METRIC_MEDIA_COST_ECPCV_PARTNER" -> Right MetricMediaCostEcpcvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricTotalMediaCostEcpcvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPCV_USD" -> Right MetricTotalMediaCostEcpcvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER" -> Right MetricTotalMediaCostEcpcvPartner
        "METRIC_RICH_MEDIA_VIDEO_SKIPS" -> Right MetricRichMediaVideoSkips
        "METRIC_FEE2_ADVERTISER" -> Right MetricFEE2Advertiser
        "METRIC_FEE2_USD" -> Right MetricFEE2Usd
        "METRIC_FEE2_PARTNER" -> Right MetricFEE2Partner
        "METRIC_FEE3_ADVERTISER" -> Right MetricFEE3Advertiser
        "METRIC_FEE3_USD" -> Right MetricFEE3Usd
        "METRIC_FEE3_PARTNER" -> Right MetricFEE3Partner
        "METRIC_FEE4_ADVERTISER" -> Right MetricFEE4Advertiser
        "METRIC_FEE4_USD" -> Right MetricFEE4Usd
        "METRIC_FEE4_PARTNER" -> Right MetricFEE4Partner
        "METRIC_FEE5_ADVERTISER" -> Right MetricFEE5Advertiser
        "METRIC_FEE5_USD" -> Right MetricFEE5Usd
        "METRIC_FEE5_PARTNER" -> Right MetricFEE5Partner
        "METRIC_FEE6_ADVERTISER" -> Right MetricFEE6Advertiser
        "METRIC_FEE6_USD" -> Right MetricFEE6Usd
        "METRIC_FEE6_PARTNER" -> Right MetricFEE6Partner
        "METRIC_FEE7_ADVERTISER" -> Right MetricFEE7Advertiser
        "METRIC_FEE7_USD" -> Right MetricFEE7Usd
        "METRIC_FEE7_PARTNER" -> Right MetricFEE7Partner
        "METRIC_FEE8_ADVERTISER" -> Right MetricFEE8Advertiser
        "METRIC_FEE8_USD" -> Right MetricFEE8Usd
        "METRIC_FEE8_PARTNER" -> Right MetricFEE8Partner
        "METRIC_FEE9_ADVERTISER" -> Right MetricFEE9Advertiser
        "METRIC_FEE9_USD" -> Right MetricFEE9Usd
        "METRIC_FEE9_PARTNER" -> Right MetricFEE9Partner
        "METRIC_FEE10_ADVERTISER" -> Right MetricFEE10Advertiser
        "METRIC_FEE10_USD" -> Right MetricFEE10Usd
        "METRIC_FEE10_PARTNER" -> Right MetricFEE10Partner
        "METRIC_FEE11_ADVERTISER" -> Right MetricFEE11Advertiser
        "METRIC_FEE11_USD" -> Right MetricFEE11Usd
        "METRIC_FEE11_PARTNER" -> Right MetricFEE11Partner
        "METRIC_FEE12_ADVERTISER" -> Right MetricFEE12Advertiser
        "METRIC_FEE12_USD" -> Right MetricFEE12Usd
        "METRIC_FEE12_PARTNER" -> Right MetricFEE12Partner
        "METRIC_FEE13_ADVERTISER" -> Right MetricFEE13Advertiser
        "METRIC_FEE13_USD" -> Right MetricFEE13Usd
        "METRIC_FEE13_PARTNER" -> Right MetricFEE13Partner
        "METRIC_FEE14_ADVERTISER" -> Right MetricFEE14Advertiser
        "METRIC_FEE14_USD" -> Right MetricFEE14Usd
        "METRIC_FEE14_PARTNER" -> Right MetricFEE14Partner
        "METRIC_FEE15_ADVERTISER" -> Right MetricFEE15Advertiser
        "METRIC_FEE15_USD" -> Right MetricFEE15Usd
        "METRIC_FEE15_PARTNER" -> Right MetricFEE15Partner
        "METRIC_CPM_FEE3_ADVERTISER" -> Right MetricCpmFEE3Advertiser
        "METRIC_CPM_FEE3_USD" -> Right MetricCpmFEE3Usd
        "METRIC_CPM_FEE3_PARTNER" -> Right MetricCpmFEE3Partner
        "METRIC_CPM_FEE4_ADVERTISER" -> Right MetricCpmFEE4Advertiser
        "METRIC_CPM_FEE4_USD" -> Right MetricCpmFEE4Usd
        "METRIC_CPM_FEE4_PARTNER" -> Right MetricCpmFEE4Partner
        "METRIC_CPM_FEE5_ADVERTISER" -> Right MetricCpmFEE5Advertiser
        "METRIC_CPM_FEE5_USD" -> Right MetricCpmFEE5Usd
        "METRIC_CPM_FEE5_PARTNER" -> Right MetricCpmFEE5Partner
        "METRIC_MEDIA_FEE3_ADVERTISER" -> Right MetricMediaFEE3Advertiser
        "METRIC_MEDIA_FEE3_USD" -> Right MetricMediaFEE3Usd
        "METRIC_MEDIA_FEE3_PARTNER" -> Right MetricMediaFEE3Partner
        "METRIC_MEDIA_FEE4_ADVERTISER" -> Right MetricMediaFEE4Advertiser
        "METRIC_MEDIA_FEE4_USD" -> Right MetricMediaFEE4Usd
        "METRIC_MEDIA_FEE4_PARTNER" -> Right MetricMediaFEE4Partner
        "METRIC_MEDIA_FEE5_ADVERTISER" -> Right MetricMediaFEE5Advertiser
        "METRIC_MEDIA_FEE5_USD" -> Right MetricMediaFEE5Usd
        "METRIC_MEDIA_FEE5_PARTNER" -> Right MetricMediaFEE5Partner
        "METRIC_VIDEO_COMPANION_IMPRESSIONS" -> Right MetricVideoCompanionImpressions
        "METRIC_VIDEO_COMPANION_CLICKS" -> Right MetricVideoCompanionClicks
        "METRIC_FEE16_ADVERTISER" -> Right MetricFEE16Advertiser
        "METRIC_FEE16_USD" -> Right MetricFEE16Usd
        "METRIC_FEE16_PARTNER" -> Right MetricFEE16Partner
        "METRIC_FEE17_ADVERTISER" -> Right MetricFEE17Advertiser
        "METRIC_FEE17_USD" -> Right MetricFEE17Usd
        "METRIC_FEE17_PARTNER" -> Right MetricFEE17Partner
        "METRIC_FEE18_ADVERTISER" -> Right MetricFEE18Advertiser
        "METRIC_FEE18_USD" -> Right MetricFEE18Usd
        "METRIC_FEE18_PARTNER" -> Right MetricFEE18Partner
        "METRIC_TRUEVIEW_VIEWS" -> Right MetricTrueviewViews
        "METRIC_TRUEVIEW_UNIQUE_VIEWERS" -> Right MetricTrueviewUniqueViewers
        "METRIC_TRUEVIEW_EARNED_VIEWS" -> Right MetricTrueviewEarnedViews
        "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS" -> Right MetricTrueviewEarnedSubscribers
        "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS" -> Right MetricTrueviewEarnedPlayListAdditions
        "METRIC_TRUEVIEW_EARNED_LIKES" -> Right MetricTrueviewEarnedLikes
        "METRIC_TRUEVIEW_EARNED_SHARES" -> Right MetricTrueviewEarnedShares
        "METRIC_TRUEVIEW_IMPRESSION_SHARE" -> Right MetricTrueviewImpressionShare
        "METRIC_TRUEVIEW_LOST_IS_BUDGET" -> Right MetricTrueviewLostIsBudget
        "METRIC_TRUEVIEW_LOST_IS_RANK" -> Right MetricTrueviewLostIsRank
        "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION" -> Right MetricTrueviewViewThroughConversion
        "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW" -> Right MetricTrueviewConversionManyPerView
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE" -> Right MetricTrueviewTotalConversionValue
        "METRIC_TRUEVIEW_VIEW_RATE" -> Right MetricTrueviewViewRate
        "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW" -> Right MetricTrueviewConversionRateOnePerView
        "METRIC_TRUEVIEW_CPV_ADVERTISER" -> Right MetricTrueviewCpvAdvertiser
        "METRIC_TRUEVIEW_CPV_USD" -> Right MetricTrueviewCpvUsd
        "METRIC_TRUEVIEW_CPV_PARTNER" -> Right MetricTrueviewCpvPartner
        "METRIC_FEE19_ADVERTISER" -> Right MetricFEE19Advertiser
        "METRIC_FEE19_USD" -> Right MetricFEE19Usd
        "METRIC_FEE19_PARTNER" -> Right MetricFEE19Partner
        "METRIC_TEA_TRUEVIEW_IMPRESSIONS" -> Right MetricTeaTrueviewImpressions
        "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES" -> Right MetricTeaTrueviewUniqueCookies
        "METRIC_FEE20_ADVERTISER" -> Right MetricFEE20Advertiser
        "METRIC_FEE20_USD" -> Right MetricFEE20Usd
        "METRIC_FEE20_PARTNER" -> Right MetricFEE20Partner
        "METRIC_FEE21_ADVERTISER" -> Right MetricFEE21Advertiser
        "METRIC_FEE21_USD" -> Right MetricFEE21Usd
        "METRIC_FEE21_PARTNER" -> Right MetricFEE21Partner
        "METRIC_FEE22_ADVERTISER" -> Right MetricFEE22Advertiser
        "METRIC_FEE22_USD" -> Right MetricFEE22Usd
        "METRIC_FEE22_PARTNER" -> Right MetricFEE22Partner
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER" -> Right MetricTrueviewTotalConversionValuesAdvertiser
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD" -> Right MetricTrueviewTotalConversionValuesUsd
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER" -> Right MetricTrueviewTotalConversionValuesPartner
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionCostManyPerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD" -> Right MetricTrueviewConversionCostManyPerViewUsd
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionCostManyPerViewPartner
        "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER" -> Right MetricProfitViewableEcpmAdvertiser
        "METRIC_PROFIT_VIEWABLE_ECPM_USD" -> Right MetricProfitViewableEcpmUsd
        "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER" -> Right MetricProfitViewableEcpmPartner
        "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER" -> Right MetricRevenueViewableEcpmAdvertiser
        "METRIC_REVENUE_VIEWABLE_ECPM_USD" -> Right MetricRevenueViewableEcpmUsd
        "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER" -> Right MetricRevenueViewableEcpmPartner
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricMediaCostViewableEcpmAdvertiser
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricMediaCostViewableEcpmUsd
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricMediaCostViewableEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricTotalMediaCostViewableEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricTotalMediaCostViewableEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricTotalMediaCostViewableEcpmPartner
        "METRIC_TRUEVIEW_ENGAGEMENTS" -> Right MetricTrueviewEngagements
        "METRIC_TRUEVIEW_ENGAGEMENT_RATE" -> Right MetricTrueviewEngagementRate
        "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER" -> Right MetricTrueviewAverageCpeAdvertiser
        "METRIC_TRUEVIEW_AVERAGE_CPE_USD" -> Right MetricTrueviewAverageCpeUsd
        "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER" -> Right MetricTrueviewAverageCpePartner
        "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewViewableImpressions
        "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS" -> Right MetricActiveViewEligibleImpressions
        "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewPctMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewPctViewableImpressions
        "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME" -> Right MetricActiveViewAverageViewableTime
        "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS" -> Right MetricActiveViewUnmeasurableImpressions
        "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS" -> Right MetricActiveViewUnviewableImpressions
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE" -> Right MetricActiveViewDistributionUnmeasurable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE" -> Right MetricActiveViewDistributionUnviewable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE" -> Right MetricActiveViewDistributionViewable
        "METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD" -> Right MetricActiveViewPercentViewableForTimeThreshold
        "METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD" -> Right MetricActiveViewViewableForTimeThreshold
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START" -> Right MetricActiveViewPercentVisibleAtStart
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR" -> Right MetricActiveViewPercentVisibleFirstQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR" -> Right MetricActiveViewPercentVisibleSecondQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR" -> Right MetricActiveViewPercentVisibleThirdQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE" -> Right MetricActiveViewPercentVisibleOnComplete
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START" -> Right MetricActiveViewPercentAudibleVisibleAtStart
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR" -> Right MetricActiveViewPercentAudibleVisibleFirstQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR" -> Right MetricActiveViewPercentAudibleVisibleSecondQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR" -> Right MetricActiveViewPercentAudibleVisibleThirdQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE" -> Right MetricActiveViewPercentAudibleVisibleOnComplete
        "METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS" -> Right MetricActiveViewAudibleVisibleOnCompleteImpressions
        "METRIC_VIEWABLE_BID_REQUESTS" -> Right MetricViewableBidRequests
        "METRIC_COOKIE_REACH_IMPRESSION_REACH" -> Right MetricCookieReachImpressionReach
        "METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY" -> Right MetricCookieReachAverageImpressionFrequency
        "METRIC_DBM_ENGAGEMENT_RATE" -> Right MetricDBmEngagementRate
        "METRIC_RICH_MEDIA_SCROLLS" -> Right MetricRichMediaScrolls
        "METRIC_CM_POST_VIEW_REVENUE" -> Right MetricCmPostViewRevenue
        "METRIC_CM_POST_CLICK_REVENUE" -> Right MetricCmPostClickRevenue
        "METRIC_FLOODLIGHT_IMPRESSIONS" -> Right MetricFloodlightImpressions
        "METRIC_BILLABLE_IMPRESSIONS" -> Right MetricBillableImpressions
        x -> Left ("Unable to parse ParametersMetricsItem from: " <> x)

instance ToHttpApiData ParametersMetricsItem where
    toQueryParam = \case
        MetricUnknown -> "METRIC_UNKNOWN"
        MetricImpressions -> "METRIC_IMPRESSIONS"
        MetricClicks -> "METRIC_CLICKS"
        MetricLastImpressions -> "METRIC_LAST_IMPRESSIONS"
        MetricLastClicks -> "METRIC_LAST_CLICKS"
        MetricTotalConversions -> "METRIC_TOTAL_CONVERSIONS"
        MetricMediaCostAdvertiser -> "METRIC_MEDIA_COST_ADVERTISER"
        MetricMediaCostUsd -> "METRIC_MEDIA_COST_USD"
        MetricMediaCostPartner -> "METRIC_MEDIA_COST_PARTNER"
        MetricDataCostAdvertiser -> "METRIC_DATA_COST_ADVERTISER"
        MetricDataCostUsd -> "METRIC_DATA_COST_USD"
        MetricDataCostPartner -> "METRIC_DATA_COST_PARTNER"
        MetricCpmFEE1Advertiser -> "METRIC_CPM_FEE1_ADVERTISER"
        MetricCpmFEE1Usd -> "METRIC_CPM_FEE1_USD"
        MetricCpmFEE1Partner -> "METRIC_CPM_FEE1_PARTNER"
        MetricCpmFEE2Advertiser -> "METRIC_CPM_FEE2_ADVERTISER"
        MetricCpmFEE2Usd -> "METRIC_CPM_FEE2_USD"
        MetricCpmFEE2Partner -> "METRIC_CPM_FEE2_PARTNER"
        MetricMediaFEE1Advertiser -> "METRIC_MEDIA_FEE1_ADVERTISER"
        MetricMediaFEE1Usd -> "METRIC_MEDIA_FEE1_USD"
        MetricMediaFEE1Partner -> "METRIC_MEDIA_FEE1_PARTNER"
        MetricMediaFEE2Advertiser -> "METRIC_MEDIA_FEE2_ADVERTISER"
        MetricMediaFEE2Usd -> "METRIC_MEDIA_FEE2_USD"
        MetricMediaFEE2Partner -> "METRIC_MEDIA_FEE2_PARTNER"
        MetricRevenueAdvertiser -> "METRIC_REVENUE_ADVERTISER"
        MetricRevenueUsd -> "METRIC_REVENUE_USD"
        MetricRevenuePartner -> "METRIC_REVENUE_PARTNER"
        MetricProfitAdvertiser -> "METRIC_PROFIT_ADVERTISER"
        MetricProfitUsd -> "METRIC_PROFIT_USD"
        MetricProfitPartner -> "METRIC_PROFIT_PARTNER"
        MetricProfitMargin -> "METRIC_PROFIT_MARGIN"
        MetricTotalMediaCostUsd -> "METRIC_TOTAL_MEDIA_COST_USD"
        MetricTotalMediaCostPartner -> "METRIC_TOTAL_MEDIA_COST_PARTNER"
        MetricTotalMediaCostAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ADVERTISER"
        MetricBillableCostUsd -> "METRIC_BILLABLE_COST_USD"
        MetricBillableCostPartner -> "METRIC_BILLABLE_COST_PARTNER"
        MetricBillableCostAdvertiser -> "METRIC_BILLABLE_COST_ADVERTISER"
        MetricPlatformFeeUsd -> "METRIC_PLATFORM_FEE_USD"
        MetricPlatformFeePartner -> "METRIC_PLATFORM_FEE_PARTNER"
        MetricPlatformFeeAdvertiser -> "METRIC_PLATFORM_FEE_ADVERTISER"
        MetricVideoCompletionRate -> "METRIC_VIDEO_COMPLETION_RATE"
        MetricProfitEcpmAdvertiser -> "METRIC_PROFIT_ECPM_ADVERTISER"
        MetricProfitEcpmUsd -> "METRIC_PROFIT_ECPM_USD"
        MetricProfitEcpmPartner -> "METRIC_PROFIT_ECPM_PARTNER"
        MetricRevenueEcpmAdvertiser -> "METRIC_REVENUE_ECPM_ADVERTISER"
        MetricRevenueEcpmUsd -> "METRIC_REVENUE_ECPM_USD"
        MetricRevenueEcpmPartner -> "METRIC_REVENUE_ECPM_PARTNER"
        MetricRevenueEcpcAdvertiser -> "METRIC_REVENUE_ECPC_ADVERTISER"
        MetricRevenueEcpcUsd -> "METRIC_REVENUE_ECPC_USD"
        MetricRevenueEcpcPartner -> "METRIC_REVENUE_ECPC_PARTNER"
        MetricRevenueEcpaAdvertiser -> "METRIC_REVENUE_ECPA_ADVERTISER"
        MetricRevenueEcpaUsd -> "METRIC_REVENUE_ECPA_USD"
        MetricRevenueEcpaPartner -> "METRIC_REVENUE_ECPA_PARTNER"
        MetricRevenueEcpapvAdvertiser -> "METRIC_REVENUE_ECPAPV_ADVERTISER"
        MetricRevenueEcpapvUsd -> "METRIC_REVENUE_ECPAPV_USD"
        MetricRevenueEcpapvPartner -> "METRIC_REVENUE_ECPAPV_PARTNER"
        MetricRevenueEcpapcAdvertiser -> "METRIC_REVENUE_ECPAPC_ADVERTISER"
        MetricRevenueEcpapcUsd -> "METRIC_REVENUE_ECPAPC_USD"
        MetricRevenueEcpapcPartner -> "METRIC_REVENUE_ECPAPC_PARTNER"
        MetricMediaCostEcpmAdvertiser -> "METRIC_MEDIA_COST_ECPM_ADVERTISER"
        MetricMediaCostEcpmUsd -> "METRIC_MEDIA_COST_ECPM_USD"
        MetricMediaCostEcpmPartner -> "METRIC_MEDIA_COST_ECPM_PARTNER"
        MetricMediaCostEcpcAdvertiser -> "METRIC_MEDIA_COST_ECPC_ADVERTISER"
        MetricMediaCostEcpcUsd -> "METRIC_MEDIA_COST_ECPC_USD"
        MetricMediaCostEcpcPartner -> "METRIC_MEDIA_COST_ECPC_PARTNER"
        MetricMediaCostEcpaAdvertiser -> "METRIC_MEDIA_COST_ECPA_ADVERTISER"
        MetricMediaCostEcpaUsd -> "METRIC_MEDIA_COST_ECPA_USD"
        MetricMediaCostEcpaPartner -> "METRIC_MEDIA_COST_ECPA_PARTNER"
        MetricMediaCostEcpapvAdvertiser -> "METRIC_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricMediaCostEcpapvUsd -> "METRIC_MEDIA_COST_ECPAPV_USD"
        MetricMediaCostEcpapvPartner -> "METRIC_MEDIA_COST_ECPAPV_PARTNER"
        MetricMediaCostEcpapcAdvertiser -> "METRIC_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricMediaCostEcpapcUsd -> "METRIC_MEDIA_COST_ECPAPC_USD"
        MetricMediaCostEcpapcPartner -> "METRIC_MEDIA_COST_ECPAPC_PARTNER"
        MetricTotalMediaCostEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER"
        MetricTotalMediaCostEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_ECPM_USD"
        MetricTotalMediaCostEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER"
        MetricTotalMediaCostEcpcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER"
        MetricTotalMediaCostEcpcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPC_USD"
        MetricTotalMediaCostEcpcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER"
        MetricTotalMediaCostEcpaAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER"
        MetricTotalMediaCostEcpaUsd -> "METRIC_TOTAL_MEDIA_COST_ECPA_USD"
        MetricTotalMediaCostEcpaPartner -> "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER"
        MetricTotalMediaCostEcpapvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricTotalMediaCostEcpapvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD"
        MetricTotalMediaCostEcpapvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER"
        MetricTotalMediaCostEcpapcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricTotalMediaCostEcpapcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD"
        MetricTotalMediaCostEcpapcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER"
        MetricRichMediaVideoPlays -> "METRIC_RICH_MEDIA_VIDEO_PLAYS"
        MetricRichMediaVideoCompletions -> "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS"
        MetricRichMediaVideoPauses -> "METRIC_RICH_MEDIA_VIDEO_PAUSES"
        MetricRichMediaVideoMutes -> "METRIC_RICH_MEDIA_VIDEO_MUTES"
        MetricRichMediaVideoMidpoints -> "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS"
        MetricRichMediaVideoFullScreens -> "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS"
        MetricRichMediaVideoFirstQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES"
        MetricRichMediaVideoThirdQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES"
        MetricClickToPostClickConversionRate -> "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE"
        MetricImpressionsToConversionRate -> "METRIC_IMPRESSIONS_TO_CONVERSION_RATE"
        MetricConversionsPerMille -> "METRIC_CONVERSIONS_PER_MILLE"
        MetricCtr -> "METRIC_CTR"
        MetricBidRequests -> "METRIC_BID_REQUESTS"
        MetricUniqueVisitorsCookies -> "METRIC_UNIQUE_VISITORS_COOKIES"
        MetricRevenueEcpcvAdvertiser -> "METRIC_REVENUE_ECPCV_ADVERTISER"
        MetricRevenueEcpcvUsd -> "METRIC_REVENUE_ECPCV_USD"
        MetricRevenueEcpcvPartner -> "METRIC_REVENUE_ECPCV_PARTNER"
        MetricMediaCostEcpcvAdvertiser -> "METRIC_MEDIA_COST_ECPCV_ADVERTISER"
        MetricMediaCostEcpcvUsd -> "METRIC_MEDIA_COST_ECPCV_USD"
        MetricMediaCostEcpcvPartner -> "METRIC_MEDIA_COST_ECPCV_PARTNER"
        MetricTotalMediaCostEcpcvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER"
        MetricTotalMediaCostEcpcvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPCV_USD"
        MetricTotalMediaCostEcpcvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER"
        MetricRichMediaVideoSkips -> "METRIC_RICH_MEDIA_VIDEO_SKIPS"
        MetricFEE2Advertiser -> "METRIC_FEE2_ADVERTISER"
        MetricFEE2Usd -> "METRIC_FEE2_USD"
        MetricFEE2Partner -> "METRIC_FEE2_PARTNER"
        MetricFEE3Advertiser -> "METRIC_FEE3_ADVERTISER"
        MetricFEE3Usd -> "METRIC_FEE3_USD"
        MetricFEE3Partner -> "METRIC_FEE3_PARTNER"
        MetricFEE4Advertiser -> "METRIC_FEE4_ADVERTISER"
        MetricFEE4Usd -> "METRIC_FEE4_USD"
        MetricFEE4Partner -> "METRIC_FEE4_PARTNER"
        MetricFEE5Advertiser -> "METRIC_FEE5_ADVERTISER"
        MetricFEE5Usd -> "METRIC_FEE5_USD"
        MetricFEE5Partner -> "METRIC_FEE5_PARTNER"
        MetricFEE6Advertiser -> "METRIC_FEE6_ADVERTISER"
        MetricFEE6Usd -> "METRIC_FEE6_USD"
        MetricFEE6Partner -> "METRIC_FEE6_PARTNER"
        MetricFEE7Advertiser -> "METRIC_FEE7_ADVERTISER"
        MetricFEE7Usd -> "METRIC_FEE7_USD"
        MetricFEE7Partner -> "METRIC_FEE7_PARTNER"
        MetricFEE8Advertiser -> "METRIC_FEE8_ADVERTISER"
        MetricFEE8Usd -> "METRIC_FEE8_USD"
        MetricFEE8Partner -> "METRIC_FEE8_PARTNER"
        MetricFEE9Advertiser -> "METRIC_FEE9_ADVERTISER"
        MetricFEE9Usd -> "METRIC_FEE9_USD"
        MetricFEE9Partner -> "METRIC_FEE9_PARTNER"
        MetricFEE10Advertiser -> "METRIC_FEE10_ADVERTISER"
        MetricFEE10Usd -> "METRIC_FEE10_USD"
        MetricFEE10Partner -> "METRIC_FEE10_PARTNER"
        MetricFEE11Advertiser -> "METRIC_FEE11_ADVERTISER"
        MetricFEE11Usd -> "METRIC_FEE11_USD"
        MetricFEE11Partner -> "METRIC_FEE11_PARTNER"
        MetricFEE12Advertiser -> "METRIC_FEE12_ADVERTISER"
        MetricFEE12Usd -> "METRIC_FEE12_USD"
        MetricFEE12Partner -> "METRIC_FEE12_PARTNER"
        MetricFEE13Advertiser -> "METRIC_FEE13_ADVERTISER"
        MetricFEE13Usd -> "METRIC_FEE13_USD"
        MetricFEE13Partner -> "METRIC_FEE13_PARTNER"
        MetricFEE14Advertiser -> "METRIC_FEE14_ADVERTISER"
        MetricFEE14Usd -> "METRIC_FEE14_USD"
        MetricFEE14Partner -> "METRIC_FEE14_PARTNER"
        MetricFEE15Advertiser -> "METRIC_FEE15_ADVERTISER"
        MetricFEE15Usd -> "METRIC_FEE15_USD"
        MetricFEE15Partner -> "METRIC_FEE15_PARTNER"
        MetricCpmFEE3Advertiser -> "METRIC_CPM_FEE3_ADVERTISER"
        MetricCpmFEE3Usd -> "METRIC_CPM_FEE3_USD"
        MetricCpmFEE3Partner -> "METRIC_CPM_FEE3_PARTNER"
        MetricCpmFEE4Advertiser -> "METRIC_CPM_FEE4_ADVERTISER"
        MetricCpmFEE4Usd -> "METRIC_CPM_FEE4_USD"
        MetricCpmFEE4Partner -> "METRIC_CPM_FEE4_PARTNER"
        MetricCpmFEE5Advertiser -> "METRIC_CPM_FEE5_ADVERTISER"
        MetricCpmFEE5Usd -> "METRIC_CPM_FEE5_USD"
        MetricCpmFEE5Partner -> "METRIC_CPM_FEE5_PARTNER"
        MetricMediaFEE3Advertiser -> "METRIC_MEDIA_FEE3_ADVERTISER"
        MetricMediaFEE3Usd -> "METRIC_MEDIA_FEE3_USD"
        MetricMediaFEE3Partner -> "METRIC_MEDIA_FEE3_PARTNER"
        MetricMediaFEE4Advertiser -> "METRIC_MEDIA_FEE4_ADVERTISER"
        MetricMediaFEE4Usd -> "METRIC_MEDIA_FEE4_USD"
        MetricMediaFEE4Partner -> "METRIC_MEDIA_FEE4_PARTNER"
        MetricMediaFEE5Advertiser -> "METRIC_MEDIA_FEE5_ADVERTISER"
        MetricMediaFEE5Usd -> "METRIC_MEDIA_FEE5_USD"
        MetricMediaFEE5Partner -> "METRIC_MEDIA_FEE5_PARTNER"
        MetricVideoCompanionImpressions -> "METRIC_VIDEO_COMPANION_IMPRESSIONS"
        MetricVideoCompanionClicks -> "METRIC_VIDEO_COMPANION_CLICKS"
        MetricFEE16Advertiser -> "METRIC_FEE16_ADVERTISER"
        MetricFEE16Usd -> "METRIC_FEE16_USD"
        MetricFEE16Partner -> "METRIC_FEE16_PARTNER"
        MetricFEE17Advertiser -> "METRIC_FEE17_ADVERTISER"
        MetricFEE17Usd -> "METRIC_FEE17_USD"
        MetricFEE17Partner -> "METRIC_FEE17_PARTNER"
        MetricFEE18Advertiser -> "METRIC_FEE18_ADVERTISER"
        MetricFEE18Usd -> "METRIC_FEE18_USD"
        MetricFEE18Partner -> "METRIC_FEE18_PARTNER"
        MetricTrueviewViews -> "METRIC_TRUEVIEW_VIEWS"
        MetricTrueviewUniqueViewers -> "METRIC_TRUEVIEW_UNIQUE_VIEWERS"
        MetricTrueviewEarnedViews -> "METRIC_TRUEVIEW_EARNED_VIEWS"
        MetricTrueviewEarnedSubscribers -> "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS"
        MetricTrueviewEarnedPlayListAdditions -> "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS"
        MetricTrueviewEarnedLikes -> "METRIC_TRUEVIEW_EARNED_LIKES"
        MetricTrueviewEarnedShares -> "METRIC_TRUEVIEW_EARNED_SHARES"
        MetricTrueviewImpressionShare -> "METRIC_TRUEVIEW_IMPRESSION_SHARE"
        MetricTrueviewLostIsBudget -> "METRIC_TRUEVIEW_LOST_IS_BUDGET"
        MetricTrueviewLostIsRank -> "METRIC_TRUEVIEW_LOST_IS_RANK"
        MetricTrueviewViewThroughConversion -> "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION"
        MetricTrueviewConversionManyPerView -> "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"
        MetricTrueviewTotalConversionValue -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE"
        MetricTrueviewViewRate -> "METRIC_TRUEVIEW_VIEW_RATE"
        MetricTrueviewConversionRateOnePerView -> "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"
        MetricTrueviewCpvAdvertiser -> "METRIC_TRUEVIEW_CPV_ADVERTISER"
        MetricTrueviewCpvUsd -> "METRIC_TRUEVIEW_CPV_USD"
        MetricTrueviewCpvPartner -> "METRIC_TRUEVIEW_CPV_PARTNER"
        MetricFEE19Advertiser -> "METRIC_FEE19_ADVERTISER"
        MetricFEE19Usd -> "METRIC_FEE19_USD"
        MetricFEE19Partner -> "METRIC_FEE19_PARTNER"
        MetricTeaTrueviewImpressions -> "METRIC_TEA_TRUEVIEW_IMPRESSIONS"
        MetricTeaTrueviewUniqueCookies -> "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES"
        MetricFEE20Advertiser -> "METRIC_FEE20_ADVERTISER"
        MetricFEE20Usd -> "METRIC_FEE20_USD"
        MetricFEE20Partner -> "METRIC_FEE20_PARTNER"
        MetricFEE21Advertiser -> "METRIC_FEE21_ADVERTISER"
        MetricFEE21Usd -> "METRIC_FEE21_USD"
        MetricFEE21Partner -> "METRIC_FEE21_PARTNER"
        MetricFEE22Advertiser -> "METRIC_FEE22_ADVERTISER"
        MetricFEE22Usd -> "METRIC_FEE22_USD"
        MetricFEE22Partner -> "METRIC_FEE22_PARTNER"
        MetricTrueviewTotalConversionValuesAdvertiser -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER"
        MetricTrueviewTotalConversionValuesUsd -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD"
        MetricTrueviewTotalConversionValuesPartner -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER"
        MetricTrueviewConversionCostManyPerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionCostManyPerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD"
        MetricTrueviewConversionCostManyPerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER"
        MetricProfitViewableEcpmAdvertiser -> "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER"
        MetricProfitViewableEcpmUsd -> "METRIC_PROFIT_VIEWABLE_ECPM_USD"
        MetricProfitViewableEcpmPartner -> "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER"
        MetricRevenueViewableEcpmAdvertiser -> "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER"
        MetricRevenueViewableEcpmUsd -> "METRIC_REVENUE_VIEWABLE_ECPM_USD"
        MetricRevenueViewableEcpmPartner -> "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER"
        MetricMediaCostViewableEcpmAdvertiser -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricMediaCostViewableEcpmUsd -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD"
        MetricMediaCostViewableEcpmPartner -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricTotalMediaCostViewableEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricTotalMediaCostViewableEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD"
        MetricTotalMediaCostViewableEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricTrueviewEngagements -> "METRIC_TRUEVIEW_ENGAGEMENTS"
        MetricTrueviewEngagementRate -> "METRIC_TRUEVIEW_ENGAGEMENT_RATE"
        MetricTrueviewAverageCpeAdvertiser -> "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER"
        MetricTrueviewAverageCpeUsd -> "METRIC_TRUEVIEW_AVERAGE_CPE_USD"
        MetricTrueviewAverageCpePartner -> "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER"
        MetricActiveViewViewableImpressions -> "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"
        MetricActiveViewEligibleImpressions -> "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"
        MetricActiveViewMeasurableImpressions -> "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctMeasurableImpressions -> "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctViewableImpressions -> "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS"
        MetricActiveViewAverageViewableTime -> "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME"
        MetricActiveViewUnmeasurableImpressions -> "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS"
        MetricActiveViewUnviewableImpressions -> "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS"
        MetricActiveViewDistributionUnmeasurable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE"
        MetricActiveViewDistributionUnviewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE"
        MetricActiveViewDistributionViewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE"
        MetricActiveViewPercentViewableForTimeThreshold -> "METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD"
        MetricActiveViewViewableForTimeThreshold -> "METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD"
        MetricActiveViewPercentVisibleAtStart -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START"
        MetricActiveViewPercentVisibleFirstQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR"
        MetricActiveViewPercentVisibleSecondQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR"
        MetricActiveViewPercentVisibleThirdQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR"
        MetricActiveViewPercentVisibleOnComplete -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE"
        MetricActiveViewPercentAudibleVisibleAtStart -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START"
        MetricActiveViewPercentAudibleVisibleFirstQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR"
        MetricActiveViewPercentAudibleVisibleSecondQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR"
        MetricActiveViewPercentAudibleVisibleThirdQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR"
        MetricActiveViewPercentAudibleVisibleOnComplete -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE"
        MetricActiveViewAudibleVisibleOnCompleteImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS"
        MetricViewableBidRequests -> "METRIC_VIEWABLE_BID_REQUESTS"
        MetricCookieReachImpressionReach -> "METRIC_COOKIE_REACH_IMPRESSION_REACH"
        MetricCookieReachAverageImpressionFrequency -> "METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY"
        MetricDBmEngagementRate -> "METRIC_DBM_ENGAGEMENT_RATE"
        MetricRichMediaScrolls -> "METRIC_RICH_MEDIA_SCROLLS"
        MetricCmPostViewRevenue -> "METRIC_CM_POST_VIEW_REVENUE"
        MetricCmPostClickRevenue -> "METRIC_CM_POST_CLICK_REVENUE"
        MetricFloodlightImpressions -> "METRIC_FLOODLIGHT_IMPRESSIONS"
        MetricBillableImpressions -> "METRIC_BILLABLE_IMPRESSIONS"

instance FromJSON ParametersMetricsItem where
    parseJSON = parseJSONText "ParametersMetricsItem"

instance ToJSON ParametersMetricsItem where
    toJSON = toJSONText

-- | How often the query is run.
data QueryScheduleFrequency
    = OneTime
      -- ^ @ONE_TIME@
    | Daily
      -- ^ @DAILY@
    | Weekly
      -- ^ @WEEKLY@
    | SemiMonthly
      -- ^ @SEMI_MONTHLY@
    | Monthly
      -- ^ @MONTHLY@
    | Quarterly
      -- ^ @QUARTERLY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryScheduleFrequency

instance FromHttpApiData QueryScheduleFrequency where
    parseQueryParam = \case
        "ONE_TIME" -> Right OneTime
        "DAILY" -> Right Daily
        "WEEKLY" -> Right Weekly
        "SEMI_MONTHLY" -> Right SemiMonthly
        "MONTHLY" -> Right Monthly
        "QUARTERLY" -> Right Quarterly
        x -> Left ("Unable to parse QueryScheduleFrequency from: " <> x)

instance ToHttpApiData QueryScheduleFrequency where
    toQueryParam = \case
        OneTime -> "ONE_TIME"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"
        SemiMonthly -> "SEMI_MONTHLY"
        Monthly -> "MONTHLY"
        Quarterly -> "QUARTERLY"

instance FromJSON QueryScheduleFrequency where
    parseJSON = parseJSONText "QueryScheduleFrequency"

instance ToJSON QueryScheduleFrequency where
    toJSON = toJSONText

-- | File specification (column names, types, order) in which the line items
-- will be returned. Default to EWF.
data DownloadLineItemsRequestFileSpec
    = Ewf
      -- ^ @EWF@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFileSpec

instance FromHttpApiData DownloadLineItemsRequestFileSpec where
    parseQueryParam = \case
        "EWF" -> Right Ewf
        x -> Left ("Unable to parse DownloadLineItemsRequestFileSpec from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFileSpec where
    toQueryParam = \case
        Ewf -> "EWF"

instance FromJSON DownloadLineItemsRequestFileSpec where
    parseJSON = parseJSONText "DownloadLineItemsRequestFileSpec"

instance ToJSON DownloadLineItemsRequestFileSpec where
    toJSON = toJSONText

-- | Format the line items are in. Default to CSV.
data UploadLineItemsRequestFormat
    = ULIRFCSV
      -- ^ @CSV@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UploadLineItemsRequestFormat

instance FromHttpApiData UploadLineItemsRequestFormat where
    parseQueryParam = \case
        "CSV" -> Right ULIRFCSV
        x -> Left ("Unable to parse UploadLineItemsRequestFormat from: " <> x)

instance ToHttpApiData UploadLineItemsRequestFormat where
    toQueryParam = \case
        ULIRFCSV -> "CSV"

instance FromJSON UploadLineItemsRequestFormat where
    parseJSON = parseJSONText "UploadLineItemsRequestFormat"

instance ToJSON UploadLineItemsRequestFormat where
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

-- | Filter type.
data FilterPairType
    = FilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | FilterDate
      -- ^ @FILTER_DATE@
    | FilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FilterWeek
      -- ^ @FILTER_WEEK@
    | FilterMonth
      -- ^ @FILTER_MONTH@
    | FilterYear
      -- ^ @FILTER_YEAR@
    | FilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | FilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | FilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | FilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | FilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | FilterCity
      -- ^ @FILTER_CITY@
    | FilterRegion
      -- ^ @FILTER_REGION@
    | FilterDma
      -- ^ @FILTER_DMA@
    | FilterCountry
      -- ^ @FILTER_COUNTRY@
    | FilterSiteId
      -- ^ @FILTER_SITE_ID@
    | FilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | FilterPartner
      -- ^ @FILTER_PARTNER@
    | FilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | FilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | FilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | FilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | FilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | FilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | FilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | FilterUserList
      -- ^ @FILTER_USER_LIST@
    | FilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | FilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | FilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | FilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | FilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | FilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | FilterKeyword
      -- ^ @FILTER_KEYWORD@
    | FilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | FilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | FilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | FilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | FilterOS
      -- ^ @FILTER_OS@
    | FilterBrowser
      -- ^ @FILTER_BROWSER@
    | FilterCarrier
      -- ^ @FILTER_CARRIER@
    | FilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | FilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | FilterZipCode
      -- ^ @FILTER_ZIP_CODE@
    | FilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | FilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | FilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | FilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | FilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | FilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | FilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | FilterAge
      -- ^ @FILTER_AGE@
    | FilterGender
      -- ^ @FILTER_GENDER@
    | FilterQuarter
      -- ^ @FILTER_QUARTER@
    | FilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | FilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | FilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | FilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | FilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | FilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | FilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | FilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | FilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | FilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | FilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | FilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | FilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | FilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | FilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | FilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | FilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | FilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | FilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | FilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | FilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | FilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | FilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | FilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | FilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | FilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | FilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | FilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | FilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | FilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | FilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | FilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | FilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | FilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | FilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | FilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | FilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | FilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | FilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | FilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | FilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | FilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | FilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | FilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | FilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | FilterSkippableSupport
      -- ^ @FILTER_SKIPPABLE_SUPPORT@
    | FilterCompanionCreativeId
      -- ^ @FILTER_COMPANION_CREATIVE_ID@
    | FilterBudgetSegmentDescription
      -- ^ @FILTER_BUDGET_SEGMENT_DESCRIPTION@
    | FilterFloodlightActivityId
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY_ID@
    | FilterDeviceModel
      -- ^ @FILTER_DEVICE_MODEL@
    | FilterDeviceMake
      -- ^ @FILTER_DEVICE_MAKE@
    | FilterDeviceType
      -- ^ @FILTER_DEVICE_TYPE@
    | FilterCreativeAttribute
      -- ^ @FILTER_CREATIVE_ATTRIBUTE@
    | FilterInventoryCommitmentType
      -- ^ @FILTER_INVENTORY_COMMITMENT_TYPE@
    | FilterInventoryRateType
      -- ^ @FILTER_INVENTORY_RATE_TYPE@
    | FilterInventoryDeliveryMethod
      -- ^ @FILTER_INVENTORY_DELIVERY_METHOD@
    | FilterInventorySourceExternalId
      -- ^ @FILTER_INVENTORY_SOURCE_EXTERNAL_ID@
    | FilterAuthorizedSellerState
      -- ^ @FILTER_AUTHORIZED_SELLER_STATE@
    | FilterVideoDurationSecondsRange
      -- ^ @FILTER_VIDEO_DURATION_SECONDS_RANGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterPairType

instance FromHttpApiData FilterPairType where
    parseQueryParam = \case
        "FILTER_UNKNOWN" -> Right FilterUnknown
        "FILTER_DATE" -> Right FilterDate
        "FILTER_DAY_OF_WEEK" -> Right FilterDayOfWeek
        "FILTER_WEEK" -> Right FilterWeek
        "FILTER_MONTH" -> Right FilterMonth
        "FILTER_YEAR" -> Right FilterYear
        "FILTER_TIME_OF_DAY" -> Right FilterTimeOfDay
        "FILTER_CONVERSION_DELAY" -> Right FilterConversionDelay
        "FILTER_CREATIVE_ID" -> Right FilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right FilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right FilterCreativeType
        "FILTER_EXCHANGE_ID" -> Right FilterExchangeId
        "FILTER_AD_POSITION" -> Right FilterAdPosition
        "FILTER_INVENTORY_SOURCE" -> Right FilterInventorySource
        "FILTER_CITY" -> Right FilterCity
        "FILTER_REGION" -> Right FilterRegion
        "FILTER_DMA" -> Right FilterDma
        "FILTER_COUNTRY" -> Right FilterCountry
        "FILTER_SITE_ID" -> Right FilterSiteId
        "FILTER_CHANNEL_ID" -> Right FilterChannelId
        "FILTER_PARTNER" -> Right FilterPartner
        "FILTER_ADVERTISER" -> Right FilterAdvertiser
        "FILTER_INSERTION_ORDER" -> Right FilterInsertionOrder
        "FILTER_LINE_ITEM" -> Right FilterLineItem
        "FILTER_PARTNER_CURRENCY" -> Right FilterPartnerCurrency
        "FILTER_ADVERTISER_CURRENCY" -> Right FilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right FilterAdvertiserTimezone
        "FILTER_LINE_ITEM_TYPE" -> Right FilterLineItemType
        "FILTER_USER_LIST" -> Right FilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right FilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right FilterUserListThirdParty
        "FILTER_TARGETED_USER_LIST" -> Right FilterTargetedUserList
        "FILTER_DATA_PROVIDER" -> Right FilterDataProvider
        "FILTER_ORDER_ID" -> Right FilterOrderId
        "FILTER_VIDEO_PLAYER_SIZE" -> Right FilterVideoPlayerSize
        "FILTER_VIDEO_DURATION_SECONDS" -> Right FilterVideoDurationSeconds
        "FILTER_KEYWORD" -> Right FilterKeyword
        "FILTER_PAGE_CATEGORY" -> Right FilterPageCategory
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right FilterCampaignDailyFrequency
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right FilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right FilterLineItemLifetimeFrequency
        "FILTER_OS" -> Right FilterOS
        "FILTER_BROWSER" -> Right FilterBrowser
        "FILTER_CARRIER" -> Right FilterCarrier
        "FILTER_SITE_LANGUAGE" -> Right FilterSiteLanguage
        "FILTER_INVENTORY_FORMAT" -> Right FilterInventoryFormat
        "FILTER_ZIP_CODE" -> Right FilterZipCode
        "FILTER_VIDEO_RATING_TIER" -> Right FilterVideoRatingTier
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right FilterVideoFormatSupport
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right FilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Right FilterVideoVpaidSupport
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right FilterVideoCreativeDuration
        "FILTER_PAGE_LAYOUT" -> Right FilterPageLayout
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right FilterVideoAdPositionInStream
        "FILTER_AGE" -> Right FilterAge
        "FILTER_GENDER" -> Right FilterGender
        "FILTER_QUARTER" -> Right FilterQuarter
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right FilterTrueviewConversionType
        "FILTER_MOBILE_GEO" -> Right FilterMobileGeo
        "FILTER_MRAID_SUPPORT" -> Right FilterMraidSupport
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right FilterActiveViewExpectedViewability
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right FilterVideoCreativeDurationSkippable
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right FilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right FilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right FilterNielsenGender
        "FILTER_NIELSEN_AGE" -> Right FilterNielsenAge
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right FilterInventorySourceType
        "FILTER_CREATIVE_WIDTH" -> Right FilterCreativeWidth
        "FILTER_CREATIVE_HEIGHT" -> Right FilterCreativeHeight
        "FILTER_DFP_ORDER_ID" -> Right FilterDfpOrderId
        "FILTER_TRUEVIEW_AGE" -> Right FilterTrueviewAge
        "FILTER_TRUEVIEW_GENDER" -> Right FilterTrueviewGender
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right FilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right FilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_INTEREST" -> Right FilterTrueviewInterest
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right FilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right FilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right FilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right FilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right FilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right FilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right FilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_CITY" -> Right FilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_REGION" -> Right FilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right FilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right FilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right FilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right FilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right FilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right FilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_CATEGORY" -> Right FilterTrueviewCategory
        "FILTER_TRUEVIEW_KEYWORD" -> Right FilterTrueviewKeyword
        "FILTER_TRUEVIEW_PLACEMENT" -> Right FilterTrueviewPlacement
        "FILTER_TRUEVIEW_URL" -> Right FilterTrueviewURL
        "FILTER_TRUEVIEW_COUNTRY" -> Right FilterTrueviewCountry
        "FILTER_TRUEVIEW_REGION" -> Right FilterTrueviewRegion
        "FILTER_TRUEVIEW_CITY" -> Right FilterTrueviewCity
        "FILTER_TRUEVIEW_DMA" -> Right FilterTrueviewDma
        "FILTER_TRUEVIEW_ZIPCODE" -> Right FilterTrueviewZipcode
        "FILTER_NOT_SUPPORTED" -> Right FilterNotSupported
        "FILTER_MEDIA_PLAN" -> Right FilterMediaPlan
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right FilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right FilterTrueviewIarYouTubeVideo
        "FILTER_SKIPPABLE_SUPPORT" -> Right FilterSkippableSupport
        "FILTER_COMPANION_CREATIVE_ID" -> Right FilterCompanionCreativeId
        "FILTER_BUDGET_SEGMENT_DESCRIPTION" -> Right FilterBudgetSegmentDescription
        "FILTER_FLOODLIGHT_ACTIVITY_ID" -> Right FilterFloodlightActivityId
        "FILTER_DEVICE_MODEL" -> Right FilterDeviceModel
        "FILTER_DEVICE_MAKE" -> Right FilterDeviceMake
        "FILTER_DEVICE_TYPE" -> Right FilterDeviceType
        "FILTER_CREATIVE_ATTRIBUTE" -> Right FilterCreativeAttribute
        "FILTER_INVENTORY_COMMITMENT_TYPE" -> Right FilterInventoryCommitmentType
        "FILTER_INVENTORY_RATE_TYPE" -> Right FilterInventoryRateType
        "FILTER_INVENTORY_DELIVERY_METHOD" -> Right FilterInventoryDeliveryMethod
        "FILTER_INVENTORY_SOURCE_EXTERNAL_ID" -> Right FilterInventorySourceExternalId
        "FILTER_AUTHORIZED_SELLER_STATE" -> Right FilterAuthorizedSellerState
        "FILTER_VIDEO_DURATION_SECONDS_RANGE" -> Right FilterVideoDurationSecondsRange
        x -> Left ("Unable to parse FilterPairType from: " <> x)

instance ToHttpApiData FilterPairType where
    toQueryParam = \case
        FilterUnknown -> "FILTER_UNKNOWN"
        FilterDate -> "FILTER_DATE"
        FilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FilterWeek -> "FILTER_WEEK"
        FilterMonth -> "FILTER_MONTH"
        FilterYear -> "FILTER_YEAR"
        FilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        FilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        FilterCreativeId -> "FILTER_CREATIVE_ID"
        FilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FilterExchangeId -> "FILTER_EXCHANGE_ID"
        FilterAdPosition -> "FILTER_AD_POSITION"
        FilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        FilterCity -> "FILTER_CITY"
        FilterRegion -> "FILTER_REGION"
        FilterDma -> "FILTER_DMA"
        FilterCountry -> "FILTER_COUNTRY"
        FilterSiteId -> "FILTER_SITE_ID"
        FilterChannelId -> "FILTER_CHANNEL_ID"
        FilterPartner -> "FILTER_PARTNER"
        FilterAdvertiser -> "FILTER_ADVERTISER"
        FilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        FilterLineItem -> "FILTER_LINE_ITEM"
        FilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        FilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        FilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        FilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        FilterUserList -> "FILTER_USER_LIST"
        FilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        FilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        FilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        FilterDataProvider -> "FILTER_DATA_PROVIDER"
        FilterOrderId -> "FILTER_ORDER_ID"
        FilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        FilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        FilterKeyword -> "FILTER_KEYWORD"
        FilterPageCategory -> "FILTER_PAGE_CATEGORY"
        FilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        FilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        FilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        FilterOS -> "FILTER_OS"
        FilterBrowser -> "FILTER_BROWSER"
        FilterCarrier -> "FILTER_CARRIER"
        FilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        FilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        FilterZipCode -> "FILTER_ZIP_CODE"
        FilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        FilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        FilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        FilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        FilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        FilterPageLayout -> "FILTER_PAGE_LAYOUT"
        FilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        FilterAge -> "FILTER_AGE"
        FilterGender -> "FILTER_GENDER"
        FilterQuarter -> "FILTER_QUARTER"
        FilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FilterMobileGeo -> "FILTER_MOBILE_GEO"
        FilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        FilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        FilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        FilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        FilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        FilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        FilterNielsenAge -> "FILTER_NIELSEN_AGE"
        FilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        FilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        FilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        FilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        FilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        FilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        FilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        FilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        FilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        FilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        FilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        FilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        FilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        FilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        FilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        FilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        FilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        FilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        FilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        FilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        FilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        FilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        FilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        FilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        FilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        FilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        FilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        FilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        FilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        FilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        FilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        FilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        FilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        FilterNotSupported -> "FILTER_NOT_SUPPORTED"
        FilterMediaPlan -> "FILTER_MEDIA_PLAN"
        FilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        FilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        FilterSkippableSupport -> "FILTER_SKIPPABLE_SUPPORT"
        FilterCompanionCreativeId -> "FILTER_COMPANION_CREATIVE_ID"
        FilterBudgetSegmentDescription -> "FILTER_BUDGET_SEGMENT_DESCRIPTION"
        FilterFloodlightActivityId -> "FILTER_FLOODLIGHT_ACTIVITY_ID"
        FilterDeviceModel -> "FILTER_DEVICE_MODEL"
        FilterDeviceMake -> "FILTER_DEVICE_MAKE"
        FilterDeviceType -> "FILTER_DEVICE_TYPE"
        FilterCreativeAttribute -> "FILTER_CREATIVE_ATTRIBUTE"
        FilterInventoryCommitmentType -> "FILTER_INVENTORY_COMMITMENT_TYPE"
        FilterInventoryRateType -> "FILTER_INVENTORY_RATE_TYPE"
        FilterInventoryDeliveryMethod -> "FILTER_INVENTORY_DELIVERY_METHOD"
        FilterInventorySourceExternalId -> "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
        FilterAuthorizedSellerState -> "FILTER_AUTHORIZED_SELLER_STATE"
        FilterVideoDurationSecondsRange -> "FILTER_VIDEO_DURATION_SECONDS_RANGE"

instance FromJSON FilterPairType where
    parseJSON = parseJSONText "FilterPairType"

instance ToJSON FilterPairType where
    toJSON = toJSONText

-- | Report data range used to generate the report.
data RunQueryRequestDataRange
    = RQRDRCustomDates
      -- ^ @CUSTOM_DATES@
    | RQRDRCurrentDay
      -- ^ @CURRENT_DAY@
    | RQRDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | RQRDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | RQRDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | RQRDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | RQRDRYearToDate
      -- ^ @YEAR_TO_DATE@
    | RQRDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | RQRDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | RQRDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | RQRDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | RQRDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | RQRDRLast7Days
      -- ^ @LAST_7_DAYS@
    | RQRDRLast30Days
      -- ^ @LAST_30_DAYS@
    | RQRDRLast90Days
      -- ^ @LAST_90_DAYS@
    | RQRDRLast365Days
      -- ^ @LAST_365_DAYS@
    | RQRDRAllTime
      -- ^ @ALL_TIME@
    | RQRDRLast14Days
      -- ^ @LAST_14_DAYS@
    | RQRDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RunQueryRequestDataRange

instance FromHttpApiData RunQueryRequestDataRange where
    parseQueryParam = \case
        "CUSTOM_DATES" -> Right RQRDRCustomDates
        "CURRENT_DAY" -> Right RQRDRCurrentDay
        "PREVIOUS_DAY" -> Right RQRDRPreviousDay
        "WEEK_TO_DATE" -> Right RQRDRWeekToDate
        "MONTH_TO_DATE" -> Right RQRDRMonthToDate
        "QUARTER_TO_DATE" -> Right RQRDRQuarterToDate
        "YEAR_TO_DATE" -> Right RQRDRYearToDate
        "PREVIOUS_WEEK" -> Right RQRDRPreviousWeek
        "PREVIOUS_HALF_MONTH" -> Right RQRDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right RQRDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right RQRDRPreviousQuarter
        "PREVIOUS_YEAR" -> Right RQRDRPreviousYear
        "LAST_7_DAYS" -> Right RQRDRLast7Days
        "LAST_30_DAYS" -> Right RQRDRLast30Days
        "LAST_90_DAYS" -> Right RQRDRLast90Days
        "LAST_365_DAYS" -> Right RQRDRLast365Days
        "ALL_TIME" -> Right RQRDRAllTime
        "LAST_14_DAYS" -> Right RQRDRLast14Days
        "TYPE_NOT_SUPPORTED" -> Right RQRDRTypeNotSupported
        x -> Left ("Unable to parse RunQueryRequestDataRange from: " <> x)

instance ToHttpApiData RunQueryRequestDataRange where
    toQueryParam = \case
        RQRDRCustomDates -> "CUSTOM_DATES"
        RQRDRCurrentDay -> "CURRENT_DAY"
        RQRDRPreviousDay -> "PREVIOUS_DAY"
        RQRDRWeekToDate -> "WEEK_TO_DATE"
        RQRDRMonthToDate -> "MONTH_TO_DATE"
        RQRDRQuarterToDate -> "QUARTER_TO_DATE"
        RQRDRYearToDate -> "YEAR_TO_DATE"
        RQRDRPreviousWeek -> "PREVIOUS_WEEK"
        RQRDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        RQRDRPreviousMonth -> "PREVIOUS_MONTH"
        RQRDRPreviousQuarter -> "PREVIOUS_QUARTER"
        RQRDRPreviousYear -> "PREVIOUS_YEAR"
        RQRDRLast7Days -> "LAST_7_DAYS"
        RQRDRLast30Days -> "LAST_30_DAYS"
        RQRDRLast90Days -> "LAST_90_DAYS"
        RQRDRLast365Days -> "LAST_365_DAYS"
        RQRDRAllTime -> "ALL_TIME"
        RQRDRLast14Days -> "LAST_14_DAYS"
        RQRDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"

instance FromJSON RunQueryRequestDataRange where
    parseJSON = parseJSONText "RunQueryRequestDataRange"

instance ToJSON RunQueryRequestDataRange where
    toJSON = toJSONText

-- | The state of the report.
data ReportStatusState
    = Running
      -- ^ @RUNNING@
    | Done
      -- ^ @DONE@
    | Failed
      -- ^ @FAILED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportStatusState

instance FromHttpApiData ReportStatusState where
    parseQueryParam = \case
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse ReportStatusState from: " <> x)

instance ToHttpApiData ReportStatusState where
    toQueryParam = \case
        Running -> "RUNNING"
        Done -> "DONE"
        Failed -> "FAILED"

instance FromJSON ReportStatusState where
    parseJSON = parseJSONText "ReportStatusState"

instance ToJSON ReportStatusState where
    toJSON = toJSONText

data ParametersGroupBysItem
    = PGBIFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | PGBIFilterDate
      -- ^ @FILTER_DATE@
    | PGBIFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | PGBIFilterWeek
      -- ^ @FILTER_WEEK@
    | PGBIFilterMonth
      -- ^ @FILTER_MONTH@
    | PGBIFilterYear
      -- ^ @FILTER_YEAR@
    | PGBIFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | PGBIFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | PGBIFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | PGBIFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | PGBIFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | PGBIFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | PGBIFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | PGBIFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | PGBIFilterCity
      -- ^ @FILTER_CITY@
    | PGBIFilterRegion
      -- ^ @FILTER_REGION@
    | PGBIFilterDma
      -- ^ @FILTER_DMA@
    | PGBIFilterCountry
      -- ^ @FILTER_COUNTRY@
    | PGBIFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | PGBIFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | PGBIFilterPartner
      -- ^ @FILTER_PARTNER@
    | PGBIFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | PGBIFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | PGBIFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | PGBIFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | PGBIFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | PGBIFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | PGBIFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | PGBIFilterUserList
      -- ^ @FILTER_USER_LIST@
    | PGBIFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | PGBIFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | PGBIFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | PGBIFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | PGBIFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | PGBIFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | PGBIFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | PGBIFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | PGBIFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | PGBIFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | PGBIFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | PGBIFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | PGBIFilterOS
      -- ^ @FILTER_OS@
    | PGBIFilterBrowser
      -- ^ @FILTER_BROWSER@
    | PGBIFilterCarrier
      -- ^ @FILTER_CARRIER@
    | PGBIFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | PGBIFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | PGBIFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
    | PGBIFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | PGBIFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | PGBIFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | PGBIFilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | PGBIFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | PGBIFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | PGBIFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | PGBIFilterAge
      -- ^ @FILTER_AGE@
    | PGBIFilterGender
      -- ^ @FILTER_GENDER@
    | PGBIFilterQuarter
      -- ^ @FILTER_QUARTER@
    | PGBIFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | PGBIFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | PGBIFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | PGBIFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | PGBIFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | PGBIFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | PGBIFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | PGBIFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | PGBIFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | PGBIFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | PGBIFilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | PGBIFilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | PGBIFilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | PGBIFilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | PGBIFilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | PGBIFilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | PGBIFilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | PGBIFilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | PGBIFilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | PGBIFilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | PGBIFilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | PGBIFilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | PGBIFilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | PGBIFilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | PGBIFilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | PGBIFilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | PGBIFilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | PGBIFilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | PGBIFilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | PGBIFilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | PGBIFilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | PGBIFilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | PGBIFilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | PGBIFilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | PGBIFilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | PGBIFilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | PGBIFilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | PGBIFilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | PGBIFilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | PGBIFilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | PGBIFilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | PGBIFilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | PGBIFilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | PGBIFilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | PGBIFilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | PGBIFilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | PGBIFilterSkippableSupport
      -- ^ @FILTER_SKIPPABLE_SUPPORT@
    | PGBIFilterCompanionCreativeId
      -- ^ @FILTER_COMPANION_CREATIVE_ID@
    | PGBIFilterBudgetSegmentDescription
      -- ^ @FILTER_BUDGET_SEGMENT_DESCRIPTION@
    | PGBIFilterFloodlightActivityId
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY_ID@
    | PGBIFilterDeviceModel
      -- ^ @FILTER_DEVICE_MODEL@
    | PGBIFilterDeviceMake
      -- ^ @FILTER_DEVICE_MAKE@
    | PGBIFilterDeviceType
      -- ^ @FILTER_DEVICE_TYPE@
    | PGBIFilterCreativeAttribute
      -- ^ @FILTER_CREATIVE_ATTRIBUTE@
    | PGBIFilterInventoryCommitmentType
      -- ^ @FILTER_INVENTORY_COMMITMENT_TYPE@
    | PGBIFilterInventoryRateType
      -- ^ @FILTER_INVENTORY_RATE_TYPE@
    | PGBIFilterInventoryDeliveryMethod
      -- ^ @FILTER_INVENTORY_DELIVERY_METHOD@
    | PGBIFilterInventorySourceExternalId
      -- ^ @FILTER_INVENTORY_SOURCE_EXTERNAL_ID@
    | PGBIFilterAuthorizedSellerState
      -- ^ @FILTER_AUTHORIZED_SELLER_STATE@
    | PGBIFilterVideoDurationSecondsRange
      -- ^ @FILTER_VIDEO_DURATION_SECONDS_RANGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersGroupBysItem

instance FromHttpApiData ParametersGroupBysItem where
    parseQueryParam = \case
        "FILTER_UNKNOWN" -> Right PGBIFilterUnknown
        "FILTER_DATE" -> Right PGBIFilterDate
        "FILTER_DAY_OF_WEEK" -> Right PGBIFilterDayOfWeek
        "FILTER_WEEK" -> Right PGBIFilterWeek
        "FILTER_MONTH" -> Right PGBIFilterMonth
        "FILTER_YEAR" -> Right PGBIFilterYear
        "FILTER_TIME_OF_DAY" -> Right PGBIFilterTimeOfDay
        "FILTER_CONVERSION_DELAY" -> Right PGBIFilterConversionDelay
        "FILTER_CREATIVE_ID" -> Right PGBIFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right PGBIFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right PGBIFilterCreativeType
        "FILTER_EXCHANGE_ID" -> Right PGBIFilterExchangeId
        "FILTER_AD_POSITION" -> Right PGBIFilterAdPosition
        "FILTER_INVENTORY_SOURCE" -> Right PGBIFilterInventorySource
        "FILTER_CITY" -> Right PGBIFilterCity
        "FILTER_REGION" -> Right PGBIFilterRegion
        "FILTER_DMA" -> Right PGBIFilterDma
        "FILTER_COUNTRY" -> Right PGBIFilterCountry
        "FILTER_SITE_ID" -> Right PGBIFilterSiteId
        "FILTER_CHANNEL_ID" -> Right PGBIFilterChannelId
        "FILTER_PARTNER" -> Right PGBIFilterPartner
        "FILTER_ADVERTISER" -> Right PGBIFilterAdvertiser
        "FILTER_INSERTION_ORDER" -> Right PGBIFilterInsertionOrder
        "FILTER_LINE_ITEM" -> Right PGBIFilterLineItem
        "FILTER_PARTNER_CURRENCY" -> Right PGBIFilterPartnerCurrency
        "FILTER_ADVERTISER_CURRENCY" -> Right PGBIFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right PGBIFilterAdvertiserTimezone
        "FILTER_LINE_ITEM_TYPE" -> Right PGBIFilterLineItemType
        "FILTER_USER_LIST" -> Right PGBIFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right PGBIFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right PGBIFilterUserListThirdParty
        "FILTER_TARGETED_USER_LIST" -> Right PGBIFilterTargetedUserList
        "FILTER_DATA_PROVIDER" -> Right PGBIFilterDataProvider
        "FILTER_ORDER_ID" -> Right PGBIFilterOrderId
        "FILTER_VIDEO_PLAYER_SIZE" -> Right PGBIFilterVideoPlayerSize
        "FILTER_VIDEO_DURATION_SECONDS" -> Right PGBIFilterVideoDurationSeconds
        "FILTER_KEYWORD" -> Right PGBIFilterKeyword
        "FILTER_PAGE_CATEGORY" -> Right PGBIFilterPageCategory
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right PGBIFilterCampaignDailyFrequency
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right PGBIFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right PGBIFilterLineItemLifetimeFrequency
        "FILTER_OS" -> Right PGBIFilterOS
        "FILTER_BROWSER" -> Right PGBIFilterBrowser
        "FILTER_CARRIER" -> Right PGBIFilterCarrier
        "FILTER_SITE_LANGUAGE" -> Right PGBIFilterSiteLanguage
        "FILTER_INVENTORY_FORMAT" -> Right PGBIFilterInventoryFormat
        "FILTER_ZIP_CODE" -> Right PGBIFilterZipCode
        "FILTER_VIDEO_RATING_TIER" -> Right PGBIFilterVideoRatingTier
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right PGBIFilterVideoFormatSupport
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right PGBIFilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Right PGBIFilterVideoVpaidSupport
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right PGBIFilterVideoCreativeDuration
        "FILTER_PAGE_LAYOUT" -> Right PGBIFilterPageLayout
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right PGBIFilterVideoAdPositionInStream
        "FILTER_AGE" -> Right PGBIFilterAge
        "FILTER_GENDER" -> Right PGBIFilterGender
        "FILTER_QUARTER" -> Right PGBIFilterQuarter
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right PGBIFilterTrueviewConversionType
        "FILTER_MOBILE_GEO" -> Right PGBIFilterMobileGeo
        "FILTER_MRAID_SUPPORT" -> Right PGBIFilterMraidSupport
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right PGBIFilterActiveViewExpectedViewability
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right PGBIFilterVideoCreativeDurationSkippable
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right PGBIFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right PGBIFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right PGBIFilterNielsenGender
        "FILTER_NIELSEN_AGE" -> Right PGBIFilterNielsenAge
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right PGBIFilterInventorySourceType
        "FILTER_CREATIVE_WIDTH" -> Right PGBIFilterCreativeWidth
        "FILTER_CREATIVE_HEIGHT" -> Right PGBIFilterCreativeHeight
        "FILTER_DFP_ORDER_ID" -> Right PGBIFilterDfpOrderId
        "FILTER_TRUEVIEW_AGE" -> Right PGBIFilterTrueviewAge
        "FILTER_TRUEVIEW_GENDER" -> Right PGBIFilterTrueviewGender
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right PGBIFilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right PGBIFilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_INTEREST" -> Right PGBIFilterTrueviewInterest
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right PGBIFilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right PGBIFilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right PGBIFilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right PGBIFilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right PGBIFilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right PGBIFilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right PGBIFilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_CITY" -> Right PGBIFilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_REGION" -> Right PGBIFilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right PGBIFilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right PGBIFilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right PGBIFilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right PGBIFilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right PGBIFilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right PGBIFilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_CATEGORY" -> Right PGBIFilterTrueviewCategory
        "FILTER_TRUEVIEW_KEYWORD" -> Right PGBIFilterTrueviewKeyword
        "FILTER_TRUEVIEW_PLACEMENT" -> Right PGBIFilterTrueviewPlacement
        "FILTER_TRUEVIEW_URL" -> Right PGBIFilterTrueviewURL
        "FILTER_TRUEVIEW_COUNTRY" -> Right PGBIFilterTrueviewCountry
        "FILTER_TRUEVIEW_REGION" -> Right PGBIFilterTrueviewRegion
        "FILTER_TRUEVIEW_CITY" -> Right PGBIFilterTrueviewCity
        "FILTER_TRUEVIEW_DMA" -> Right PGBIFilterTrueviewDma
        "FILTER_TRUEVIEW_ZIPCODE" -> Right PGBIFilterTrueviewZipcode
        "FILTER_NOT_SUPPORTED" -> Right PGBIFilterNotSupported
        "FILTER_MEDIA_PLAN" -> Right PGBIFilterMediaPlan
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right PGBIFilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right PGBIFilterTrueviewIarYouTubeVideo
        "FILTER_SKIPPABLE_SUPPORT" -> Right PGBIFilterSkippableSupport
        "FILTER_COMPANION_CREATIVE_ID" -> Right PGBIFilterCompanionCreativeId
        "FILTER_BUDGET_SEGMENT_DESCRIPTION" -> Right PGBIFilterBudgetSegmentDescription
        "FILTER_FLOODLIGHT_ACTIVITY_ID" -> Right PGBIFilterFloodlightActivityId
        "FILTER_DEVICE_MODEL" -> Right PGBIFilterDeviceModel
        "FILTER_DEVICE_MAKE" -> Right PGBIFilterDeviceMake
        "FILTER_DEVICE_TYPE" -> Right PGBIFilterDeviceType
        "FILTER_CREATIVE_ATTRIBUTE" -> Right PGBIFilterCreativeAttribute
        "FILTER_INVENTORY_COMMITMENT_TYPE" -> Right PGBIFilterInventoryCommitmentType
        "FILTER_INVENTORY_RATE_TYPE" -> Right PGBIFilterInventoryRateType
        "FILTER_INVENTORY_DELIVERY_METHOD" -> Right PGBIFilterInventoryDeliveryMethod
        "FILTER_INVENTORY_SOURCE_EXTERNAL_ID" -> Right PGBIFilterInventorySourceExternalId
        "FILTER_AUTHORIZED_SELLER_STATE" -> Right PGBIFilterAuthorizedSellerState
        "FILTER_VIDEO_DURATION_SECONDS_RANGE" -> Right PGBIFilterVideoDurationSecondsRange
        x -> Left ("Unable to parse ParametersGroupBysItem from: " <> x)

instance ToHttpApiData ParametersGroupBysItem where
    toQueryParam = \case
        PGBIFilterUnknown -> "FILTER_UNKNOWN"
        PGBIFilterDate -> "FILTER_DATE"
        PGBIFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        PGBIFilterWeek -> "FILTER_WEEK"
        PGBIFilterMonth -> "FILTER_MONTH"
        PGBIFilterYear -> "FILTER_YEAR"
        PGBIFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        PGBIFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        PGBIFilterCreativeId -> "FILTER_CREATIVE_ID"
        PGBIFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        PGBIFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        PGBIFilterExchangeId -> "FILTER_EXCHANGE_ID"
        PGBIFilterAdPosition -> "FILTER_AD_POSITION"
        PGBIFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        PGBIFilterCity -> "FILTER_CITY"
        PGBIFilterRegion -> "FILTER_REGION"
        PGBIFilterDma -> "FILTER_DMA"
        PGBIFilterCountry -> "FILTER_COUNTRY"
        PGBIFilterSiteId -> "FILTER_SITE_ID"
        PGBIFilterChannelId -> "FILTER_CHANNEL_ID"
        PGBIFilterPartner -> "FILTER_PARTNER"
        PGBIFilterAdvertiser -> "FILTER_ADVERTISER"
        PGBIFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        PGBIFilterLineItem -> "FILTER_LINE_ITEM"
        PGBIFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        PGBIFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        PGBIFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        PGBIFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        PGBIFilterUserList -> "FILTER_USER_LIST"
        PGBIFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        PGBIFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        PGBIFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        PGBIFilterDataProvider -> "FILTER_DATA_PROVIDER"
        PGBIFilterOrderId -> "FILTER_ORDER_ID"
        PGBIFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        PGBIFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        PGBIFilterKeyword -> "FILTER_KEYWORD"
        PGBIFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        PGBIFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        PGBIFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        PGBIFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        PGBIFilterOS -> "FILTER_OS"
        PGBIFilterBrowser -> "FILTER_BROWSER"
        PGBIFilterCarrier -> "FILTER_CARRIER"
        PGBIFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        PGBIFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        PGBIFilterZipCode -> "FILTER_ZIP_CODE"
        PGBIFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        PGBIFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        PGBIFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        PGBIFilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        PGBIFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        PGBIFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        PGBIFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        PGBIFilterAge -> "FILTER_AGE"
        PGBIFilterGender -> "FILTER_GENDER"
        PGBIFilterQuarter -> "FILTER_QUARTER"
        PGBIFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        PGBIFilterMobileGeo -> "FILTER_MOBILE_GEO"
        PGBIFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        PGBIFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        PGBIFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        PGBIFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        PGBIFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        PGBIFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        PGBIFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        PGBIFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        PGBIFilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        PGBIFilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        PGBIFilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        PGBIFilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        PGBIFilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        PGBIFilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        PGBIFilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        PGBIFilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        PGBIFilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        PGBIFilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        PGBIFilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        PGBIFilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        PGBIFilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        PGBIFilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        PGBIFilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        PGBIFilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        PGBIFilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        PGBIFilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        PGBIFilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        PGBIFilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        PGBIFilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        PGBIFilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        PGBIFilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        PGBIFilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        PGBIFilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        PGBIFilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        PGBIFilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        PGBIFilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        PGBIFilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        PGBIFilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        PGBIFilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        PGBIFilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        PGBIFilterNotSupported -> "FILTER_NOT_SUPPORTED"
        PGBIFilterMediaPlan -> "FILTER_MEDIA_PLAN"
        PGBIFilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        PGBIFilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        PGBIFilterSkippableSupport -> "FILTER_SKIPPABLE_SUPPORT"
        PGBIFilterCompanionCreativeId -> "FILTER_COMPANION_CREATIVE_ID"
        PGBIFilterBudgetSegmentDescription -> "FILTER_BUDGET_SEGMENT_DESCRIPTION"
        PGBIFilterFloodlightActivityId -> "FILTER_FLOODLIGHT_ACTIVITY_ID"
        PGBIFilterDeviceModel -> "FILTER_DEVICE_MODEL"
        PGBIFilterDeviceMake -> "FILTER_DEVICE_MAKE"
        PGBIFilterDeviceType -> "FILTER_DEVICE_TYPE"
        PGBIFilterCreativeAttribute -> "FILTER_CREATIVE_ATTRIBUTE"
        PGBIFilterInventoryCommitmentType -> "FILTER_INVENTORY_COMMITMENT_TYPE"
        PGBIFilterInventoryRateType -> "FILTER_INVENTORY_RATE_TYPE"
        PGBIFilterInventoryDeliveryMethod -> "FILTER_INVENTORY_DELIVERY_METHOD"
        PGBIFilterInventorySourceExternalId -> "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
        PGBIFilterAuthorizedSellerState -> "FILTER_AUTHORIZED_SELLER_STATE"
        PGBIFilterVideoDurationSecondsRange -> "FILTER_VIDEO_DURATION_SECONDS_RANGE"

instance FromJSON ParametersGroupBysItem where
    parseJSON = parseJSONText "ParametersGroupBysItem"

instance ToJSON ParametersGroupBysItem where
    toJSON = toJSONText

-- | Error code that shows why the report was not created.
data ReportFailureErrorCode
    = AuthenticationError
      -- ^ @AUTHENTICATION_ERROR@
    | UnauthorizedAPIAccess
      -- ^ @UNAUTHORIZED_API_ACCESS@
    | ServerError
      -- ^ @SERVER_ERROR@
    | ValidationError
      -- ^ @VALIDATION_ERROR@
    | ReportingFatalError
      -- ^ @REPORTING_FATAL_ERROR@
    | ReportingTransientError
      -- ^ @REPORTING_TRANSIENT_ERROR@
    | ReportingImcompatibleMetrics
      -- ^ @REPORTING_IMCOMPATIBLE_METRICS@
    | ReportingIllegalFilename
      -- ^ @REPORTING_ILLEGAL_FILENAME@
    | ReportingQueryNotFound
      -- ^ @REPORTING_QUERY_NOT_FOUND@
    | ReportingBucketNotFound
      -- ^ @REPORTING_BUCKET_NOT_FOUND@
    | ReportingCreateBucketFailed
      -- ^ @REPORTING_CREATE_BUCKET_FAILED@
    | ReportingDeleteBucketFailed
      -- ^ @REPORTING_DELETE_BUCKET_FAILED@
    | ReportingUpdateBucketPermissionFailed
      -- ^ @REPORTING_UPDATE_BUCKET_PERMISSION_FAILED@
    | ReportingWriteBucketObjectFailed
      -- ^ @REPORTING_WRITE_BUCKET_OBJECT_FAILED@
    | DeprecatedReportingInvalidQuery
      -- ^ @DEPRECATED_REPORTING_INVALID_QUERY@
    | ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
      -- ^ @REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS@
    | ReportingInvalidQueryTitleMissing
      -- ^ @REPORTING_INVALID_QUERY_TITLE_MISSING@
    | ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
      -- ^ @REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportFailureErrorCode

instance FromHttpApiData ReportFailureErrorCode where
    parseQueryParam = \case
        "AUTHENTICATION_ERROR" -> Right AuthenticationError
        "UNAUTHORIZED_API_ACCESS" -> Right UnauthorizedAPIAccess
        "SERVER_ERROR" -> Right ServerError
        "VALIDATION_ERROR" -> Right ValidationError
        "REPORTING_FATAL_ERROR" -> Right ReportingFatalError
        "REPORTING_TRANSIENT_ERROR" -> Right ReportingTransientError
        "REPORTING_IMCOMPATIBLE_METRICS" -> Right ReportingImcompatibleMetrics
        "REPORTING_ILLEGAL_FILENAME" -> Right ReportingIllegalFilename
        "REPORTING_QUERY_NOT_FOUND" -> Right ReportingQueryNotFound
        "REPORTING_BUCKET_NOT_FOUND" -> Right ReportingBucketNotFound
        "REPORTING_CREATE_BUCKET_FAILED" -> Right ReportingCreateBucketFailed
        "REPORTING_DELETE_BUCKET_FAILED" -> Right ReportingDeleteBucketFailed
        "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED" -> Right ReportingUpdateBucketPermissionFailed
        "REPORTING_WRITE_BUCKET_OBJECT_FAILED" -> Right ReportingWriteBucketObjectFailed
        "DEPRECATED_REPORTING_INVALID_QUERY" -> Right DeprecatedReportingInvalidQuery
        "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS" -> Right ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
        "REPORTING_INVALID_QUERY_TITLE_MISSING" -> Right ReportingInvalidQueryTitleMissing
        "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS" -> Right ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
        x -> Left ("Unable to parse ReportFailureErrorCode from: " <> x)

instance ToHttpApiData ReportFailureErrorCode where
    toQueryParam = \case
        AuthenticationError -> "AUTHENTICATION_ERROR"
        UnauthorizedAPIAccess -> "UNAUTHORIZED_API_ACCESS"
        ServerError -> "SERVER_ERROR"
        ValidationError -> "VALIDATION_ERROR"
        ReportingFatalError -> "REPORTING_FATAL_ERROR"
        ReportingTransientError -> "REPORTING_TRANSIENT_ERROR"
        ReportingImcompatibleMetrics -> "REPORTING_IMCOMPATIBLE_METRICS"
        ReportingIllegalFilename -> "REPORTING_ILLEGAL_FILENAME"
        ReportingQueryNotFound -> "REPORTING_QUERY_NOT_FOUND"
        ReportingBucketNotFound -> "REPORTING_BUCKET_NOT_FOUND"
        ReportingCreateBucketFailed -> "REPORTING_CREATE_BUCKET_FAILED"
        ReportingDeleteBucketFailed -> "REPORTING_DELETE_BUCKET_FAILED"
        ReportingUpdateBucketPermissionFailed -> "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"
        ReportingWriteBucketObjectFailed -> "REPORTING_WRITE_BUCKET_OBJECT_FAILED"
        DeprecatedReportingInvalidQuery -> "DEPRECATED_REPORTING_INVALID_QUERY"
        ReportingInvalidQueryTooManyUnfilteredLargeGroupBys -> "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"
        ReportingInvalidQueryTitleMissing -> "REPORTING_INVALID_QUERY_TITLE_MISSING"
        ReportingInvalidQueryMissingPartnerAndAdvertiserFilters -> "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"

instance FromJSON ReportFailureErrorCode where
    parseJSON = parseJSONText "ReportFailureErrorCode"

instance ToJSON ReportFailureErrorCode where
    toJSON = toJSONText

-- | Format in which the line items will be returned. Default to CSV.
data DownloadLineItemsRequestFormat
    = DLIRFCSV
      -- ^ @CSV@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFormat

instance FromHttpApiData DownloadLineItemsRequestFormat where
    parseQueryParam = \case
        "CSV" -> Right DLIRFCSV
        x -> Left ("Unable to parse DownloadLineItemsRequestFormat from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFormat where
    toQueryParam = \case
        DLIRFCSV -> "CSV"

instance FromJSON DownloadLineItemsRequestFormat where
    parseJSON = parseJSONText "DownloadLineItemsRequestFormat"

instance ToJSON DownloadLineItemsRequestFormat where
    toJSON = toJSONText

-- | The file type of the report.
data ReportStatusFormat
    = RSFCSV
      -- ^ @CSV@
    | RSFExcelCSV
      -- ^ @EXCEL_CSV@
    | RSFXlsx
      -- ^ @XLSX@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportStatusFormat

instance FromHttpApiData ReportStatusFormat where
    parseQueryParam = \case
        "CSV" -> Right RSFCSV
        "EXCEL_CSV" -> Right RSFExcelCSV
        "XLSX" -> Right RSFXlsx
        x -> Left ("Unable to parse ReportStatusFormat from: " <> x)

instance ToHttpApiData ReportStatusFormat where
    toQueryParam = \case
        RSFCSV -> "CSV"
        RSFExcelCSV -> "EXCEL_CSV"
        RSFXlsx -> "XLSX"

instance FromJSON ReportStatusFormat where
    parseJSON = parseJSONText "ReportStatusFormat"

instance ToJSON ReportStatusFormat where
    toJSON = toJSONText
