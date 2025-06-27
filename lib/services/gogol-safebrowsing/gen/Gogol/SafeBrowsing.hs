{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SafeBrowsing
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables client applications to check web resources (most commonly URLs) against Google-generated lists of unsafe web resources. The Safe Browsing APIs are for non-commercial use only. If you need to use APIs to detect malicious URLs for commercial purposes – meaning “for sale or revenue-generating purposes” – please refer to the Web Risk API.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference>
module Gogol.SafeBrowsing
    (
    -- * Configuration
      safeBrowsingService

    -- * Resources

    -- ** safebrowsing.hashList.get
    , SafeBrowsingHashListGetResource
    , SafeBrowsingHashListGet (..)
    , newSafeBrowsingHashListGet

    -- ** safebrowsing.hashLists.batchGet
    , SafeBrowsingHashListsBatchGetResource
    , SafeBrowsingHashListsBatchGet (..)
    , newSafeBrowsingHashListsBatchGet

    -- ** safebrowsing.hashLists.list
    , SafeBrowsingHashListsListResource
    , SafeBrowsingHashListsList (..)
    , newSafeBrowsingHashListsList

    -- ** safebrowsing.hashes.search
    , SafeBrowsingHashesSearchResource
    , SafeBrowsingHashesSearch (..)
    , newSafeBrowsingHashesSearch

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
    , GoogleSecuritySafebrowsingV5BatchGetHashListsResponse (..)
    , newGoogleSecuritySafebrowsingV5BatchGetHashListsResponse

    -- ** GoogleSecuritySafebrowsingV5FullHash
    , GoogleSecuritySafebrowsingV5FullHash (..)
    , newGoogleSecuritySafebrowsingV5FullHash

    -- ** GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    , GoogleSecuritySafebrowsingV5FullHashFullHashDetail (..)
    , newGoogleSecuritySafebrowsingV5FullHashFullHashDetail

    -- ** GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
    , GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem (..)

    -- ** GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
    , GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType (..)

    -- ** GoogleSecuritySafebrowsingV5HashList
    , GoogleSecuritySafebrowsingV5HashList (..)
    , newGoogleSecuritySafebrowsingV5HashList

    -- ** GoogleSecuritySafebrowsingV5HashListMetadata
    , GoogleSecuritySafebrowsingV5HashListMetadata (..)
    , newGoogleSecuritySafebrowsingV5HashListMetadata

    -- ** GoogleSecuritySafebrowsingV5HashListMetadata_HashLength
    , GoogleSecuritySafebrowsingV5HashListMetadata_HashLength (..)

    -- ** GoogleSecuritySafebrowsingV5HashListMetadata_LikelySafeTypesItem
    , GoogleSecuritySafebrowsingV5HashListMetadata_LikelySafeTypesItem (..)

    -- ** GoogleSecuritySafebrowsingV5HashListMetadata_ThreatTypesItem
    , GoogleSecuritySafebrowsingV5HashListMetadata_ThreatTypesItem (..)

    -- ** GoogleSecuritySafebrowsingV5ListHashListsResponse
    , GoogleSecuritySafebrowsingV5ListHashListsResponse (..)
    , newGoogleSecuritySafebrowsingV5ListHashListsResponse

    -- ** GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
    , GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit (..)
    , newGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit

    -- ** GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
    , GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit (..)
    , newGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit

    -- ** GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
    , GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit (..)
    , newGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit

    -- ** GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
    , GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit (..)
    , newGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit

    -- ** GoogleSecuritySafebrowsingV5SearchHashesResponse
    , GoogleSecuritySafebrowsingV5SearchHashesResponse (..)
    , newGoogleSecuritySafebrowsingV5SearchHashesResponse
    ) where

import Gogol.SafeBrowsing.HashList.Get
import Gogol.SafeBrowsing.HashLists.BatchGet
import Gogol.SafeBrowsing.HashLists.List
import Gogol.SafeBrowsing.Hashes.Search
import Gogol.SafeBrowsing.Types
