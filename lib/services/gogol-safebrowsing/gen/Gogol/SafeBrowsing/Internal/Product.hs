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
-- Module      : Gogol.SafeBrowsing.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SafeBrowsing.Internal.Product
  (

    -- * GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
    GoogleSecuritySafebrowsingV5BatchGetHashListsResponse (..),
    newGoogleSecuritySafebrowsingV5BatchGetHashListsResponse,

    -- * GoogleSecuritySafebrowsingV5FullHash
    GoogleSecuritySafebrowsingV5FullHash (..),
    newGoogleSecuritySafebrowsingV5FullHash,

    -- * GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail (..),
    newGoogleSecuritySafebrowsingV5FullHashFullHashDetail,

    -- * GoogleSecuritySafebrowsingV5HashList
    GoogleSecuritySafebrowsingV5HashList (..),
    newGoogleSecuritySafebrowsingV5HashList,

    -- * GoogleSecuritySafebrowsingV5HashListMetadata
    GoogleSecuritySafebrowsingV5HashListMetadata (..),
    newGoogleSecuritySafebrowsingV5HashListMetadata,

    -- * GoogleSecuritySafebrowsingV5ListHashListsResponse
    GoogleSecuritySafebrowsingV5ListHashListsResponse (..),
    newGoogleSecuritySafebrowsingV5ListHashListsResponse,

    -- * GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
    GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit (..),
    newGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit,

    -- * GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
    GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit (..),
    newGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit,

    -- * GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
    GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit (..),
    newGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit,

    -- * GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
    GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit (..),
    newGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit,

    -- * GoogleSecuritySafebrowsingV5SearchHashesResponse
    GoogleSecuritySafebrowsingV5SearchHashesResponse (..),
    newGoogleSecuritySafebrowsingV5SearchHashesResponse,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Internal.Sum

-- | The response containing multiple hash lists.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5BatchGetHashListsResponse' smart constructor.
newtype GoogleSecuritySafebrowsingV5BatchGetHashListsResponse = GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
    {
      -- | The hash lists in the same order given in the request.
      hashLists :: (Core.Maybe [GoogleSecuritySafebrowsingV5HashList])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5BatchGetHashListsResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5BatchGetHashListsResponse 
    :: 
                                                         GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
newGoogleSecuritySafebrowsingV5BatchGetHashListsResponse
  = GoogleSecuritySafebrowsingV5BatchGetHashListsResponse{hashLists =
                                                            Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5BatchGetHashListsResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV5BatchGetHashListsResponse Core.<$>
                   (o Core..:? "hashLists"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
         where
        toJSON GoogleSecuritySafebrowsingV5BatchGetHashListsResponse{..}
          = Core.object
              (Core.catMaybes [("hashLists" Core..=) Core.<$> hashLists])


-- | The full hash identified with one or more matches.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5FullHash' smart constructor.
data GoogleSecuritySafebrowsingV5FullHash = GoogleSecuritySafebrowsingV5FullHash
    {
      -- | The matching full hash. This is the SHA256 hash. The length will be exactly 32 bytes.
      fullHash :: (Core.Maybe Core.Base64)
      -- | Unordered list. A repeated field identifying the details relevant to this full hash.
    , fullHashDetails :: (Core.Maybe [GoogleSecuritySafebrowsingV5FullHashFullHashDetail])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5FullHash' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5FullHash 
    :: 
                                        GoogleSecuritySafebrowsingV5FullHash
newGoogleSecuritySafebrowsingV5FullHash
  = GoogleSecuritySafebrowsingV5FullHash{fullHash = Core.Nothing,
                                         fullHashDetails = Core.Nothing}
instance Core.FromJSON GoogleSecuritySafebrowsingV5FullHash where
        parseJSON
          = Core.withObject "GoogleSecuritySafebrowsingV5FullHash"
              (\ o ->
                 GoogleSecuritySafebrowsingV5FullHash Core.<$>
                   (o Core..:? "fullHash") Core.<*> (o Core..:? "fullHashDetails"))

instance Core.ToJSON GoogleSecuritySafebrowsingV5FullHash where
        toJSON GoogleSecuritySafebrowsingV5FullHash{..}
          = Core.object
              (Core.catMaybes
                 [("fullHash" Core..=) Core.<$> fullHash,
                  ("fullHashDetails" Core..=) Core.<$> fullHashDetails])


-- | Details about a matching full hash. An important note about forward compatibility: new threat types and threat attributes may be added by the server at any time; those additions are considered minor version changes. It is Google\'s policy not to expose minor version numbers in APIs (see https:\/\/cloud.google.com\/apis\/design\/versioning for the versioning policy), so clients MUST be prepared to receive @FullHashDetail@ messages containing @ThreatType@ enum values or @ThreatAttribute@ enum values that are considered invalid by the client. Therefore, it is the client\'s responsibility to check for the validity of all @ThreatType@ and @ThreatAttribute@ enum values; if any value is considered invalid, the client MUST disregard the entire @FullHashDetail@ message.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5FullHashFullHashDetail' smart constructor.
data GoogleSecuritySafebrowsingV5FullHashFullHashDetail = GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    {
      -- | Unordered list. Additional attributes about those full hashes. This may be empty.
      attributes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem])
      -- | The type of threat. This field will never be empty.
    , threatType :: (Core.Maybe
   GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5FullHashFullHashDetail' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5FullHashFullHashDetail 
    :: 
                                                      GoogleSecuritySafebrowsingV5FullHashFullHashDetail
newGoogleSecuritySafebrowsingV5FullHashFullHashDetail
  = GoogleSecuritySafebrowsingV5FullHashFullHashDetail{attributes =
                                                         Core.Nothing,
                                                       threatType = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5FullHashFullHashDetail
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5FullHashFullHashDetail"
              (\ o ->
                 GoogleSecuritySafebrowsingV5FullHashFullHashDetail Core.<$>
                   (o Core..:? "attributes") Core.<*> (o Core..:? "threatType"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5FullHashFullHashDetail
         where
        toJSON GoogleSecuritySafebrowsingV5FullHashFullHashDetail{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("threatType" Core..=) Core.<$> threatType])


-- | A list of hashes identified by its name.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5HashList' smart constructor.
data GoogleSecuritySafebrowsingV5HashList = GoogleSecuritySafebrowsingV5HashList
    {
      -- | The 8-byte additions.
      additionsEightBytes :: (Core.Maybe GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit)
      -- | The 4-byte additions.
    , additionsFourBytes :: (Core.Maybe GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit)
      -- | The 16-byte additions.
    , additionsSixteenBytes :: (Core.Maybe GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit)
      -- | The 32-byte additions.
    , additionsThirtyTwoBytes :: (Core.Maybe GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit)
      -- | The Rice-delta encoded version of removal indices. Since each hash list definitely has less than 2^32 entries, the indices are treated as 32-bit integers and encoded.
    , compressedRemovals :: (Core.Maybe GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit)
      -- | Metadata about the hash list. This is not populated by the @GetHashList@ method, but this is populated by the @ListHashLists@ method.
    , metadata :: (Core.Maybe GoogleSecuritySafebrowsingV5HashListMetadata)
      -- | Clients should wait at least this long to get the hash list again. If omitted or zero, clients SHOULD fetch immediately because it indicates that the server has an additional update to be sent to the client, but could not due to the client-specified constraints.
    , minimumWaitDuration :: (Core.Maybe Core.Duration)
      -- | The name of the hash list. Note that the Global Cache is also just a hash list and can be referred to here.
    , name :: (Core.Maybe Core.Text)
      -- | When true, this is a partial diff containing additions and removals based on what the client already has. When false, this is the complete hash list. When false, the client MUST delete any locally stored version for this hash list. This means that either the version possessed by the client is seriously out-of-date or the client data is believed to be corrupt. The @compressed_removals@ field will be empty. When true, the client MUST apply an incremental update by applying removals and then additions.
    , partialUpdate :: (Core.Maybe Core.Bool)
      -- | The sorted list of all hashes, hashed again with SHA256. This is the checksum for the sorted list of all hashes present in the database after applying the provided update. In the case that no updates were provided, the server will omit this field to indicate that the client should use the existing checksum.
    , sha256Checksum :: (Core.Maybe Core.Base64)
      -- | The version of the hash list. The client MUST NOT manipulate those bytes.
    , version :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5HashList' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5HashList 
    :: 
                                        GoogleSecuritySafebrowsingV5HashList
newGoogleSecuritySafebrowsingV5HashList
  = GoogleSecuritySafebrowsingV5HashList{additionsEightBytes =
                                           Core.Nothing,
                                         additionsFourBytes = Core.Nothing,
                                         additionsSixteenBytes = Core.Nothing,
                                         additionsThirtyTwoBytes = Core.Nothing,
                                         compressedRemovals = Core.Nothing, metadata = Core.Nothing,
                                         minimumWaitDuration = Core.Nothing, name = Core.Nothing,
                                         partialUpdate = Core.Nothing,
                                         sha256Checksum = Core.Nothing, version = Core.Nothing}
instance Core.FromJSON GoogleSecuritySafebrowsingV5HashList where
        parseJSON
          = Core.withObject "GoogleSecuritySafebrowsingV5HashList"
              (\ o ->
                 GoogleSecuritySafebrowsingV5HashList Core.<$>
                   (o Core..:? "additionsEightBytes") Core.<*>
                     (o Core..:? "additionsFourBytes")
                     Core.<*> (o Core..:? "additionsSixteenBytes")
                     Core.<*> (o Core..:? "additionsThirtyTwoBytes")
                     Core.<*> (o Core..:? "compressedRemovals")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "minimumWaitDuration")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "partialUpdate")
                     Core.<*> (o Core..:? "sha256Checksum")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GoogleSecuritySafebrowsingV5HashList where
        toJSON GoogleSecuritySafebrowsingV5HashList{..}
          = Core.object
              (Core.catMaybes
                 [("additionsEightBytes" Core..=) Core.<$> additionsEightBytes,
                  ("additionsFourBytes" Core..=) Core.<$> additionsFourBytes,
                  ("additionsSixteenBytes" Core..=) Core.<$> additionsSixteenBytes,
                  ("additionsThirtyTwoBytes" Core..=) Core.<$>
                    additionsThirtyTwoBytes,
                  ("compressedRemovals" Core..=) Core.<$> compressedRemovals,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("minimumWaitDuration" Core..=) Core.<$> minimumWaitDuration,
                  ("name" Core..=) Core.<$> name,
                  ("partialUpdate" Core..=) Core.<$> partialUpdate,
                  ("sha256Checksum" Core..=) Core.<$> sha256Checksum,
                  ("version" Core..=) Core.<$> version])


-- | Metadata about a particular hash list.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5HashListMetadata' smart constructor.
data GoogleSecuritySafebrowsingV5HashListMetadata = GoogleSecuritySafebrowsingV5HashListMetadata
    {
      -- | A human-readable description about this list. Written in English.
      description :: (Core.Maybe Core.Text)
      -- | The supported hash length for this hash list. Each hash list will support exactly one length. If a different hash length is introduced for the same set of threat types or safe types, it will be introduced as a separate list with a distinct name and respective hash length set.
    , hashLength :: (Core.Maybe
   GoogleSecuritySafebrowsingV5HashListMetadata_HashLength)
      -- | Unordered list. If not empty, this specifies that the hash list represents a list of likely safe hashes, and this enumerates the ways they are considered likely safe. This field is mutually exclusive with the threat_types field.
    , likelySafeTypes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV5HashListMetadata_LikelySafeTypesItem])
      -- | Unordered list. If not empty, this specifies that the hash list is a kind of threat list, and this enumerates the kind of threats associated with hashes or hash prefixes in this hash list. May be empty if the entry does not represent a threat, i.e. in the case that it represents a likely safe type.
    , threatTypes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV5HashListMetadata_ThreatTypesItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5HashListMetadata' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5HashListMetadata 
    :: 
                                                GoogleSecuritySafebrowsingV5HashListMetadata
newGoogleSecuritySafebrowsingV5HashListMetadata
  = GoogleSecuritySafebrowsingV5HashListMetadata{description =
                                                   Core.Nothing,
                                                 hashLength = Core.Nothing,
                                                 likelySafeTypes = Core.Nothing,
                                                 threatTypes = Core.Nothing}
instance Core.FromJSON GoogleSecuritySafebrowsingV5HashListMetadata
         where
        parseJSON
          = Core.withObject "GoogleSecuritySafebrowsingV5HashListMetadata"
              (\ o ->
                 GoogleSecuritySafebrowsingV5HashListMetadata Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "hashLength")
                     Core.<*> (o Core..:? "likelySafeTypes")
                     Core.<*> (o Core..:? "threatTypes"))

instance Core.ToJSON GoogleSecuritySafebrowsingV5HashListMetadata
         where
        toJSON GoogleSecuritySafebrowsingV5HashListMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("hashLength" Core..=) Core.<$> hashLength,
                  ("likelySafeTypes" Core..=) Core.<$> likelySafeTypes,
                  ("threatTypes" Core..=) Core.<$> threatTypes])


-- | The response containing metadata about hash lists.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5ListHashListsResponse' smart constructor.
data GoogleSecuritySafebrowsingV5ListHashListsResponse = GoogleSecuritySafebrowsingV5ListHashListsResponse
    {
      -- | The hash lists in an arbitrary order. Only metadata about the hash lists will be included, not the contents.
      hashLists :: (Core.Maybe [GoogleSecuritySafebrowsingV5HashList])
      -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5ListHashListsResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5ListHashListsResponse 
    :: 
                                                     GoogleSecuritySafebrowsingV5ListHashListsResponse
newGoogleSecuritySafebrowsingV5ListHashListsResponse
  = GoogleSecuritySafebrowsingV5ListHashListsResponse{hashLists =
                                                        Core.Nothing,
                                                      nextPageToken = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5ListHashListsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5ListHashListsResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV5ListHashListsResponse Core.<$>
                   (o Core..:? "hashLists") Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5ListHashListsResponse
         where
        toJSON GoogleSecuritySafebrowsingV5ListHashListsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("hashLists" Core..=) Core.<$> hashLists,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Same as @RiceDeltaEncoded32Bit@ except this encodes 128-bit numbers.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit' smart constructor.
data GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit = GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
    {
      -- | The encoded deltas that are encoded using the Golomb-Rice coder.
      encodedData :: (Core.Maybe Core.Base64)
      -- | The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in @first_value@.
    , entriesCount :: (Core.Maybe Core.Int32)
      -- | The upper 64 bits of the first entry in the encoded data (hashes). If the field is empty, the upper 64 bits are all zero.
    , firstValueHi :: (Core.Maybe Core.Word64)
      -- | The lower 64 bits of the first entry in the encoded data (hashes). If the field is empty, the lower 64 bits are all zero.
    , firstValueLo :: (Core.Maybe Core.Word64)
      -- | The Golomb-Rice parameter. This parameter is guaranteed to be between 99 and 126, inclusive.
    , riceParameter :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit 
    :: 
                                                      GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
  = GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit{encodedData =
                                                         Core.Nothing,
                                                       entriesCount = Core.Nothing,
                                                       firstValueHi = Core.Nothing,
                                                       firstValueLo = Core.Nothing,
                                                       riceParameter = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit"
              (\ o ->
                 GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit Core.<$>
                   (o Core..:? "encodedData") Core.<*> (o Core..:? "entriesCount")
                     Core.<*>
                     (o Core..:? "firstValueHi" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "firstValueLo" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "riceParameter"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
         where
        toJSON GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit{..}
          = Core.object
              (Core.catMaybes
                 [("encodedData" Core..=) Core.<$> encodedData,
                  ("entriesCount" Core..=) Core.<$> entriesCount,
                  ("firstValueHi" Core..=) Core.. Core.AsText Core.<$> firstValueHi,
                  ("firstValueLo" Core..=) Core.. Core.AsText Core.<$> firstValueLo,
                  ("riceParameter" Core..=) Core.<$> riceParameter])


-- | Same as @RiceDeltaEncoded32Bit@ except this encodes 256-bit numbers.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit' smart constructor.
data GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit = GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
    {
      -- | The encoded deltas that are encoded using the Golomb-Rice coder.
      encodedData :: (Core.Maybe Core.Base64)
      -- | The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in @first_value@.
    , entriesCount :: (Core.Maybe Core.Int32)
      -- | The first 64 bits of the first entry in the encoded data (hashes). If the field is empty, the first 64 bits are all zero.
    , firstValueFirstPart :: (Core.Maybe Core.Word64)
      -- | The last 64 bits of the first entry in the encoded data (hashes). If the field is empty, the last 64 bits are all zero.
    , firstValueFourthPart :: (Core.Maybe Core.Word64)
      -- | The 65 through 128th bits of the first entry in the encoded data (hashes). If the field is empty, the 65 through 128th bits are all zero.
    , firstValueSecondPart :: (Core.Maybe Core.Word64)
      -- | The 129 through 192th bits of the first entry in the encoded data (hashes). If the field is empty, the 129 through 192th bits are all zero.
    , firstValueThirdPart :: (Core.Maybe Core.Word64)
      -- | The Golomb-Rice parameter. This parameter is guaranteed to be between 227 and 254, inclusive.
    , riceParameter :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit 
    :: 
                                                      GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
  = GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit{encodedData =
                                                         Core.Nothing,
                                                       entriesCount = Core.Nothing,
                                                       firstValueFirstPart = Core.Nothing,
                                                       firstValueFourthPart = Core.Nothing,
                                                       firstValueSecondPart = Core.Nothing,
                                                       firstValueThirdPart = Core.Nothing,
                                                       riceParameter = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit"
              (\ o ->
                 GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit Core.<$>
                   (o Core..:? "encodedData") Core.<*> (o Core..:? "entriesCount")
                     Core.<*>
                     (o Core..:? "firstValueFirstPart" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "firstValueFourthPart" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "firstValueSecondPart" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "firstValueThirdPart" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "riceParameter"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
         where
        toJSON GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit{..}
          = Core.object
              (Core.catMaybes
                 [("encodedData" Core..=) Core.<$> encodedData,
                  ("entriesCount" Core..=) Core.<$> entriesCount,
                  ("firstValueFirstPart" Core..=) Core.. Core.AsText Core.<$>
                    firstValueFirstPart,
                  ("firstValueFourthPart" Core..=) Core.. Core.AsText Core.<$>
                    firstValueFourthPart,
                  ("firstValueSecondPart" Core..=) Core.. Core.AsText Core.<$>
                    firstValueSecondPart,
                  ("firstValueThirdPart" Core..=) Core.. Core.AsText Core.<$>
                    firstValueThirdPart,
                  ("riceParameter" Core..=) Core.<$> riceParameter])


-- | The Rice-Golomb encoded data. Used for either hashes or removal indices. It is guaranteed that every hash or index here has the same length, and this length is exactly 32 bits. Generally speaking, if we sort all the entries lexicographically, we will find that the higher order bits tend not to change as frequently as lower order bits. This means that if we also take the adjacent difference between entries, the higher order bits have a high probability of being zero. This exploits this high probability of zero by essentially choosing a certain number of bits; all bits more significant than this are likely to be zero so we use unary encoding. See the @rice_parameter@ field. Historical note: the Rice-delta encoding was first used in V4 of this API. In V5, two significant improvements were made: firstly, the Rice-delta encoding is now available with hash prefixes longer than 4 bytes; secondly, the encoded data are now treated as big-endian so as to avoid a costly sorting step.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit' smart constructor.
data GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit = GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
    {
      -- | The encoded deltas that are encoded using the Golomb-Rice coder.
      encodedData :: (Core.Maybe Core.Base64)
      -- | The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in @first_value@.
    , entriesCount :: (Core.Maybe Core.Int32)
      -- | The first entry in the encoded data (hashes or indices), or, if only a single hash prefix or index was encoded, that entry\'s value. If the field is empty, the entry is zero.
    , firstValue :: (Core.Maybe Core.Word32)
      -- | The Golomb-Rice parameter. This parameter is guaranteed to be between 3 and 30, inclusive.
    , riceParameter :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit 
    :: 
                                                     GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
  = GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit{encodedData =
                                                        Core.Nothing,
                                                      entriesCount = Core.Nothing,
                                                      firstValue = Core.Nothing,
                                                      riceParameter = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit"
              (\ o ->
                 GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit Core.<$>
                   (o Core..:? "encodedData") Core.<*> (o Core..:? "entriesCount")
                     Core.<*> (o Core..:? "firstValue")
                     Core.<*> (o Core..:? "riceParameter"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
         where
        toJSON GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit{..}
          = Core.object
              (Core.catMaybes
                 [("encodedData" Core..=) Core.<$> encodedData,
                  ("entriesCount" Core..=) Core.<$> entriesCount,
                  ("firstValue" Core..=) Core.<$> firstValue,
                  ("riceParameter" Core..=) Core.<$> riceParameter])


-- | Same as @RiceDeltaEncoded32Bit@ except this encodes 64-bit numbers.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit' smart constructor.
data GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit = GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
    {
      -- | The encoded deltas that are encoded using the Golomb-Rice coder.
      encodedData :: (Core.Maybe Core.Base64)
      -- | The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in @first_value@.
    , entriesCount :: (Core.Maybe Core.Int32)
      -- | The first entry in the encoded data (hashes), or, if only a single hash prefix was encoded, that entry\'s value. If the field is empty, the entry is zero.
    , firstValue :: (Core.Maybe Core.Word64)
      -- | The Golomb-Rice parameter. This parameter is guaranteed to be between 35 and 62, inclusive.
    , riceParameter :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit 
    :: 
                                                     GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
newGoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
  = GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit{encodedData =
                                                        Core.Nothing,
                                                      entriesCount = Core.Nothing,
                                                      firstValue = Core.Nothing,
                                                      riceParameter = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit"
              (\ o ->
                 GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit Core.<$>
                   (o Core..:? "encodedData") Core.<*> (o Core..:? "entriesCount")
                     Core.<*>
                     (o Core..:? "firstValue" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "riceParameter"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
         where
        toJSON GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit{..}
          = Core.object
              (Core.catMaybes
                 [("encodedData" Core..=) Core.<$> encodedData,
                  ("entriesCount" Core..=) Core.<$> entriesCount,
                  ("firstValue" Core..=) Core.. Core.AsText Core.<$> firstValue,
                  ("riceParameter" Core..=) Core.<$> riceParameter])


-- | The response returned after searching threat hashes. If nothing is found, the server will return an OK status (HTTP status code 200) with the @full_hashes@ field empty, rather than returning a NOT/FOUND status (HTTP status code 404). __What\'s new in V5__: There is a separation between @FullHash@ and @FullHashDetail@. In the case when a hash represents a site having multiple threats (e.g. both MALWARE and SOCIAL/ENGINEERING), the full hash does not need to be sent twice as in V4. Furthermore, the cache duration has been simplified into a single @cache_duration@ field.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5SearchHashesResponse' smart constructor.
data GoogleSecuritySafebrowsingV5SearchHashesResponse = GoogleSecuritySafebrowsingV5SearchHashesResponse
    {
      -- | The client-side cache duration. The client MUST add this duration to the current time to determine the expiration time. The expiration time then applies to every hash prefix queried by the client in the request, regardless of how many full hashes are returned in the response. Even if the server returns no full hashes for a particular hash prefix, this fact MUST also be cached by the client. If and only if the field @full_hashes@ is empty, the client MAY increase the @cache_duration@ to determine a new expiration that is later than that specified by the server. In any case, the increased cache duration must not be longer than 24 hours. Important: the client MUST NOT assume that the server will return the same cache duration for all responses. The server MAY choose different cache durations for different responses depending on the situation.
      cacheDuration :: (Core.Maybe Core.Duration)
      -- | Unordered list. The unordered list of full hashes found.
    , fullHashes :: (Core.Maybe [GoogleSecuritySafebrowsingV5FullHash])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5SearchHashesResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5SearchHashesResponse 
    :: 
                                                    GoogleSecuritySafebrowsingV5SearchHashesResponse
newGoogleSecuritySafebrowsingV5SearchHashesResponse
  = GoogleSecuritySafebrowsingV5SearchHashesResponse{cacheDuration =
                                                       Core.Nothing,
                                                     fullHashes = Core.Nothing}
instance Core.FromJSON
           GoogleSecuritySafebrowsingV5SearchHashesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV5SearchHashesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV5SearchHashesResponse Core.<$>
                   (o Core..:? "cacheDuration") Core.<*> (o Core..:? "fullHashes"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV5SearchHashesResponse
         where
        toJSON GoogleSecuritySafebrowsingV5SearchHashesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("cacheDuration" Core..=) Core.<$> cacheDuration,
                  ("fullHashes" Core..=) Core.<$> fullHashes])

