{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ShoppingContent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage your product listings and accounts for Google Shopping
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference>
module Network.Google.ShoppingContent
    (
    -- * Service Configuration
      shoppingContentService

    -- * OAuth Scopes
    , contentScope

    -- * API Declaration
    , ShoppingContentAPI

    -- * Resources

    -- ** content.accounts.authinfo
    , module Network.Google.Resource.Content.Accounts.AuthInfo

    -- ** content.accounts.claimwebsite
    , module Network.Google.Resource.Content.Accounts.Claimwebsite

    -- ** content.accounts.custombatch
    , module Network.Google.Resource.Content.Accounts.Custombatch

    -- ** content.accounts.delete
    , module Network.Google.Resource.Content.Accounts.Delete

    -- ** content.accounts.get
    , module Network.Google.Resource.Content.Accounts.Get

    -- ** content.accounts.insert
    , module Network.Google.Resource.Content.Accounts.Insert

    -- ** content.accounts.link
    , module Network.Google.Resource.Content.Accounts.Link

    -- ** content.accounts.list
    , module Network.Google.Resource.Content.Accounts.List

    -- ** content.accounts.update
    , module Network.Google.Resource.Content.Accounts.Update

    -- ** content.accountstatuses.custombatch
    , module Network.Google.Resource.Content.Accountstatuses.Custombatch

    -- ** content.accountstatuses.get
    , module Network.Google.Resource.Content.Accountstatuses.Get

    -- ** content.accountstatuses.list
    , module Network.Google.Resource.Content.Accountstatuses.List

    -- ** content.accounttax.custombatch
    , module Network.Google.Resource.Content.Accounttax.Custombatch

    -- ** content.accounttax.get
    , module Network.Google.Resource.Content.Accounttax.Get

    -- ** content.accounttax.list
    , module Network.Google.Resource.Content.Accounttax.List

    -- ** content.accounttax.update
    , module Network.Google.Resource.Content.Accounttax.Update

    -- ** content.datafeeds.custombatch
    , module Network.Google.Resource.Content.Datafeeds.Custombatch

    -- ** content.datafeeds.delete
    , module Network.Google.Resource.Content.Datafeeds.Delete

    -- ** content.datafeeds.fetchnow
    , module Network.Google.Resource.Content.Datafeeds.Fetchnow

    -- ** content.datafeeds.get
    , module Network.Google.Resource.Content.Datafeeds.Get

    -- ** content.datafeeds.insert
    , module Network.Google.Resource.Content.Datafeeds.Insert

    -- ** content.datafeeds.list
    , module Network.Google.Resource.Content.Datafeeds.List

    -- ** content.datafeeds.update
    , module Network.Google.Resource.Content.Datafeeds.Update

    -- ** content.datafeedstatuses.custombatch
    , module Network.Google.Resource.Content.Datafeedstatuses.Custombatch

    -- ** content.datafeedstatuses.get
    , module Network.Google.Resource.Content.Datafeedstatuses.Get

    -- ** content.datafeedstatuses.list
    , module Network.Google.Resource.Content.Datafeedstatuses.List

    -- ** content.inventory.custombatch
    , module Network.Google.Resource.Content.Inventory.Custombatch

    -- ** content.inventory.set
    , module Network.Google.Resource.Content.Inventory.Set

    -- ** content.liasettings.custombatch
    , module Network.Google.Resource.Content.LiaSettings.Custombatch

    -- ** content.liasettings.get
    , module Network.Google.Resource.Content.LiaSettings.Get

    -- ** content.liasettings.getaccessiblegmbaccounts
    , module Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts

    -- ** content.liasettings.list
    , module Network.Google.Resource.Content.LiaSettings.List

    -- ** content.liasettings.listposdataproviders
    , module Network.Google.Resource.Content.LiaSettings.ListposDataproviders

    -- ** content.liasettings.requestgmbaccess
    , module Network.Google.Resource.Content.LiaSettings.RequestgmbAccess

    -- ** content.liasettings.requestinventoryverification
    , module Network.Google.Resource.Content.LiaSettings.Requestinventoryverification

    -- ** content.liasettings.setinventoryverificationcontact
    , module Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact

    -- ** content.liasettings.setposdataprovider
    , module Network.Google.Resource.Content.LiaSettings.SetposDataprovider

    -- ** content.liasettings.update
    , module Network.Google.Resource.Content.LiaSettings.Update

    -- ** content.orderinvoices.createchargeinvoice
    , module Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice

    -- ** content.orderinvoices.createrefundinvoice
    , module Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice

    -- ** content.orderreports.listdisbursements
    , module Network.Google.Resource.Content.Orderreports.Listdisbursements

    -- ** content.orderreports.listtransactions
    , module Network.Google.Resource.Content.Orderreports.Listtransactions

    -- ** content.orderreturns.get
    , module Network.Google.Resource.Content.Orderreturns.Get

    -- ** content.orderreturns.list
    , module Network.Google.Resource.Content.Orderreturns.List

    -- ** content.orders.acknowledge
    , module Network.Google.Resource.Content.Orders.Acknowledge

    -- ** content.orders.advancetestorder
    , module Network.Google.Resource.Content.Orders.AdvancetestOrder

    -- ** content.orders.cancel
    , module Network.Google.Resource.Content.Orders.Cancel

    -- ** content.orders.cancellineitem
    , module Network.Google.Resource.Content.Orders.Cancellineitem

    -- ** content.orders.canceltestorderbycustomer
    , module Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer

    -- ** content.orders.createtestorder
    , module Network.Google.Resource.Content.Orders.CreatetestOrder

    -- ** content.orders.createtestreturn
    , module Network.Google.Resource.Content.Orders.Createtestreturn

    -- ** content.orders.custombatch
    , module Network.Google.Resource.Content.Orders.Custombatch

    -- ** content.orders.get
    , module Network.Google.Resource.Content.Orders.Get

    -- ** content.orders.getbymerchantorderid
    , module Network.Google.Resource.Content.Orders.GetbymerchantOrderid

    -- ** content.orders.gettestordertemplate
    , module Network.Google.Resource.Content.Orders.GettestOrdertemplate

    -- ** content.orders.instorerefundlineitem
    , module Network.Google.Resource.Content.Orders.Instorerefundlineitem

    -- ** content.orders.list
    , module Network.Google.Resource.Content.Orders.List

    -- ** content.orders.refund
    , module Network.Google.Resource.Content.Orders.Refund

    -- ** content.orders.rejectreturnlineitem
    , module Network.Google.Resource.Content.Orders.Rejectreturnlineitem

    -- ** content.orders.returnlineitem
    , module Network.Google.Resource.Content.Orders.Returnlineitem

    -- ** content.orders.returnrefundlineitem
    , module Network.Google.Resource.Content.Orders.Returnrefundlineitem

    -- ** content.orders.setlineitemmetadata
    , module Network.Google.Resource.Content.Orders.Setlineitemmetadata

    -- ** content.orders.shiplineitems
    , module Network.Google.Resource.Content.Orders.Shiplineitems

    -- ** content.orders.updatelineitemshippingdetails
    , module Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails

    -- ** content.orders.updatemerchantorderid
    , module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid

    -- ** content.orders.updateshipment
    , module Network.Google.Resource.Content.Orders.Updateshipment

    -- ** content.pos.custombatch
    , module Network.Google.Resource.Content.Pos.Custombatch

    -- ** content.pos.delete
    , module Network.Google.Resource.Content.Pos.Delete

    -- ** content.pos.get
    , module Network.Google.Resource.Content.Pos.Get

    -- ** content.pos.insert
    , module Network.Google.Resource.Content.Pos.Insert

    -- ** content.pos.inventory
    , module Network.Google.Resource.Content.Pos.Inventory

    -- ** content.pos.list
    , module Network.Google.Resource.Content.Pos.List

    -- ** content.pos.sale
    , module Network.Google.Resource.Content.Pos.Sale

    -- ** content.products.custombatch
    , module Network.Google.Resource.Content.Products.Custombatch

    -- ** content.products.delete
    , module Network.Google.Resource.Content.Products.Delete

    -- ** content.products.get
    , module Network.Google.Resource.Content.Products.Get

    -- ** content.products.insert
    , module Network.Google.Resource.Content.Products.Insert

    -- ** content.products.list
    , module Network.Google.Resource.Content.Products.List

    -- ** content.productstatuses.custombatch
    , module Network.Google.Resource.Content.Productstatuses.Custombatch

    -- ** content.productstatuses.get
    , module Network.Google.Resource.Content.Productstatuses.Get

    -- ** content.productstatuses.list
    , module Network.Google.Resource.Content.Productstatuses.List

    -- ** content.shippingsettings.custombatch
    , module Network.Google.Resource.Content.ShippingSettings.Custombatch

    -- ** content.shippingsettings.get
    , module Network.Google.Resource.Content.ShippingSettings.Get

    -- ** content.shippingsettings.getsupportedcarriers
    , module Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers

    -- ** content.shippingsettings.getsupportedholidays
    , module Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays

    -- ** content.shippingsettings.getsupportedpickupservices
    , module Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices

    -- ** content.shippingsettings.list
    , module Network.Google.Resource.Content.ShippingSettings.List

    -- ** content.shippingsettings.update
    , module Network.Google.Resource.Content.ShippingSettings.Update

    -- * Types

    -- ** OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- ** AccountTax
    , AccountTax
    , accountTax
    , atRules
    , atKind
    , atAccountId

    -- ** OrderinvoicesCreateRefundInvoiceResponse
    , OrderinvoicesCreateRefundInvoiceResponse
    , orderinvoicesCreateRefundInvoiceResponse
    , ocrirKind
    , ocrirExecutionStatus

    -- ** OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- ** OrderReportTransaction
    , OrderReportTransaction
    , orderReportTransaction
    , ortMerchantId
    , ortDisbursementId
    , ortDisbursementCreationDate
    , ortProductAmountWithRemittedTax
    , ortTransactionDate
    , ortDisbursementDate
    , ortMerchantOrderId
    , ortProductAmount
    , ortOrderId
    , ortDisbursementAmount

    -- ** OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- ** ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- ** OrderMerchantProvidedAnnotation
    , OrderMerchantProvidedAnnotation
    , orderMerchantProvidedAnnotation
    , ompaValue
    , ompaKey

    -- ** OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- ** TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference
    , tocMarketingRightsInfo

    -- ** DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- ** OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- ** AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- ** InventoryCustomBatchRequest
    , InventoryCustomBatchRequest
    , inventoryCustomBatchRequest
    , icbrEntries

    -- ** PosSaleResponse
    , PosSaleResponse
    , posSaleResponse
    , psrStoreCode
    , psrKind
    , psrItemId
    , psrQuantity
    , psrTargetCountry
    , psrGtin
    , psrPrice
    , psrContentLanguage
    , psrTimestamp
    , psrSaleId

    -- ** Amount
    , Amount
    , amount
    , aPretax
    , aTax

    -- ** AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- ** OrderReportDisbursement
    , OrderReportDisbursement
    , orderReportDisbursement
    , ordMerchantId
    , ordDisbursementId
    , ordDisbursementCreationDate
    , ordDisbursementDate
    , ordDisbursementAmount

    -- ** UnitInvoice
    , UnitInvoice
    , unitInvoice
    , uiUnitPriceTaxes
    , uiPromotions
    , uiAdditionalCharges
    , uiUnitPricePretax

    -- ** PosSale
    , PosSale
    , posSale
    , psStoreCode
    , psKind
    , psItemId
    , psQuantity
    , psTargetCountry
    , psGtin
    , psPrice
    , psContentLanguage
    , psTimestamp
    , psSaleId

    -- ** AccountStatusItemLevelIssue
    , AccountStatusItemLevelIssue
    , accountStatusItemLevelIssue
    , asiliNumItems
    , asiliResolution
    , asiliDocumentation
    , asiliCode
    , asiliServability
    , asiliAttributeName
    , asiliDescription
    , asiliDetail

    -- ** OrderLegacyPromotionBenefit
    , OrderLegacyPromotionBenefit
    , orderLegacyPromotionBenefit
    , olpbTaxImpact
    , olpbDiscount
    , olpbOfferIds
    , olpbSubType
    , olpbType

    -- ** LiaSettingsRequestGmbAccessResponse
    , LiaSettingsRequestGmbAccessResponse
    , liaSettingsRequestGmbAccessResponse
    , lsrgarKind

    -- ** ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsApprovalPending
    , psdsIntention
    , psdsApprovalStatus

    -- ** AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- ** PostalCodeGroup
    , PostalCodeGroup
    , postalCodeGroup
    , pcgCountry
    , pcgPostalCodeRanges
    , pcgName

    -- ** ProductDestination
    , ProductDestination
    , productDestination
    , pdIntention
    , pdDestinationName

    -- ** DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- ** OrdersCancelTestOrderByCustomerResponse
    , OrdersCancelTestOrderByCustomerResponse
    , ordersCancelTestOrderByCustomerResponse
    , octobcrKind

    -- ** LiaOnDisplayToOrderSettings
    , LiaOnDisplayToOrderSettings
    , liaOnDisplayToOrderSettings
    , lodtosStatus
    , lodtosShippingCostPolicyURL

    -- ** AccountAddress
    , AccountAddress
    , accountAddress
    , aaStreetAddress
    , aaCountry
    , aaPostalCode
    , aaLocality
    , aaRegion

    -- ** OrdersCustomBatchRequestEntry
    , OrdersCustomBatchRequestEntry
    , ordersCustomBatchRequestEntry
    , ocbreMerchantId
    , ocbreCancelLineItem
    , ocbreInStoreRefundLineItem
    , ocbreRefund
    , ocbreUpdateShipment
    , ocbreReturnLineItem
    , ocbreMerchantOrderId
    , ocbreSetLineItemMetadata
    , ocbreReturnRefundLineItem
    , ocbreMethod
    , ocbreUpdateLineItemShippingDetails
    , ocbreShipLineItems
    , ocbreOperationId
    , ocbreOrderId
    , ocbreRejectReturnLineItem
    , ocbreCancel
    , ocbreBatchId

    -- ** OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrAmountPretax
    , orrAmountTax
    , orrReasonText

    -- ** InvoiceSummaryAdditionalChargeSummary
    , InvoiceSummaryAdditionalChargeSummary
    , invoiceSummaryAdditionalChargeSummary
    , isacsTotalAmount
    , isacsType

    -- ** RefundReason
    , RefundReason
    , refundReason
    , rrReasonCode
    , rrDescription

    -- ** OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliAmount
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliAmountPretax
    , ocbrecliProductId
    , ocbrecliAmountTax
    , ocbrecliReasonText

    -- ** OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- ** Datafeed
    , Datafeed
    , datafeed
    , dKind
    , dFormat
    , dAttributeLanguage
    , dTargetCountry
    , dFetchSchedule
    , dName
    , dIntendedDestinations
    , dTargets
    , dId
    , dContentLanguage
    , dContentType
    , dFileName

    -- ** OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- ** AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aLinkStatus
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- ** GmbAccounts
    , GmbAccounts
    , gmbAccounts
    , gaGmbAccounts
    , gaAccountId

    -- ** CustomerReturnReason
    , CustomerReturnReason
    , customerReturnReason
    , crrReasonCode
    , crrDescription

    -- ** AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- ** PosCustomBatchRequest
    , PosCustomBatchRequest
    , posCustomBatchRequest
    , pEntries

    -- ** OrderinvoicesCreateChargeInvoiceRequest
    , OrderinvoicesCreateChargeInvoiceRequest
    , orderinvoicesCreateChargeInvoiceRequest
    , occirShipmentGroupId
    , occirLineItemInvoices
    , occirInvoiceId
    , occirInvoiceSummary
    , occirOperationId

    -- ** TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- ** OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliAnnotations
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityReadyForPickup
    , oliQuantityDelivered
    , oliShippingDetails
    , oliQuantityPending
    , oliCancellations
    , oliQuantityCanceled
    , oliId
    , oliTax
    , oliPrice
    , oliQuantityShipped
    , oliQuantityReturned
    , oliProduct
    , oliReturns

    -- ** MinimumOrderValueTable
    , MinimumOrderValueTable
    , minimumOrderValueTable
    , movtStoreCodeSetWithMovs

    -- ** Service
    , Service
    , service
    , sDeliveryCountry
    , sMinimumOrderValueTable
    , sShipmentType
    , sRateGroups
    , sDeliveryTime
    , sActive
    , sName
    , sCurrency
    , sEligibility
    , sMinimumOrderValue
    , sPickupService

    -- ** ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , proEntries
    , proKind

    -- ** ProductUnitPricingMeasure
    , ProductUnitPricingMeasure
    , productUnitPricingMeasure
    , pupmValue
    , pupmUnit

    -- ** OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrDeliveryDate
    , ousrOperationId

    -- ** OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId
    , oslisProductId

    -- ** OrdersListStatuses
    , OrdersListStatuses (..)

    -- ** OrderreportsListTransactionsResponse
    , OrderreportsListTransactionsResponse
    , orderreportsListTransactionsResponse
    , oltrNextPageToken
    , oltrTransactions
    , oltrKind

    -- ** LiaSettingsCustomBatchResponse
    , LiaSettingsCustomBatchResponse
    , liaSettingsCustomBatchResponse
    , lscbrEntries
    , lscbrKind

    -- ** LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- ** LiaSettingsSetPosDataProviderResponse
    , LiaSettingsSetPosDataProviderResponse
    , liaSettingsSetPosDataProviderResponse
    , lsspdprKind

    -- ** OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliShipmentGroupId
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliShipmentInfos
    , ocbresliLineItems

    -- ** AccountStatus
    , AccountStatus
    , accountStatus
    , asDataQualityIssues
    , asAccountLevelIssues
    , asKind
    , asAccountId
    , asProducts
    , asWebsiteClaimed

    -- ** OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirProductId
    , orlirReasonText

    -- ** ShippingSettingsCustomBatchRequestEntry
    , ShippingSettingsCustomBatchRequestEntry
    , shippingSettingsCustomBatchRequestEntry
    , sscbreMerchantId
    , sscbreAccountId
    , sscbreMethod
    , sscbreShippingSettings
    , sscbreBatchId

    -- ** PosInventoryResponse
    , PosInventoryResponse
    , posInventoryResponse
    , pirStoreCode
    , pirKind
    , pirItemId
    , pirQuantity
    , pirTargetCountry
    , pirGtin
    , pirPrice
    , pirContentLanguage
    , pirTimestamp

    -- ** OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , ordersCustomBatchRequestEntryUpdateLineItemShippingDetails
    , ocbreulisdShipByDate
    , ocbreulisdLineItemId
    , ocbreulisdDeliverByDate
    , ocbreulisdProductId

    -- ** AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , acbrEntries

    -- ** AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- ** LiaSettingsRequestInventoryVerificationResponse
    , LiaSettingsRequestInventoryVerificationResponse
    , liaSettingsRequestInventoryVerificationResponse
    , lsrivrKind

    -- ** OrderinvoicesCreateChargeInvoiceResponse
    , OrderinvoicesCreateChargeInvoiceResponse
    , orderinvoicesCreateChargeInvoiceResponse
    , occirKind
    , occirExecutionStatus

    -- ** DatafeedsFetchNowResponse
    , DatafeedsFetchNowResponse
    , datafeedsFetchNowResponse
    , dfnrKind

    -- ** OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- ** AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , accMerchantId
    , accForce
    , accAccount
    , accAccountId
    , accMethod
    , accLabelIds
    , accOverwrite
    , accBatchId
    , accLinkRequest

    -- ** Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , ocbrecriroReason
    , ocbrecriroDescription

    -- ** OrderPickupDetails
    , OrderPickupDetails
    , orderPickupDetails
    , opdCollectors
    , opdAddress
    , opdLocationId

    -- ** LiaSettingsListResponse
    , LiaSettingsListResponse
    , liaSettingsListResponse
    , lslrNextPageToken
    , lslrKind
    , lslrResources

    -- ** Error'
    , Error'
    , error'
    , eDomain
    , eReason
    , eMessage

    -- ** ProductstatusesListResponse
    , ProductstatusesListResponse
    , productstatusesListResponse
    , plrNextPageToken
    , plrKind
    , plrResources

    -- ** PosCustomBatchResponse
    , PosCustomBatchResponse
    , posCustomBatchResponse
    , posEntries
    , posKind

    -- ** OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- ** OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorCountry
    , octorTestOrder

    -- ** AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auPaymentsManager
    , auOrderManager
    , auEmailAddress
    , auPaymentsAnalyst

    -- ** AccountStatusExampleItem
    , AccountStatusExampleItem
    , accountStatusExampleItem
    , aseiSubmittedValue
    , aseiLink
    , aseiItemId
    , aseiTitle
    , aseiValueOnLandingPage

    -- ** AccountCustomerService
    , AccountCustomerService
    , accountCustomerService
    , acsEmail
    , acsURL
    , acsPhoneNumber

    -- ** OrderreturnsListOrderBy
    , OrderreturnsListOrderBy (..)

    -- ** GmbAccountsGmbAccount
    , GmbAccountsGmbAccount
    , gmbAccountsGmbAccount
    , gagaEmail
    , gagaListingCount
    , gagaName
    , gagaType

    -- ** OrdersInStoreRefundLineItemResponse
    , OrdersInStoreRefundLineItemResponse
    , ordersInStoreRefundLineItemResponse
    , oisrlirKind
    , oisrlirExecutionStatus

    -- ** DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- ** OrderCustomerMarketingRightsInfo
    , OrderCustomerMarketingRightsInfo
    , orderCustomerMarketingRightsInfo
    , ocmriExplicitMarketingPreference
    , ocmriMarketingEmailAddress
    , ocmriLastUpdatedTimestamp

    -- ** MerchantOrderReturnItem
    , MerchantOrderReturnItem
    , merchantOrderReturnItem
    , moriReturnShipmentIds
    , moriMerchantReturnReason
    , moriState
    , moriCustomerReturnReason
    , moriItemId
    , moriProduct

    -- ** AccountStatusAccountLevelIssue
    , AccountStatusAccountLevelIssue
    , accountStatusAccountLevelIssue
    , asaliDestination
    , asaliCountry
    , asaliSeverity
    , asaliDocumentation
    , asaliId
    , asaliTitle
    , asaliDetail

    -- ** Value
    , Value
    , value
    , vPricePercentage
    , vCarrierRateName
    , vFlatRate
    , vSubtableName
    , vNoShipping

    -- ** Installment
    , Installment
    , installment
    , iAmount
    , iMonths

    -- ** PickupServicesPickupService
    , PickupServicesPickupService
    , pickupServicesPickupService
    , pspsCountry
    , pspsServiceName
    , pspsCarrierName

    -- ** DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsMinuteOfHour
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone
    , dfsPaused

    -- ** PosStore
    , PosStore
    , posStore
    , pssStoreCode
    , pssKind
    , pssStoreAddress

    -- ** OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , ocbrEntries

    -- ** LiaSettingsSetInventoryVerificationContactResponse
    , LiaSettingsSetInventoryVerificationContactResponse
    , liaSettingsSetInventoryVerificationContactResponse
    , lssivcrKind

    -- ** ShippingSettingsGetSupportedCarriersResponse
    , ShippingSettingsGetSupportedCarriersResponse
    , shippingSettingsGetSupportedCarriersResponse
    , ssgscrKind
    , ssgscrCarriers

    -- ** OrdersCustomBatchRequestEntrySetLineItemMetadata
    , OrdersCustomBatchRequestEntrySetLineItemMetadata
    , ordersCustomBatchRequestEntrySetLineItemMetadata
    , ocbreslimAnnotations
    , ocbreslimLineItemId
    , ocbreslimProductId

    -- ** PosDataProvidersPosDataProvider
    , PosDataProvidersPosDataProvider
    , posDataProvidersPosDataProvider
    , pdppdpProviderId
    , pdppdpFullName
    , pdppdpDisplayName

    -- ** HolidaysHoliday
    , HolidaysHoliday
    , holidaysHoliday
    , hhDeliveryGuaranteeHour
    , hhDate
    , hhDeliveryGuaranteeDate
    , hhCountryCode
    , hhId
    , hhType

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- ** OrderPickupDetailsCollector
    , OrderPickupDetailsCollector
    , orderPickupDetailsCollector
    , opdcName
    , opdcPhoneNumber

    -- ** ProductStatusDataQualityIssue
    , ProductStatusDataQualityIssue
    , productStatusDataQualityIssue
    , psdqiDestination
    , psdqiLocation
    , psdqiFetchStatus
    , psdqiSeverity
    , psdqiValueProvided
    , psdqiId
    , psdqiValueOnLandingPage
    , psdqiTimestamp
    , psdqiDetail

    -- ** AccountBusinessInformation
    , AccountBusinessInformation
    , accountBusinessInformation
    , abiAddress
    , abiPhoneNumber
    , abiCustomerService

    -- ** CarriersCarrier
    , CarriersCarrier
    , carriersCarrier
    , ccCountry
    , ccName
    , ccServices

    -- ** CarrierRate
    , CarrierRate
    , carrierRate
    , crOriginPostalCode
    , crFlatAdjustment
    , crCarrierService
    , crName
    , crPercentageAdjustment
    , crCarrierName

    -- ** ShippingSettingsListResponse
    , ShippingSettingsListResponse
    , shippingSettingsListResponse
    , sslrNextPageToken
    , sslrKind
    , sslrResources

    -- ** OrdersCreateTestReturnResponse
    , OrdersCreateTestReturnResponse
    , ordersCreateTestReturnResponse
    , octrrKind
    , octrrReturnId

    -- ** OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirShipmentGroupId
    , oslirTrackingId
    , oslirShipmentId
    , oslirShipmentInfos
    , oslirLineItems
    , oslirOperationId

    -- ** OrderreturnsListResponse
    , OrderreturnsListResponse
    , orderreturnsListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- ** AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- ** OrdersUpdateLineItemShippingDetailsRequest
    , OrdersUpdateLineItemShippingDetailsRequest
    , ordersUpdateLineItemShippingDetailsRequest
    , oulisdrShipByDate
    , oulisdrLineItemId
    , oulisdrDeliverByDate
    , oulisdrOperationId
    , oulisdrProductId

    -- ** MerchantOrderReturn
    , MerchantOrderReturn
    , merchantOrderReturn
    , morReturnShipments
    , morMerchantOrderId
    , morReturnItems
    , morCreationDate
    , morOrderId
    , morOrderReturnId

    -- ** ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- ** PosCustomBatchRequestEntry
    , PosCustomBatchRequestEntry
    , posCustomBatchRequestEntry
    , pcbreMerchantId
    , pcbreStoreCode
    , pcbreTargetMerchantId
    , pcbreMethod
    , pcbreStore
    , pcbreInventory
    , pcbreSale
    , pcbreBatchId

    -- ** OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osScheduledDeliveryDetails
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- ** AccountsLinkResponse
    , AccountsLinkResponse
    , accountsLinkResponse
    , alrlKind

    -- ** OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- ** TransitTable
    , TransitTable
    , transitTable
    , ttTransitTimeLabels
    , ttPostalCodeGroupNames
    , ttRows

    -- ** Account
    , Account
    , account
    , aaUsers
    , aaYouTubeChannelLinks
    , aaKind
    , aaSellerId
    , aaName
    , aaBusinessInformation
    , aaReviewsURL
    , aaId
    , aaWebsiteURL
    , aaAdwordsLinks
    , aaGoogleMyBusinessLink
    , aaAdultContent

    -- ** InventorySetRequest
    , InventorySetRequest
    , inventorySetRequest
    , isrCustomLabel1
    , isrLoyaltyPoints
    , isrCustomLabel0
    , isrQuantity
    , isrInstallment
    , isrSalePrice
    , isrCustomLabel3
    , isrAvailability
    , isrPickup
    , isrSalePriceEffectiveDate
    , isrCustomLabel2
    , isrSellOnGoogleQuantity
    , isrPrice
    , isrInstoreProductLocation
    , isrCustomLabel4

    -- ** ShipmentTrackingInfo
    , ShipmentTrackingInfo
    , shipmentTrackingInfo
    , stiCarrier
    , stiTrackingNumber

    -- ** OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirAmount
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirAmountPretax
    , oclirProductId
    , oclirAmountTax
    , oclirReasonText

    -- ** ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- ** AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccountId
    , acbrecDestinations
    , acbrecMethod
    , acbrecBatchId

    -- ** DeliveryTime
    , DeliveryTime
    , deliveryTime
    , dtTransitTimeTable
    , dtHandlingBusinessDayConfig
    , dtTransitBusinessDayConfig
    , dtHolidayCutoffs
    , dtMinTransitTimeInDays
    , dtCutoffTime
    , dtMinHandlingTimeInDays
    , dtMaxTransitTimeInDays
    , dtMaxHandlingTimeInDays

    -- ** LiaCountrySettings
    , LiaCountrySettings
    , liaCountrySettings
    , lcsPosDataProvider
    , lcsCountry
    , lcsStorePickupActive
    , lcsInventory
    , lcsAbout
    , lcsHostedLocalStorefrontActive
    , lcsOnDisplayToOrder

    -- ** OrdersReturnRefundLineItemResponse
    , OrdersReturnRefundLineItemResponse
    , ordersReturnRefundLineItemResponse
    , orrlirKind
    , orrlirExecutionStatus

    -- ** OrdersCustomBatchRequestEntryRejectReturnLineItem
    , OrdersCustomBatchRequestEntryRejectReturnLineItem
    , ordersCustomBatchRequestEntryRejectReturnLineItem
    , ocbrerrliQuantity
    , ocbrerrliLineItemId
    , ocbrerrliReason
    , ocbrerrliProductId
    , ocbrerrliReasonText

    -- ** ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pKind
    , pProductStatus
    , pErrors
    , pBatchId

    -- ** ShippingSettingsGetSupportedHolidaysResponse
    , ShippingSettingsGetSupportedHolidaysResponse
    , shippingSettingsGetSupportedHolidaysResponse
    , ssgshrKind
    , ssgshrHolidays

    -- ** LiaPosDataProvider
    , LiaPosDataProvider
    , liaPosDataProvider
    , lpdpPosExternalAccountId
    , lpdpPosDataProviderId

    -- ** OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- ** DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- ** LiaSettings
    , LiaSettings
    , liaSettings
    , lsCountrySettings
    , lsKind
    , lsAccountId

    -- ** TransitTableTransitTimeRow
    , TransitTableTransitTimeRow
    , transitTableTransitTimeRow
    , ttttrValues

    -- ** ProductShipping
    , ProductShipping
    , productShipping
    , pService
    , pLocationGroupName
    , pCountry
    , pPostalCode
    , pPrice
    , pRegion
    , pLocationId

    -- ** ShippingSettingsCustomBatchRequest
    , ShippingSettingsCustomBatchRequest
    , shippingSettingsCustomBatchRequest
    , sscbrEntries

    -- ** LiaSettingsCustomBatchResponseEntry
    , LiaSettingsCustomBatchResponseEntry
    , liaSettingsCustomBatchResponseEntry
    , lscbreGmbAccounts
    , lscbreKind
    , lscbreLiaSettings
    , lscbreErrors
    , lscbrePosDataProviders
    , lscbreBatchId

    -- ** AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , aEntries

    -- ** PosCustomBatchResponseEntry
    , PosCustomBatchResponseEntry
    , posCustomBatchResponseEntry
    , pcbrecKind
    , pcbrecStore
    , pcbrecInventory
    , pcbrecErrors
    , pcbrecSale
    , pcbrecBatchId

    -- ** CustomGroup
    , CustomGroup
    , customGroup
    , cgName
    , cgAttributes

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , oReason
    , oDescription

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , oNextPageToken
    , oKind
    , oResources

    -- ** OrdersUpdateLineItemShippingDetailsResponse
    , OrdersUpdateLineItemShippingDetailsResponse
    , ordersUpdateLineItemShippingDetailsResponse
    , oulisdrKind
    , oulisdrExecutionStatus

    -- ** Headers
    , Headers
    , headers
    , hNumberOfItems
    , hPostalCodeGroupNames
    , hPrices
    , hWeights
    , hLocations

    -- ** UnitInvoiceAdditionalCharge
    , UnitInvoiceAdditionalCharge
    , unitInvoiceAdditionalCharge
    , uiacAdditionalChargePromotions
    , uiacAdditionalChargeAmount
    , uiacType

    -- ** OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- ** UnitInvoiceTaxLine
    , UnitInvoiceTaxLine
    , unitInvoiceTaxLine
    , uitlTaxName
    , uitlTaxType
    , uitlTaxAmount

    -- ** OrdersCreateTestReturnRequest
    , OrdersCreateTestReturnRequest
    , ordersCreateTestReturnRequest
    , octrrItems

    -- ** ShippingSettings
    , ShippingSettings
    , shippingSettings
    , ssPostalCodeGroups
    , ssAccountId
    , ssServices

    -- ** ProductAmount
    , ProductAmount
    , productAmount
    , paRemittedTaxAmount
    , paTaxAmount
    , paPriceAmount

    -- ** PostalCodeRange
    , PostalCodeRange
    , postalCodeRange
    , pcrPostalCodeRangeBegin
    , pcrPostalCodeRangeEnd

    -- ** OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- ** ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , pcbrcEntries

    -- ** AccountYouTubeChannelLink
    , AccountYouTubeChannelLink
    , accountYouTubeChannelLink
    , aytclStatus
    , aytclChannelId

    -- ** OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- ** LiaAboutPageSettings
    , LiaAboutPageSettings
    , liaAboutPageSettings
    , lapsStatus
    , lapsURL

    -- ** LiaSettingsCustomBatchRequest
    , LiaSettingsCustomBatchRequest
    , liaSettingsCustomBatchRequest
    , lEntries

    -- ** CustomAttribute
    , CustomAttribute
    , customAttribute
    , caValue
    , caName
    , caType
    , caUnit

    -- ** PosInventoryRequest
    , PosInventoryRequest
    , posInventoryRequest
    , posStoreCode
    , posItemId
    , posQuantity
    , posTargetCountry
    , posGtin
    , posPrice
    , posContentLanguage
    , posTimestamp

    -- ** AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acccEntries
    , acccKind

    -- ** ShippingSettingsCustomBatchResponseEntry
    , ShippingSettingsCustomBatchResponseEntry
    , shippingSettingsCustomBatchResponseEntry
    , sKind
    , sShippingSettings
    , sErrors
    , sBatchId

    -- ** ProductStatus
    , ProductStatus
    , productStatus
    , ppDataQualityIssues
    , ppKind
    , ppLink
    , ppDestinationStatuses
    , ppLastUpdateDate
    , ppCreationDate
    , ppTitle
    , ppProduct
    , ppGoogleExpirationDate
    , ppProductId
    , ppItemLevelIssues

    -- ** AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- ** OrdersSetLineItemMetadataResponse
    , OrdersSetLineItemMetadataResponse
    , ordersSetLineItemMetadataResponse
    , oslimrKind
    , oslimrExecutionStatus

    -- ** AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , accEntries

    -- ** ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , prorMerchantId
    , prorMethod
    , prorProduct
    , prorProductId
    , prorBatchId

    -- ** AccountGoogleMyBusinessLink
    , AccountGoogleMyBusinessLink
    , accountGoogleMyBusinessLink
    , agmblGmbEmail
    , agmblStatus

    -- ** DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dCountry
    , dMethod
    , dDatafeedId
    , dLanguage
    , dBatchId

    -- ** Xgafv
    , Xgafv (..)

    -- ** OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference
    , ocInvoiceReceivingEmail
    , ocMarketingRightsInfo

    -- ** InventoryCustomBatchResponseEntry
    , InventoryCustomBatchResponseEntry
    , inventoryCustomBatchResponseEntry
    , icbreKind
    , icbreErrors
    , icbreBatchId

    -- ** LocationIdSet
    , LocationIdSet
    , locationIdSet
    , lisLocationIds

    -- ** Row
    , Row
    , row
    , rCells

    -- ** Inventory
    , Inventory
    , inventory
    , iCustomLabel1
    , iLoyaltyPoints
    , iCustomLabel0
    , iKind
    , iQuantity
    , iInstallment
    , iSalePrice
    , iCustomLabel3
    , iAvailability
    , iPickup
    , iSalePriceEffectiveDate
    , iCustomLabel2
    , iSellOnGoogleQuantity
    , iPrice
    , iInstoreProductLocation
    , iCustomLabel4

    -- ** OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- ** OrdersRejectReturnLineItemRequest
    , OrdersRejectReturnLineItemRequest
    , ordersRejectReturnLineItemRequest
    , orrlirQuantity
    , orrlirLineItemId
    , orrlirReason
    , orrlirOperationId
    , orrlirProductId
    , orrlirReasonText

    -- ** OrdersCustomBatchRequestEntryInStoreRefundLineItem
    , OrdersCustomBatchRequestEntryInStoreRefundLineItem
    , ordersCustomBatchRequestEntryInStoreRefundLineItem
    , ocbreisrliQuantity
    , ocbreisrliLineItemId
    , ocbreisrliReason
    , ocbreisrliAmountPretax
    , ocbreisrliProductId
    , ocbreisrliAmountTax
    , ocbreisrliReasonText

    -- ** OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- ** ReturnShipment
    , ReturnShipment
    , returnShipment
    , rsState
    , rsShipmentTrackingInfos
    , rsReturnMethodType
    , rsShipmentId
    , rsCreationDate
    , rsDeliveryDate
    , rsShippingDate

    -- ** OrdersCancelTestOrderByCustomerRequest
    , OrdersCancelTestOrderByCustomerRequest
    , ordersCancelTestOrderByCustomerRequest
    , octobcrReason

    -- ** TestOrderCustomerMarketingRightsInfo
    , TestOrderCustomerMarketingRightsInfo
    , testOrderCustomerMarketingRightsInfo
    , tocmriExplicitMarketingPreference
    , tocmriLastUpdatedTimestamp

    -- ** ProductStatusItemLevelIssue
    , ProductStatusItemLevelIssue
    , productStatusItemLevelIssue
    , psiliDestination
    , psiliResolution
    , psiliDocumentation
    , psiliCode
    , psiliServability
    , psiliAttributeName
    , psiliDescription
    , psiliDetail

    -- ** OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- ** OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , ordKind
    , ordExecutionStatus
    , ordErrors
    , ordOrder
    , ordBatchId

    -- ** RateGroup
    , RateGroup
    , rateGroup
    , rgCarrierRates
    , rgName
    , rgApplicableShippingLabels
    , rgMainTable
    , rgSingleValue
    , rgSubtables

    -- ** AccountStatusProducts
    , AccountStatusProducts
    , accountStatusProducts
    , aspDestination
    , aspCountry
    , aspChannel
    , aspStatistics
    , aspItemLevelIssues

    -- ** Price
    , Price
    , price
    , pValue
    , pCurrency

    -- ** OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate
    , olisdType

    -- ** PickupCarrierService
    , PickupCarrierService
    , pickupCarrierService
    , pcsServiceName
    , pcsCarrierName

    -- ** DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- ** InvoiceSummary
    , InvoiceSummary
    , invoiceSummary
    , isMerchantBalance
    , isCustomerBalance
    , isGoogleBalance
    , isProductTotal
    , isAdditionalChargeSummaries
    , isPromotionSummaries

    -- ** PosListResponse
    , PosListResponse
    , posListResponse
    , plrlKind
    , plrlResources

    -- ** OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- ** OrderLineItemProductFee
    , OrderLineItemProductFee
    , orderLineItemProductFee
    , olipfAmount
    , olipfName

    -- ** BusinessDayConfig
    , BusinessDayConfig
    , businessDayConfig
    , bdcBusinessDays

    -- ** OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- ** OrdersSetLineItemMetadataRequest
    , OrdersSetLineItemMetadataRequest
    , ordersSetLineItemMetadataRequest
    , oslimrAnnotations
    , oslimrLineItemId
    , oslimrOperationId
    , oslimrProductId

    -- ** OrdersRejectReturnLineItemResponse
    , OrdersRejectReturnLineItemResponse
    , ordersRejectReturnLineItemResponse
    , orrlirrKind
    , orrlirrExecutionStatus

    -- ** TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toPredefinedPickupDetails
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toEnableOrderinvoices
    , toPaymentMethod
    , toPromotions
    , toNotificationMode
    , toShippingCost

    -- ** CutoffTime
    , CutoffTime
    , cutoffTime
    , ctHour
    , ctTimezone
    , ctMinute

    -- ** DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- ** OrderRefund
    , OrderRefund
    , orderRefund
    , ordAmount
    , ordActor
    , ordReason
    , ordCreationDate
    , ordReasonText

    -- ** TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipFees
    , tolipChannel
    , tolipBrand
    , tolipTargetCountry
    , tolipGtin
    , tolipItemGroupId
    , tolipOfferId
    , tolipPrice
    , tolipVariantAttributes
    , tolipTitle
    , tolipContentLanguage
    , tolipMpn
    , tolipCondition

    -- ** OrdersCustomBatchRequestEntryReturnRefundLineItem
    , OrdersCustomBatchRequestEntryReturnRefundLineItem
    , ordersCustomBatchRequestEntryReturnRefundLineItem
    , ocbrerrlicQuantity
    , ocbrerrlicLineItemId
    , ocbrerrlicReason
    , ocbrerrlicAmountPretax
    , ocbrerrlicProductId
    , ocbrerrlicAmountTax
    , ocbrerrlicReasonText

    -- ** AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- ** InventoryCustomBatchRequestEntry
    , InventoryCustomBatchRequestEntry
    , inventoryCustomBatchRequestEntry
    , iMerchantId
    , iStoreCode
    , iInventory
    , iProductId
    , iBatchId

    -- ** OrderLegacyPromotion
    , OrderLegacyPromotion
    , orderLegacyPromotion
    , olpEffectiveDates
    , olpGenericRedemptionCode
    , olpRedemptionChannel
    , olpBenefits
    , olpLongTitle
    , olpId
    , olpProductApplicability

    -- ** AccountsClaimWebsiteResponse
    , AccountsClaimWebsiteResponse
    , accountsClaimWebsiteResponse
    , acwrKind

    -- ** OrderAddress
    , OrderAddress
    , orderAddress
    , oaRecipientName
    , oaStreetAddress
    , oaCountry
    , oaPostalCode
    , oaLocality
    , oaIsPostOfficeBox
    , oaFullAddress
    , oaRegion

    -- ** OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ocbrectrriQuantity
    , ocbrectrriLineItemId

    -- ** ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- ** LiaSettingsGetAccessibleGmbAccountsResponse
    , LiaSettingsGetAccessibleGmbAccountsResponse
    , liaSettingsGetAccessibleGmbAccountsResponse
    , lsgagarGmbAccounts
    , lsgagarKind
    , lsgagarAccountId

    -- ** DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- ** TransitTableTransitTimeRowTransitTimeValue
    , TransitTableTransitTimeRowTransitTimeValue
    , transitTableTransitTimeRowTransitTimeValue
    , ttttrttvMinTransitTimeInDays
    , ttttrttvMaxTransitTimeInDays

    -- ** AccountStatusStatistics
    , AccountStatusStatistics
    , accountStatusStatistics
    , assPending
    , assExpiring
    , assActive
    , assDisApproved

    -- ** ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , pcbre1Kind
    , pcbre1Product
    , pcbre1Errors
    , pcbre1BatchId

    -- ** OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- ** Product
    , Product
    , product
    , prorDisplayAdsLink
    , prorCustomLabel1
    , prorShippingWidth
    , prorCustomGroups
    , prorImageLink
    , prorDisplayAdsValue
    , prorCanonicalLink
    , prorLoyaltyPoints
    , prorAdditionalImageLinks
    , prorValidatedDestinations
    , prorColor
    , prorCustomLabel0
    , prorKind
    , prorMinHandlingTime
    , prorMultipack
    , prorPattern
    , prorLink
    , prorSizeSystem
    , prorUnitPricingBaseMeasure
    , prorTaxes
    , prorMaterial
    , prorInstallment
    , prorChannel
    , prorProductType
    , prorIdentifierExists
    , prorOnlineOnly
    , prorBrand
    , prorUnitPricingMeasure
    , prorSalePrice
    , prorCostOfGoodsSold
    , prorShippingLength
    , prorCustomLabel3
    , prorMaxHandlingTime
    , prorWarnings
    , prorAdditionalProductTypes
    , prorAvailability
    , prorMinEnergyEfficiencyClass
    , prorTargetCountry
    , prorShippingLabel
    , prorCustomAttributes
    , prorGtin
    , prorAgeGroup
    , prorDisplayAdsTitle
    , prorMaxEnergyEfficiencyClass
    , prorGender
    , prorDestinations
    , prorExpirationDate
    , prorItemGroupId
    , prorAdwordsGrouping
    , prorSalePriceEffectiveDate
    , prorCustomLabel2
    , prorGoogleProductCategory
    , prorShipping
    , prorAdwordsRedirect
    , prorShippingWeight
    , prorSellOnGoogleQuantity
    , prorShippingHeight
    , prorAvailabilityDate
    , prorSource
    , prorOfferId
    , prorId
    , prorAdwordsLabels
    , prorPrice
    , prorPromotionIds
    , prorSizeType
    , prorMobileLink
    , prorTitle
    , prorAdult
    , prorContentLanguage
    , prorAspects
    , prorEnergyEfficiencyClass
    , prorDisplayAdsSimilarIds
    , prorMpn
    , prorCondition
    , prorSizes
    , prorIsBundle
    , prorDescription
    , prorCustomLabel4
    , prorDisplayAdsId

    -- ** LiaSettingsCustomBatchRequestEntry
    , LiaSettingsCustomBatchRequestEntry
    , liaSettingsCustomBatchRequestEntry
    , lGmbEmail
    , lContactEmail
    , lMerchantId
    , lCountry
    , lLiaSettings
    , lAccountId
    , lMethod
    , lContactName
    , lPosExternalAccountId
    , lPosDataProviderId
    , lBatchId

    -- ** Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- ** LiaInventorySettings
    , LiaInventorySettings
    , liaInventorySettings
    , lisInventoryVerificationContactName
    , lisStatus
    , lisInventoryVerificationContactEmail
    , lisInventoryVerificationContactStatus

    -- ** AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , aaAccountStatus
    , aaErrors
    , aaBatchId

    -- ** InventorySetResponse
    , InventorySetResponse
    , inventorySetResponse
    , isrKind

    -- ** OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- ** HolidayCutoff
    , HolidayCutoff
    , holidayCutoff
    , hcDeadlineHour
    , hcDeadlineTimezone
    , hcVisibleFromDate
    , hcHolidayId
    , hcDeadlineDate

    -- ** TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- ** MinimumOrderValueTableStoreCodeSetWithMov
    , MinimumOrderValueTableStoreCodeSetWithMov
    , minimumOrderValueTableStoreCodeSetWithMov
    , movtscswmValue
    , movtscswmStoreCodes

    -- ** ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , p1MerchantId
    , p1Destinations
    , p1Method
    , p1IncludeAttributes
    , p1ProductId
    , p1BatchId

    -- ** ShippingSettingsCustomBatchResponse
    , ShippingSettingsCustomBatchResponse
    , shippingSettingsCustomBatchResponse
    , shiEntries
    , shiKind

    -- ** OrdersReturnRefundLineItemRequest
    , OrdersReturnRefundLineItemRequest
    , ordersReturnRefundLineItemRequest
    , orrlirrQuantity
    , orrlirrLineItemId
    , orrlirrReason
    , orrlirrOperationId
    , orrlirrAmountPretax
    , orrlirrProductId
    , orrlirrAmountTax
    , orrlirrReasonText

    -- ** ShipmentInvoiceLineItemInvoice
    , ShipmentInvoiceLineItemInvoice
    , shipmentInvoiceLineItemInvoice
    , siliiUnitInvoice
    , siliiShipmentUnitIds
    , siliiLineItemId
    , siliiProductId

    -- ** OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ocbreslisiCarrier
    , ocbreslisiTrackingId
    , ocbreslisiShipmentId

    -- ** ProductAspect
    , ProductAspect
    , productAspect
    , paIntention
    , paAspectName
    , paDestinationName

    -- ** AccountsLinkRequest
    , AccountsLinkRequest
    , accountsLinkRequest
    , alrAction
    , alrLinkedAccountId
    , alrLinkType

    -- ** Promotion
    , Promotion
    , promotion
    , pPromotionAmount
    , pPromotionId

    -- ** DatafeedTarget
    , DatafeedTarget
    , datafeedTarget
    , dtIncludedDestinations
    , dtExcludedDestinations
    , dtCountry
    , dtLanguage

    -- ** OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- ** OrderreportsListDisbursementsResponse
    , OrderreportsListDisbursementsResponse
    , orderreportsListDisbursementsResponse
    , oldrNextPageToken
    , oldrKind
    , oldrDisbursements

    -- ** InventoryPickup
    , InventoryPickup
    , inventoryPickup
    , ipPickupSla
    , ipPickupMethod

    -- ** DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- ** OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- ** PosSaleRequest
    , PosSaleRequest
    , posSaleRequest
    , psrsStoreCode
    , psrsItemId
    , psrsQuantity
    , psrsTargetCountry
    , psrsGtin
    , psrsPrice
    , psrsContentLanguage
    , psrsTimestamp
    , psrsSaleId

    -- ** Table
    , Table
    , table
    , tRows
    , tName
    , tColumnHeaders
    , tRowHeaders

    -- ** Order
    , Order
    , order
    , ord1Status
    , ord1MerchantId
    , ord1Refunds
    , ord1Kind
    , ord1LineItems
    , ord1Shipments
    , ord1NetAmount
    , ord1PlacedDate
    , ord1DeliveryDetails
    , ord1ShippingOption
    , ord1MerchantOrderId
    , ord1Acknowledged
    , ord1ShippingCostTax
    , ord1Customer
    , ord1Id
    , ord1PaymentMethod
    , ord1Promotions
    , ord1ChannelType
    , ord1PickupDetails
    , ord1TaxCollector
    , ord1PaymentStatus
    , ord1ShippingCost

    -- ** InventoryCustomBatchResponse
    , InventoryCustomBatchResponse
    , inventoryCustomBatchResponse
    , invEntries
    , invKind

    -- ** OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipFees
    , olipChannel
    , olipBrand
    , olipTargetCountry
    , olipGtin
    , olipItemGroupId
    , olipOfferId
    , olipId
    , olipPrice
    , olipVariantAttributes
    , olipTitle
    , olipContentLanguage
    , olipMpn
    , olipCondition

    -- ** AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , acccAccountTax
    , acccMerchantId
    , acccAccountId
    , acccMethod
    , acccBatchId

    -- ** ShippingSettingsGetSupportedPickupServicesResponse
    , ShippingSettingsGetSupportedPickupServicesResponse
    , shippingSettingsGetSupportedPickupServicesResponse
    , ssgspsrKind
    , ssgspsrPickupServices

    -- ** DatafeedStatusError
    , DatafeedStatusError
    , datafeedStatusError
    , dseCount
    , dseCode
    , dseMessage
    , dseExamples

    -- ** ProductsCustomBatchRequest
    , ProductsCustomBatchRequest
    , productsCustomBatchRequest
    , ppEntries

    -- ** OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliProductId
    , ocbrerliReasonText

    -- ** PosDataProviders
    , PosDataProviders
    , posDataProviders
    , pdpCountry
    , pdpPosDataProviders

    -- ** PosInventory
    , PosInventory
    , posInventory
    , piStoreCode
    , piKind
    , piItemId
    , piQuantity
    , piTargetCountry
    , piGtin
    , piPrice
    , piContentLanguage
    , piTimestamp

    -- ** OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId
    , ocbreusDeliveryDate

    -- ** LiaSettingsListPosDataProvidersResponse
    , LiaSettingsListPosDataProvidersResponse
    , liaSettingsListPosDataProvidersResponse
    , lslpdprKind
    , lslpdprPosDataProviders

    -- ** OrderinvoicesCreateRefundInvoiceRequest
    , OrderinvoicesCreateRefundInvoiceRequest
    , orderinvoicesCreateRefundInvoiceRequest
    , ocrirRefundOnlyOption
    , ocrirInvoiceId
    , ocrirShipmentInvoices
    , ocrirOperationId
    , ocrirReturnOption

    -- ** DatafeedStatus
    , DatafeedStatus
    , datafeedStatus
    , dsItemsTotal
    , dsCountry
    , dsKind
    , dsWarnings
    , dsDatafeedId
    , dsProcessingStatus
    , dsLanguage
    , dsLastUploadDate
    , dsItemsValid
    , dsErrors

    -- ** DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- ** AccountStatusDataQualityIssue
    , AccountStatusDataQualityIssue
    , accountStatusDataQualityIssue
    , asdqiDestination
    , asdqiSubmittedValue
    , asdqiLocation
    , asdqiCountry
    , asdqiDisplayedValue
    , asdqiNumItems
    , asdqiSeverity
    , asdqiExampleItems
    , asdqiLastChecked
    , asdqiId
    , asdqiDetail

    -- ** OrdersInStoreRefundLineItemRequest
    , OrdersInStoreRefundLineItemRequest
    , ordersInStoreRefundLineItemRequest
    , oisrlirQuantity
    , oisrlirLineItemId
    , oisrlirReason
    , oisrlirOperationId
    , oisrlirAmountPretax
    , oisrlirProductId
    , oisrlirAmountTax
    , oisrlirReasonText

    -- ** AccountsCustomBatchRequestEntryLinkRequest
    , AccountsCustomBatchRequestEntryLinkRequest
    , accountsCustomBatchRequestEntryLinkRequest
    , acbrelrAction
    , acbrelrLinkedAccountId
    , acbrelrLinkType

    -- ** ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- ** DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- ** OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerAmountPretax
    , ocbrerAmountTax
    , ocbrerReasonText

    -- ** DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- ** ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plr1NextPageToken
    , plr1Kind
    , plr1Resources

    -- ** AccountAdwordsLink
    , AccountAdwordsLink
    , accountAdwordsLink
    , aalStatus
    , aalAdwordsId

    -- ** ShipmentInvoice
    , ShipmentInvoice
    , shipmentInvoice
    , siShipmentGroupId
    , siLineItemInvoices
    , siInvoiceSummary

    -- ** OrderShipmentScheduledDeliveryDetails
    , OrderShipmentScheduledDeliveryDetails
    , orderShipmentScheduledDeliveryDetails
    , ossddScheduledDate
    , ossddCarrierPhoneNumber

    -- ** OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- ** OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ocbrcEntries
    , ocbrcKind
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Content.Accounts.AuthInfo
import Network.Google.Resource.Content.Accounts.Claimwebsite
import Network.Google.Resource.Content.Accounts.Custombatch
import Network.Google.Resource.Content.Accounts.Delete
import Network.Google.Resource.Content.Accounts.Get
import Network.Google.Resource.Content.Accounts.Insert
import Network.Google.Resource.Content.Accounts.Link
import Network.Google.Resource.Content.Accounts.List
import Network.Google.Resource.Content.Accounts.Update
import Network.Google.Resource.Content.Accountstatuses.Custombatch
import Network.Google.Resource.Content.Accountstatuses.Get
import Network.Google.Resource.Content.Accountstatuses.List
import Network.Google.Resource.Content.Accounttax.Custombatch
import Network.Google.Resource.Content.Accounttax.Get
import Network.Google.Resource.Content.Accounttax.List
import Network.Google.Resource.Content.Accounttax.Update
import Network.Google.Resource.Content.Datafeeds.Custombatch
import Network.Google.Resource.Content.Datafeeds.Delete
import Network.Google.Resource.Content.Datafeeds.Fetchnow
import Network.Google.Resource.Content.Datafeeds.Get
import Network.Google.Resource.Content.Datafeeds.Insert
import Network.Google.Resource.Content.Datafeeds.List
import Network.Google.Resource.Content.Datafeeds.Update
import Network.Google.Resource.Content.Datafeedstatuses.Custombatch
import Network.Google.Resource.Content.Datafeedstatuses.Get
import Network.Google.Resource.Content.Datafeedstatuses.List
import Network.Google.Resource.Content.Inventory.Custombatch
import Network.Google.Resource.Content.Inventory.Set
import Network.Google.Resource.Content.LiaSettings.Custombatch
import Network.Google.Resource.Content.LiaSettings.Get
import Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
import Network.Google.Resource.Content.LiaSettings.List
import Network.Google.Resource.Content.LiaSettings.ListposDataproviders
import Network.Google.Resource.Content.LiaSettings.RequestgmbAccess
import Network.Google.Resource.Content.LiaSettings.Requestinventoryverification
import Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact
import Network.Google.Resource.Content.LiaSettings.SetposDataprovider
import Network.Google.Resource.Content.LiaSettings.Update
import Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
import Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice
import Network.Google.Resource.Content.Orderreports.Listdisbursements
import Network.Google.Resource.Content.Orderreports.Listtransactions
import Network.Google.Resource.Content.Orderreturns.Get
import Network.Google.Resource.Content.Orderreturns.List
import Network.Google.Resource.Content.Orders.Acknowledge
import Network.Google.Resource.Content.Orders.AdvancetestOrder
import Network.Google.Resource.Content.Orders.Cancel
import Network.Google.Resource.Content.Orders.Cancellineitem
import Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
import Network.Google.Resource.Content.Orders.CreatetestOrder
import Network.Google.Resource.Content.Orders.Createtestreturn
import Network.Google.Resource.Content.Orders.Custombatch
import Network.Google.Resource.Content.Orders.Get
import Network.Google.Resource.Content.Orders.GetbymerchantOrderid
import Network.Google.Resource.Content.Orders.GettestOrdertemplate
import Network.Google.Resource.Content.Orders.Instorerefundlineitem
import Network.Google.Resource.Content.Orders.List
import Network.Google.Resource.Content.Orders.Refund
import Network.Google.Resource.Content.Orders.Rejectreturnlineitem
import Network.Google.Resource.Content.Orders.Returnlineitem
import Network.Google.Resource.Content.Orders.Returnrefundlineitem
import Network.Google.Resource.Content.Orders.Setlineitemmetadata
import Network.Google.Resource.Content.Orders.Shiplineitems
import Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
import Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
import Network.Google.Resource.Content.Orders.Updateshipment
import Network.Google.Resource.Content.Pos.Custombatch
import Network.Google.Resource.Content.Pos.Delete
import Network.Google.Resource.Content.Pos.Get
import Network.Google.Resource.Content.Pos.Insert
import Network.Google.Resource.Content.Pos.Inventory
import Network.Google.Resource.Content.Pos.List
import Network.Google.Resource.Content.Pos.Sale
import Network.Google.Resource.Content.Products.Custombatch
import Network.Google.Resource.Content.Products.Delete
import Network.Google.Resource.Content.Products.Get
import Network.Google.Resource.Content.Products.Insert
import Network.Google.Resource.Content.Products.List
import Network.Google.Resource.Content.Productstatuses.Custombatch
import Network.Google.Resource.Content.Productstatuses.Get
import Network.Google.Resource.Content.Productstatuses.List
import Network.Google.Resource.Content.ShippingSettings.Custombatch
import Network.Google.Resource.Content.ShippingSettings.Get
import Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers
import Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays
import Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices
import Network.Google.Resource.Content.ShippingSettings.List
import Network.Google.Resource.Content.ShippingSettings.Update
import Network.Google.ShoppingContent.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Content API for Shopping service.
type ShoppingContentAPI =
     AccounttaxListResource :<|> AccounttaxGetResource
       :<|> AccounttaxCustombatchResource
       :<|> AccounttaxUpdateResource
       :<|> OrderinvoicesCreatechargeinvoiceResource
       :<|> OrderinvoicesCreaterefundinvoiceResource
       :<|> AccountsInsertResource
       :<|> AccountsListResource
       :<|> AccountsLinkResource
       :<|> AccountsGetResource
       :<|> AccountsCustombatchResource
       :<|> AccountsAuthInfoResource
       :<|> AccountsDeleteResource
       :<|> AccountsUpdateResource
       :<|> AccountsClaimwebsiteResource
       :<|> OrderreportsListtransactionsResource
       :<|> OrderreportsListdisbursementsResource
       :<|> ProductstatusesListResource
       :<|> ProductstatusesGetResource
       :<|> ProductstatusesCustombatchResource
       :<|> LiaSettingsListposDataprovidersResource
       :<|> LiaSettingsSetposDataproviderResource
       :<|> LiaSettingsRequestinventoryverificationResource
       :<|> LiaSettingsListResource
       :<|> LiaSettingsRequestgmbAccessResource
       :<|> LiaSettingsGetResource
       :<|> LiaSettingsCustombatchResource
       :<|> LiaSettingsGetAccessiblegmbAccountsResource
       :<|> LiaSettingsUpdateResource
       :<|>
       LiaSettingsSetinventoryverificationcontactResource
       :<|> PosInsertResource
       :<|> PosListResource
       :<|> PosGetResource
       :<|> PosCustombatchResource
       :<|> PosInventoryResource
       :<|> PosSaleResource
       :<|> PosDeleteResource
       :<|> ShippingSettingsListResource
       :<|> ShippingSettingsGetResource
       :<|> ShippingSettingsCustombatchResource
       :<|> ShippingSettingsGetsupportedcarriersResource
       :<|>
       ShippingSettingsGetsupportedpickupServicesResource
       :<|> ShippingSettingsGetsupportedholidaysResource
       :<|> ShippingSettingsUpdateResource
       :<|> OrderreturnsListResource
       :<|> OrderreturnsGetResource
       :<|> InventorySetResource
       :<|> InventoryCustombatchResource
       :<|> OrdersGetbymerchantOrderidResource
       :<|> OrdersCreatetestOrderResource
       :<|> OrdersListResource
       :<|> OrdersInstorerefundlineitemResource
       :<|> OrdersCancellineitemResource
       :<|> OrdersUpdatemerchantOrderidResource
       :<|> OrdersAcknowledgeResource
       :<|> OrdersCreatetestreturnResource
       :<|> OrdersGetResource
       :<|> OrdersRefundResource
       :<|> OrdersGettestOrdertemplateResource
       :<|> OrdersCanceltestOrderbycustomerResource
       :<|> OrdersReturnlineitemResource
       :<|> OrdersUpdateshipmentResource
       :<|> OrdersSetlineitemmetadataResource
       :<|> OrdersCustombatchResource
       :<|> OrdersReturnrefundlineitemResource
       :<|> OrdersAdvancetestOrderResource
       :<|> OrdersShiplineitemsResource
       :<|> OrdersUpdatelineitemshippingdetailsResource
       :<|> OrdersRejectreturnlineitemResource
       :<|> OrdersCancelResource
       :<|> ProductsInsertResource
       :<|> ProductsListResource
       :<|> ProductsGetResource
       :<|> ProductsCustombatchResource
       :<|> ProductsDeleteResource
       :<|> DatafeedstatusesListResource
       :<|> DatafeedstatusesGetResource
       :<|> DatafeedstatusesCustombatchResource
       :<|> AccountstatusesListResource
       :<|> AccountstatusesGetResource
       :<|> AccountstatusesCustombatchResource
       :<|> DatafeedsInsertResource
       :<|> DatafeedsListResource
       :<|> DatafeedsGetResource
       :<|> DatafeedsCustombatchResource
       :<|> DatafeedsFetchnowResource
       :<|> DatafeedsDeleteResource
       :<|> DatafeedsUpdateResource
