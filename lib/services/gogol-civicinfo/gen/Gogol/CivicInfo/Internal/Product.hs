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
-- Module      : Gogol.CivicInfo.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CivicInfo.Internal.Product
  (

    -- * CivicinfoApiprotosV2DivisionByAddressResponse
    CivicinfoApiprotosV2DivisionByAddressResponse (..),
    newCivicinfoApiprotosV2DivisionByAddressResponse,

    -- * CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
    CivicinfoApiprotosV2DivisionByAddressResponse_Divisions (..),
    newCivicinfoApiprotosV2DivisionByAddressResponse_Divisions,

    -- * CivicinfoApiprotosV2DivisionSearchResponse
    CivicinfoApiprotosV2DivisionSearchResponse (..),
    newCivicinfoApiprotosV2DivisionSearchResponse,

    -- * CivicinfoApiprotosV2DivisionSearchResult
    CivicinfoApiprotosV2DivisionSearchResult (..),
    newCivicinfoApiprotosV2DivisionSearchResult,

    -- * CivicinfoApiprotosV2ElectionsQueryResponse
    CivicinfoApiprotosV2ElectionsQueryResponse (..),
    newCivicinfoApiprotosV2ElectionsQueryResponse,

    -- * CivicinfoApiprotosV2VoterInfoResponse
    CivicinfoApiprotosV2VoterInfoResponse (..),
    newCivicinfoApiprotosV2VoterInfoResponse,

    -- * CivicinfoSchemaV2AdministrationRegion
    CivicinfoSchemaV2AdministrationRegion (..),
    newCivicinfoSchemaV2AdministrationRegion,

    -- * CivicinfoSchemaV2AdministrativeBody
    CivicinfoSchemaV2AdministrativeBody (..),
    newCivicinfoSchemaV2AdministrativeBody,

    -- * CivicinfoSchemaV2Candidate
    CivicinfoSchemaV2Candidate (..),
    newCivicinfoSchemaV2Candidate,

    -- * CivicinfoSchemaV2Channel
    CivicinfoSchemaV2Channel (..),
    newCivicinfoSchemaV2Channel,

    -- * CivicinfoSchemaV2Contest
    CivicinfoSchemaV2Contest (..),
    newCivicinfoSchemaV2Contest,

    -- * CivicinfoSchemaV2Election
    CivicinfoSchemaV2Election (..),
    newCivicinfoSchemaV2Election,

    -- * CivicinfoSchemaV2ElectionOfficial
    CivicinfoSchemaV2ElectionOfficial (..),
    newCivicinfoSchemaV2ElectionOfficial,

    -- * CivicinfoSchemaV2ElectoralDistrict
    CivicinfoSchemaV2ElectoralDistrict (..),
    newCivicinfoSchemaV2ElectoralDistrict,

    -- * CivicinfoSchemaV2GeographicDivision
    CivicinfoSchemaV2GeographicDivision (..),
    newCivicinfoSchemaV2GeographicDivision,

    -- * CivicinfoSchemaV2PollingLocation
    CivicinfoSchemaV2PollingLocation (..),
    newCivicinfoSchemaV2PollingLocation,

    -- * CivicinfoSchemaV2Precinct
    CivicinfoSchemaV2Precinct (..),
    newCivicinfoSchemaV2Precinct,

    -- * CivicinfoSchemaV2SimpleAddressType
    CivicinfoSchemaV2SimpleAddressType (..),
    newCivicinfoSchemaV2SimpleAddressType,

    -- * CivicinfoSchemaV2Source
    CivicinfoSchemaV2Source (..),
    newCivicinfoSchemaV2Source,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.CivicInfo.Internal.Sum

--
-- /See:/ 'newCivicinfoApiprotosV2DivisionByAddressResponse' smart constructor.
data CivicinfoApiprotosV2DivisionByAddressResponse = CivicinfoApiprotosV2DivisionByAddressResponse
    {

      divisions :: (Core.Maybe
   CivicinfoApiprotosV2DivisionByAddressResponse_Divisions)
      -- | The normalized version of the requested address.
    , normalizedInput :: (Core.Maybe CivicinfoSchemaV2SimpleAddressType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2DivisionByAddressResponse' with the minimum fields required to make a request.
newCivicinfoApiprotosV2DivisionByAddressResponse 
    :: 
                                                 CivicinfoApiprotosV2DivisionByAddressResponse
newCivicinfoApiprotosV2DivisionByAddressResponse
  = CivicinfoApiprotosV2DivisionByAddressResponse{divisions =
                                                    Core.Nothing,
                                                  normalizedInput = Core.Nothing}
instance Core.FromJSON
           CivicinfoApiprotosV2DivisionByAddressResponse
         where
        parseJSON
          = Core.withObject "CivicinfoApiprotosV2DivisionByAddressResponse"
              (\ o ->
                 CivicinfoApiprotosV2DivisionByAddressResponse Core.<$>
                   (o Core..:? "divisions") Core.<*> (o Core..:? "normalizedInput"))

instance Core.ToJSON CivicinfoApiprotosV2DivisionByAddressResponse
         where
        toJSON CivicinfoApiprotosV2DivisionByAddressResponse{..}
          = Core.object
              (Core.catMaybes
                 [("divisions" Core..=) Core.<$> divisions,
                  ("normalizedInput" Core..=) Core.<$> normalizedInput])


--
-- /See:/ 'newCivicinfoApiprotosV2DivisionByAddressResponse_Divisions' smart constructor.
newtype CivicinfoApiprotosV2DivisionByAddressResponse_Divisions = CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
    {

      additional :: (Core.HashMap Core.Text CivicinfoSchemaV2GeographicDivision)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2DivisionByAddressResponse_Divisions' with the minimum fields required to make a request.
newCivicinfoApiprotosV2DivisionByAddressResponse_Divisions 
    :: 
                                                           Core.HashMap Core.Text
                                                             CivicinfoSchemaV2GeographicDivision
       -- ^  See 'additional'.
    -> CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
newCivicinfoApiprotosV2DivisionByAddressResponse_Divisions
  additional
  = CivicinfoApiprotosV2DivisionByAddressResponse_Divisions{additional
                                                              = additional}
instance Core.FromJSON
           CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
         where
        parseJSON
          = Core.withObject
              "CivicinfoApiprotosV2DivisionByAddressResponse_Divisions"
              (\ o ->
                 CivicinfoApiprotosV2DivisionByAddressResponse_Divisions Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           CivicinfoApiprotosV2DivisionByAddressResponse_Divisions
         where
        toJSON CivicinfoApiprotosV2DivisionByAddressResponse_Divisions{..}
          = Core.toJSON additional


-- | The result of a division search query.
--
-- /See:/ 'newCivicinfoApiprotosV2DivisionSearchResponse' smart constructor.
data CivicinfoApiprotosV2DivisionSearchResponse = CivicinfoApiprotosV2DivisionSearchResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#divisionSearchResponse\".
      kind :: Core.Text

    , results :: (Core.Maybe [CivicinfoApiprotosV2DivisionSearchResult])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2DivisionSearchResponse' with the minimum fields required to make a request.
newCivicinfoApiprotosV2DivisionSearchResponse 
    :: 
                                              CivicinfoApiprotosV2DivisionSearchResponse
newCivicinfoApiprotosV2DivisionSearchResponse
  = CivicinfoApiprotosV2DivisionSearchResponse{kind =
                                                 "civicinfo#divisionSearchResponse",
                                               results = Core.Nothing}
instance Core.FromJSON CivicinfoApiprotosV2DivisionSearchResponse
         where
        parseJSON
          = Core.withObject "CivicinfoApiprotosV2DivisionSearchResponse"
              (\ o ->
                 CivicinfoApiprotosV2DivisionSearchResponse Core.<$>
                   (o Core..:? "kind" Core..!= "civicinfo#divisionSearchResponse")
                     Core.<*> (o Core..:? "results"))

instance Core.ToJSON CivicinfoApiprotosV2DivisionSearchResponse
         where
        toJSON CivicinfoApiprotosV2DivisionSearchResponse{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("results" Core..=) Core.<$> results])


-- | Represents a political geographic division that matches the requested query.
--
-- /See:/ 'newCivicinfoApiprotosV2DivisionSearchResult' smart constructor.
data CivicinfoApiprotosV2DivisionSearchResult = CivicinfoApiprotosV2DivisionSearchResult
    {
      -- | Other Open Civic Data identifiers that refer to the same division -- for example, those that refer to other political divisions whose boundaries are defined to be coterminous with this one. For example, ocd-division\/country:us\/state:wy will include an alias of ocd-division\/country:us\/state:wy\/cd:1, since Wyoming has only one Congressional district.
      aliases :: (Core.Maybe [Core.Text])
      -- | The name of the division.
    , name :: (Core.Maybe Core.Text)
      -- | The unique Open Civic Data identifier for this division
    , ocdId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2DivisionSearchResult' with the minimum fields required to make a request.
newCivicinfoApiprotosV2DivisionSearchResult 
    :: 
                                            CivicinfoApiprotosV2DivisionSearchResult
newCivicinfoApiprotosV2DivisionSearchResult
  = CivicinfoApiprotosV2DivisionSearchResult{aliases = Core.Nothing,
                                             name = Core.Nothing, ocdId = Core.Nothing}
instance Core.FromJSON CivicinfoApiprotosV2DivisionSearchResult
         where
        parseJSON
          = Core.withObject "CivicinfoApiprotosV2DivisionSearchResult"
              (\ o ->
                 CivicinfoApiprotosV2DivisionSearchResult Core.<$>
                   (o Core..:? "aliases") Core.<*> (o Core..:? "name") Core.<*>
                     (o Core..:? "ocdId"))

instance Core.ToJSON CivicinfoApiprotosV2DivisionSearchResult where
        toJSON CivicinfoApiprotosV2DivisionSearchResult{..}
          = Core.object
              (Core.catMaybes
                 [("aliases" Core..=) Core.<$> aliases,
                  ("name" Core..=) Core.<$> name, ("ocdId" Core..=) Core.<$> ocdId])


-- | The list of elections available for this version of the API.
--
-- /See:/ 'newCivicinfoApiprotosV2ElectionsQueryResponse' smart constructor.
data CivicinfoApiprotosV2ElectionsQueryResponse = CivicinfoApiprotosV2ElectionsQueryResponse
    {
      -- | A list of available elections
      elections :: (Core.Maybe [CivicinfoSchemaV2Election])
      -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#electionsQueryResponse\".
    , kind :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2ElectionsQueryResponse' with the minimum fields required to make a request.
newCivicinfoApiprotosV2ElectionsQueryResponse 
    :: 
                                              CivicinfoApiprotosV2ElectionsQueryResponse
newCivicinfoApiprotosV2ElectionsQueryResponse
  = CivicinfoApiprotosV2ElectionsQueryResponse{elections =
                                                 Core.Nothing,
                                               kind = "civicinfo#electionsQueryResponse"}
instance Core.FromJSON CivicinfoApiprotosV2ElectionsQueryResponse
         where
        parseJSON
          = Core.withObject "CivicinfoApiprotosV2ElectionsQueryResponse"
              (\ o ->
                 CivicinfoApiprotosV2ElectionsQueryResponse Core.<$>
                   (o Core..:? "elections") Core.<*>
                     (o Core..:? "kind" Core..!= "civicinfo#electionsQueryResponse"))

instance Core.ToJSON CivicinfoApiprotosV2ElectionsQueryResponse
         where
        toJSON CivicinfoApiprotosV2ElectionsQueryResponse{..}
          = Core.object
              (Core.catMaybes
                 [("elections" Core..=) Core.<$> elections,
                  Core.Just ("kind" Core..= kind)])


-- | The result of a voter info lookup query.
--
-- /See:/ 'newCivicinfoApiprotosV2VoterInfoResponse' smart constructor.
data CivicinfoApiprotosV2VoterInfoResponse = CivicinfoApiprotosV2VoterInfoResponse
    {
      -- | Contests that will appear on the voter\'s ballot.
      contests :: (Core.Maybe [CivicinfoSchemaV2Contest])
      -- | Locations where a voter is eligible to drop off a completed ballot. The voter must have received and completed a ballot prior to arriving at the location. The location may not have ballots available on the premises. These locations could be open on or before election day as indicated in the pollingHours field.
    , dropOffLocations :: (Core.Maybe [CivicinfoSchemaV2PollingLocation])
      -- | Locations where the voter is eligible to vote early, prior to election day.
    , earlyVoteSites :: (Core.Maybe [CivicinfoSchemaV2PollingLocation])
      -- | The election that was queried.
    , election :: (Core.Maybe CivicinfoSchemaV2Election)
      -- | Identifies what kind of resource this is. Value: the fixed string \"civicinfo#voterInfoResponse\".
    , kind :: Core.Text
      -- | Specifies whether voters in the precinct vote only by mailing their ballots (with the possible option of dropping off their ballots as well).
    , mailOnly :: (Core.Maybe Core.Bool)
      -- | The normalized version of the requested address
    , normalizedInput :: (Core.Maybe CivicinfoSchemaV2SimpleAddressType)
      -- | When there are multiple elections for a voter address, the otherElections field is populated in the API response and there are two possibilities: 1. If the earliest election is not the intended election, specify the election ID of the desired election in a second API request using the electionId field. 2. If these elections occur on the same day, the API doesn?t return any polling location, contest, or election official information to ensure that an additional query is made. For user-facing applications, we recommend displaying these elections to the user to disambiguate. A second API request using the electionId field should be made for the election that is relevant to the user.
    , otherElections :: (Core.Maybe [CivicinfoSchemaV2Election])
      -- | Locations where the voter is eligible to vote on election day.
    , pollingLocations :: (Core.Maybe [CivicinfoSchemaV2PollingLocation])

    , precinctId :: (Core.Maybe Core.Text)
      -- | The precincts that match this voter\'s address. Will only be returned for project IDs which have been allowlisted as \"partner projects\".
    , precincts :: (Core.Maybe [CivicinfoSchemaV2Precinct])
      -- | Local Election Information for the state that the voter votes in. For the US, there will only be one element in this array.
    , state :: (Core.Maybe [CivicinfoSchemaV2AdministrationRegion])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoApiprotosV2VoterInfoResponse' with the minimum fields required to make a request.
newCivicinfoApiprotosV2VoterInfoResponse 
    :: 
                                         CivicinfoApiprotosV2VoterInfoResponse
newCivicinfoApiprotosV2VoterInfoResponse
  = CivicinfoApiprotosV2VoterInfoResponse{contests = Core.Nothing,
                                          dropOffLocations = Core.Nothing,
                                          earlyVoteSites = Core.Nothing, election = Core.Nothing,
                                          kind = "civicinfo#voterInfoResponse",
                                          mailOnly = Core.Nothing, normalizedInput = Core.Nothing,
                                          otherElections = Core.Nothing,
                                          pollingLocations = Core.Nothing,
                                          precinctId = Core.Nothing, precincts = Core.Nothing,
                                          state = Core.Nothing}
instance Core.FromJSON CivicinfoApiprotosV2VoterInfoResponse where
        parseJSON
          = Core.withObject "CivicinfoApiprotosV2VoterInfoResponse"
              (\ o ->
                 CivicinfoApiprotosV2VoterInfoResponse Core.<$>
                   (o Core..:? "contests") Core.<*> (o Core..:? "dropOffLocations")
                     Core.<*> (o Core..:? "earlyVoteSites")
                     Core.<*> (o Core..:? "election")
                     Core.<*> (o Core..:? "kind" Core..!= "civicinfo#voterInfoResponse")
                     Core.<*> (o Core..:? "mailOnly")
                     Core.<*> (o Core..:? "normalizedInput")
                     Core.<*> (o Core..:? "otherElections")
                     Core.<*> (o Core..:? "pollingLocations")
                     Core.<*> (o Core..:? "precinctId")
                     Core.<*> (o Core..:? "precincts")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON CivicinfoApiprotosV2VoterInfoResponse where
        toJSON CivicinfoApiprotosV2VoterInfoResponse{..}
          = Core.object
              (Core.catMaybes
                 [("contests" Core..=) Core.<$> contests,
                  ("dropOffLocations" Core..=) Core.<$> dropOffLocations,
                  ("earlyVoteSites" Core..=) Core.<$> earlyVoteSites,
                  ("election" Core..=) Core.<$> election,
                  Core.Just ("kind" Core..= kind),
                  ("mailOnly" Core..=) Core.<$> mailOnly,
                  ("normalizedInput" Core..=) Core.<$> normalizedInput,
                  ("otherElections" Core..=) Core.<$> otherElections,
                  ("pollingLocations" Core..=) Core.<$> pollingLocations,
                  ("precinctId" Core..=) Core.<$> precinctId,
                  ("precincts" Core..=) Core.<$> precincts,
                  ("state" Core..=) Core.<$> state])


-- | Describes information about a regional election administrative area.
--
-- /See:/ 'newCivicinfoSchemaV2AdministrationRegion' smart constructor.
data CivicinfoSchemaV2AdministrationRegion = CivicinfoSchemaV2AdministrationRegion
    {
      -- | The election administration body for this area.
      electionAdministrationBody :: (Core.Maybe CivicinfoSchemaV2AdministrativeBody)
      -- | The city or county that provides election information for this voter. This object can have the same elements as state.
    , localJurisdiction :: (Core.Maybe CivicinfoSchemaV2AdministrationRegion)
      -- | The name of the jurisdiction.
    , name :: (Core.Maybe Core.Text)
      -- | A list of sources for this area. If multiple sources are listed the data has been aggregated from those sources.
    , sources :: (Core.Maybe [CivicinfoSchemaV2Source])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2AdministrationRegion' with the minimum fields required to make a request.
newCivicinfoSchemaV2AdministrationRegion 
    :: 
                                         CivicinfoSchemaV2AdministrationRegion
newCivicinfoSchemaV2AdministrationRegion
  = CivicinfoSchemaV2AdministrationRegion{electionAdministrationBody
                                            = Core.Nothing,
                                          localJurisdiction = Core.Nothing, name = Core.Nothing,
                                          sources = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2AdministrationRegion where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2AdministrationRegion"
              (\ o ->
                 CivicinfoSchemaV2AdministrationRegion Core.<$>
                   (o Core..:? "electionAdministrationBody") Core.<*>
                     (o Core..:? "local_jurisdiction")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sources"))

instance Core.ToJSON CivicinfoSchemaV2AdministrationRegion where
        toJSON CivicinfoSchemaV2AdministrationRegion{..}
          = Core.object
              (Core.catMaybes
                 [("electionAdministrationBody" Core..=) Core.<$>
                    electionAdministrationBody,
                  ("local_jurisdiction" Core..=) Core.<$> localJurisdiction,
                  ("name" Core..=) Core.<$> name,
                  ("sources" Core..=) Core.<$> sources])


-- | Information about an election administrative body (e.g. County Board of Elections).
--
-- /See:/ 'newCivicinfoSchemaV2AdministrativeBody' smart constructor.
data CivicinfoSchemaV2AdministrativeBody = CivicinfoSchemaV2AdministrativeBody
    {
      -- | A URL provided by this administrative body for information on absentee voting.
      absenteeVotingInfoUrl :: (Core.Maybe Core.Text)
      -- | A URL provided by this administrative body to give contest information to the voter.
    , ballotInfoUrl :: (Core.Maybe Core.Text)
      -- | The mailing address of this administrative body.
    , correspondenceAddress :: (Core.Maybe CivicinfoSchemaV2SimpleAddressType)
      -- | A URL provided by this administrative body for looking up general election information.
    , electionInfoUrl :: (Core.Maybe Core.Text)
      -- | A last minute or emergency notification text provided by this administrative body.
    , electionNoticeText :: (Core.Maybe Core.Text)
      -- | A URL provided by this administrative body for additional information related to the last minute or emergency notification.
    , electionNoticeUrl :: (Core.Maybe Core.Text)
      -- | The election officials for this election administrative body.
    , electionOfficials :: (Core.Maybe [CivicinfoSchemaV2ElectionOfficial])
      -- | A URL provided by this administrative body for confirming that the voter is registered to vote.
    , electionRegistrationConfirmationUrl :: (Core.Maybe Core.Text)
      -- | A URL provided by this administrative body for looking up how to register to vote.
    , electionRegistrationUrl :: (Core.Maybe Core.Text)
      -- | A URL provided by this administrative body describing election rules to the voter.
    , electionRulesUrl :: (Core.Maybe Core.Text)
      -- | A description of the hours of operation for this administrative body.
    , hoursOfOperation :: (Core.Maybe Core.Text)
      -- | The name of this election administrative body.
    , name :: (Core.Maybe Core.Text)
      -- | The physical address of this administrative body.
    , physicalAddress :: (Core.Maybe CivicinfoSchemaV2SimpleAddressType)
      -- | A description of the services this administrative body may provide.
    , voterServices :: (Core.Maybe [Core.Text])
      -- | A URL provided by this administrative body for looking up where to vote.
    , votingLocationFinderUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2AdministrativeBody' with the minimum fields required to make a request.
newCivicinfoSchemaV2AdministrativeBody 
    :: 
                                       CivicinfoSchemaV2AdministrativeBody
newCivicinfoSchemaV2AdministrativeBody
  = CivicinfoSchemaV2AdministrativeBody{absenteeVotingInfoUrl =
                                          Core.Nothing,
                                        ballotInfoUrl = Core.Nothing,
                                        correspondenceAddress = Core.Nothing,
                                        electionInfoUrl = Core.Nothing,
                                        electionNoticeText = Core.Nothing,
                                        electionNoticeUrl = Core.Nothing,
                                        electionOfficials = Core.Nothing,
                                        electionRegistrationConfirmationUrl = Core.Nothing,
                                        electionRegistrationUrl = Core.Nothing,
                                        electionRulesUrl = Core.Nothing,
                                        hoursOfOperation = Core.Nothing, name = Core.Nothing,
                                        physicalAddress = Core.Nothing,
                                        voterServices = Core.Nothing,
                                        votingLocationFinderUrl = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2AdministrativeBody where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2AdministrativeBody"
              (\ o ->
                 CivicinfoSchemaV2AdministrativeBody Core.<$>
                   (o Core..:? "absenteeVotingInfoUrl") Core.<*>
                     (o Core..:? "ballotInfoUrl")
                     Core.<*> (o Core..:? "correspondenceAddress")
                     Core.<*> (o Core..:? "electionInfoUrl")
                     Core.<*> (o Core..:? "electionNoticeText")
                     Core.<*> (o Core..:? "electionNoticeUrl")
                     Core.<*> (o Core..:? "electionOfficials")
                     Core.<*> (o Core..:? "electionRegistrationConfirmationUrl")
                     Core.<*> (o Core..:? "electionRegistrationUrl")
                     Core.<*> (o Core..:? "electionRulesUrl")
                     Core.<*> (o Core..:? "hoursOfOperation")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "physicalAddress")
                     Core.<*> (o Core..:? "voter_services")
                     Core.<*> (o Core..:? "votingLocationFinderUrl"))

instance Core.ToJSON CivicinfoSchemaV2AdministrativeBody where
        toJSON CivicinfoSchemaV2AdministrativeBody{..}
          = Core.object
              (Core.catMaybes
                 [("absenteeVotingInfoUrl" Core..=) Core.<$> absenteeVotingInfoUrl,
                  ("ballotInfoUrl" Core..=) Core.<$> ballotInfoUrl,
                  ("correspondenceAddress" Core..=) Core.<$> correspondenceAddress,
                  ("electionInfoUrl" Core..=) Core.<$> electionInfoUrl,
                  ("electionNoticeText" Core..=) Core.<$> electionNoticeText,
                  ("electionNoticeUrl" Core..=) Core.<$> electionNoticeUrl,
                  ("electionOfficials" Core..=) Core.<$> electionOfficials,
                  ("electionRegistrationConfirmationUrl" Core..=) Core.<$>
                    electionRegistrationConfirmationUrl,
                  ("electionRegistrationUrl" Core..=) Core.<$>
                    electionRegistrationUrl,
                  ("electionRulesUrl" Core..=) Core.<$> electionRulesUrl,
                  ("hoursOfOperation" Core..=) Core.<$> hoursOfOperation,
                  ("name" Core..=) Core.<$> name,
                  ("physicalAddress" Core..=) Core.<$> physicalAddress,
                  ("voter_services" Core..=) Core.<$> voterServices,
                  ("votingLocationFinderUrl" Core..=) Core.<$>
                    votingLocationFinderUrl])


-- | Information about a candidate running for elected office.
--
-- /See:/ 'newCivicinfoSchemaV2Candidate' smart constructor.
data CivicinfoSchemaV2Candidate = CivicinfoSchemaV2Candidate
    {
      -- | The URL for the candidate\'s campaign web site.
      candidateUrl :: (Core.Maybe Core.Text)
      -- | A list of known (social) media channels for this candidate.
    , channels :: (Core.Maybe [CivicinfoSchemaV2Channel])
      -- | The email address for the candidate\'s campaign.
    , email :: (Core.Maybe Core.Text)
      -- | The candidate\'s name. If this is a joint ticket it will indicate the name of the candidate at the top of a ticket followed by a \/ and that name of candidate at the bottom of the ticket. e.g. \"Mitt Romney \/ Paul Ryan\"
    , name :: (Core.Maybe Core.Text)
      -- | The order the candidate appears on the ballot for this contest.
    , orderOnBallot :: (Core.Maybe Core.Int64)
      -- | The full name of the party the candidate is a member of.
    , party :: (Core.Maybe Core.Text)
      -- | The voice phone number for the candidate\'s campaign office.
    , phone :: (Core.Maybe Core.Text)
      -- | A URL for a photo of the candidate.
    , photoUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Candidate' with the minimum fields required to make a request.
newCivicinfoSchemaV2Candidate 
    ::  CivicinfoSchemaV2Candidate
newCivicinfoSchemaV2Candidate
  = CivicinfoSchemaV2Candidate{candidateUrl = Core.Nothing,
                               channels = Core.Nothing, email = Core.Nothing, name = Core.Nothing,
                               orderOnBallot = Core.Nothing, party = Core.Nothing,
                               phone = Core.Nothing, photoUrl = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Candidate where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Candidate"
              (\ o ->
                 CivicinfoSchemaV2Candidate Core.<$>
                   (o Core..:? "candidateUrl") Core.<*> (o Core..:? "channels")
                     Core.<*> (o Core..:? "email")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "orderOnBallot" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "party")
                     Core.<*> (o Core..:? "phone")
                     Core.<*> (o Core..:? "photoUrl"))

instance Core.ToJSON CivicinfoSchemaV2Candidate where
        toJSON CivicinfoSchemaV2Candidate{..}
          = Core.object
              (Core.catMaybes
                 [("candidateUrl" Core..=) Core.<$> candidateUrl,
                  ("channels" Core..=) Core.<$> channels,
                  ("email" Core..=) Core.<$> email, ("name" Core..=) Core.<$> name,
                  ("orderOnBallot" Core..=) Core.. Core.AsText Core.<$>
                    orderOnBallot,
                  ("party" Core..=) Core.<$> party, ("phone" Core..=) Core.<$> phone,
                  ("photoUrl" Core..=) Core.<$> photoUrl])


-- | A social media or web channel for a candidate.
--
-- /See:/ 'newCivicinfoSchemaV2Channel' smart constructor.
data CivicinfoSchemaV2Channel = CivicinfoSchemaV2Channel
    {
      -- | The unique public identifier for the candidate\'s channel.
      id :: (Core.Maybe Core.Text)
      -- | The type of channel. The following is a list of types of channels, but is not exhaustive. More channel types may be added at a later time. One of: GooglePlus, YouTube, Facebook, Twitter
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Channel' with the minimum fields required to make a request.
newCivicinfoSchemaV2Channel 
    ::  CivicinfoSchemaV2Channel
newCivicinfoSchemaV2Channel
  = CivicinfoSchemaV2Channel{id = Core.Nothing, type' = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Channel where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Channel"
              (\ o ->
                 CivicinfoSchemaV2Channel Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "type"))

instance Core.ToJSON CivicinfoSchemaV2Channel where
        toJSON CivicinfoSchemaV2Channel{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id, ("type" Core..=) Core.<$> type'])


-- | Information about a contest that appears on a voter\'s ballot.
--
-- /See:/ 'newCivicinfoSchemaV2Contest' smart constructor.
data CivicinfoSchemaV2Contest = CivicinfoSchemaV2Contest
    {
      -- | A number specifying the position of this contest on the voter\'s ballot.
      ballotPlacement :: (Core.Maybe Core.Int64)
      -- | The official title on the ballot for this contest, only where available.
    , ballotTitle :: (Core.Maybe Core.Text)
      -- | The candidate choices for this contest.
    , candidates :: (Core.Maybe [CivicinfoSchemaV2Candidate])
      -- | Information about the electoral district that this contest is in.
    , district :: (Core.Maybe CivicinfoSchemaV2ElectoralDistrict)
      -- | A description of any additional eligibility requirements for voting in this contest.
    , electorateSpecifications :: (Core.Maybe Core.Text)
      -- | The levels of government of the office for this contest. There may be more than one in cases where a jurisdiction effectively acts at two different levels of government; for example, the mayor of the District of Columbia acts at \"locality\" level, but also effectively at both \"administrative-area-2\" and \"administrative-area-1\".
    , level :: (Core.Maybe [CivicinfoSchemaV2Contest_LevelItem])
      -- | The number of candidates that will be elected to office in this contest.
    , numberElected :: (Core.Maybe Core.Int64)
      -- | The number of candidates that a voter may vote for in this contest.
    , numberVotingFor :: (Core.Maybe Core.Int64)
      -- | The name of the office for this contest.
    , office :: (Core.Maybe Core.Text)
      -- | If this is a partisan election, the name of the party\/parties it is for.
    , primaryParties :: (Core.Maybe [Core.Text])
      -- | The set of ballot responses for the referendum. A ballot response represents a line on the ballot. Common examples might include \"yes\" or \"no\" for referenda. This field is only populated for contests of type \'Referendum\'.
    , referendumBallotResponses :: (Core.Maybe [Core.Text])
      -- | Specifies a short summary of the referendum that is typically on the ballot below the title but above the text. This field is only populated for contests of type \'Referendum\'.
    , referendumBrief :: (Core.Maybe Core.Text)
      -- | A statement in opposition to the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type \'Referendum\'.
    , referendumConStatement :: (Core.Maybe Core.Text)
      -- | Specifies what effect abstaining (not voting) on the proposition will have (i.e. whether abstaining is considered a vote against it). This field is only populated for contests of type \'Referendum\'.
    , referendumEffectOfAbstain :: (Core.Maybe Core.Text)
      -- | The threshold of votes that the referendum needs in order to pass, e.g. \"two-thirds\". This field is only populated for contests of type \'Referendum\'.
    , referendumPassageThreshold :: (Core.Maybe Core.Text)
      -- | A statement in favor of the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type \'Referendum\'.
    , referendumProStatement :: (Core.Maybe Core.Text)
      -- | A brief description of the referendum. This field is only populated for contests of type \'Referendum\'.
    , referendumSubtitle :: (Core.Maybe Core.Text)
      -- | The full text of the referendum. This field is only populated for contests of type \'Referendum\'.
    , referendumText :: (Core.Maybe Core.Text)
      -- | The title of the referendum (e.g. \'Proposition 42\'). This field is only populated for contests of type \'Referendum\'.
    , referendumTitle :: (Core.Maybe Core.Text)
      -- | A link to the referendum. This field is only populated for contests of type \'Referendum\'.
    , referendumUrl :: (Core.Maybe Core.Text)
      -- | The roles which this office fulfills.
    , roles :: (Core.Maybe [CivicinfoSchemaV2Contest_RolesItem])
      -- | A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources.
    , sources :: (Core.Maybe [CivicinfoSchemaV2Source])
      -- | \"Yes\" or \"No\" depending on whether this a contest being held outside the normal election cycle.
    , special :: (Core.Maybe Core.Text)
      -- | The type of contest. Usually this will be \'General\', \'Primary\', or \'Run-off\' for contests with candidates. For referenda this will be \'Referendum\'. For Retention contests this will typically be \'Retention\'.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Contest' with the minimum fields required to make a request.
newCivicinfoSchemaV2Contest 
    ::  CivicinfoSchemaV2Contest
newCivicinfoSchemaV2Contest
  = CivicinfoSchemaV2Contest{ballotPlacement = Core.Nothing,
                             ballotTitle = Core.Nothing, candidates = Core.Nothing,
                             district = Core.Nothing, electorateSpecifications = Core.Nothing,
                             level = Core.Nothing, numberElected = Core.Nothing,
                             numberVotingFor = Core.Nothing, office = Core.Nothing,
                             primaryParties = Core.Nothing,
                             referendumBallotResponses = Core.Nothing,
                             referendumBrief = Core.Nothing,
                             referendumConStatement = Core.Nothing,
                             referendumEffectOfAbstain = Core.Nothing,
                             referendumPassageThreshold = Core.Nothing,
                             referendumProStatement = Core.Nothing,
                             referendumSubtitle = Core.Nothing, referendumText = Core.Nothing,
                             referendumTitle = Core.Nothing, referendumUrl = Core.Nothing,
                             roles = Core.Nothing, sources = Core.Nothing,
                             special = Core.Nothing, type' = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Contest where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Contest"
              (\ o ->
                 CivicinfoSchemaV2Contest Core.<$>
                   (o Core..:? "ballotPlacement" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "ballotTitle")
                     Core.<*> (o Core..:? "candidates")
                     Core.<*> (o Core..:? "district")
                     Core.<*> (o Core..:? "electorateSpecifications")
                     Core.<*> (o Core..:? "level")
                     Core.<*>
                     (o Core..:? "numberElected" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "numberVotingFor" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "office")
                     Core.<*> (o Core..:? "primaryParties")
                     Core.<*> (o Core..:? "referendumBallotResponses")
                     Core.<*> (o Core..:? "referendumBrief")
                     Core.<*> (o Core..:? "referendumConStatement")
                     Core.<*> (o Core..:? "referendumEffectOfAbstain")
                     Core.<*> (o Core..:? "referendumPassageThreshold")
                     Core.<*> (o Core..:? "referendumProStatement")
                     Core.<*> (o Core..:? "referendumSubtitle")
                     Core.<*> (o Core..:? "referendumText")
                     Core.<*> (o Core..:? "referendumTitle")
                     Core.<*> (o Core..:? "referendumUrl")
                     Core.<*> (o Core..:? "roles")
                     Core.<*> (o Core..:? "sources")
                     Core.<*> (o Core..:? "special")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON CivicinfoSchemaV2Contest where
        toJSON CivicinfoSchemaV2Contest{..}
          = Core.object
              (Core.catMaybes
                 [("ballotPlacement" Core..=) Core.. Core.AsText Core.<$>
                    ballotPlacement,
                  ("ballotTitle" Core..=) Core.<$> ballotTitle,
                  ("candidates" Core..=) Core.<$> candidates,
                  ("district" Core..=) Core.<$> district,
                  ("electorateSpecifications" Core..=) Core.<$>
                    electorateSpecifications,
                  ("level" Core..=) Core.<$> level,
                  ("numberElected" Core..=) Core.. Core.AsText Core.<$>
                    numberElected,
                  ("numberVotingFor" Core..=) Core.. Core.AsText Core.<$>
                    numberVotingFor,
                  ("office" Core..=) Core.<$> office,
                  ("primaryParties" Core..=) Core.<$> primaryParties,
                  ("referendumBallotResponses" Core..=) Core.<$>
                    referendumBallotResponses,
                  ("referendumBrief" Core..=) Core.<$> referendumBrief,
                  ("referendumConStatement" Core..=) Core.<$> referendumConStatement,
                  ("referendumEffectOfAbstain" Core..=) Core.<$>
                    referendumEffectOfAbstain,
                  ("referendumPassageThreshold" Core..=) Core.<$>
                    referendumPassageThreshold,
                  ("referendumProStatement" Core..=) Core.<$> referendumProStatement,
                  ("referendumSubtitle" Core..=) Core.<$> referendumSubtitle,
                  ("referendumText" Core..=) Core.<$> referendumText,
                  ("referendumTitle" Core..=) Core.<$> referendumTitle,
                  ("referendumUrl" Core..=) Core.<$> referendumUrl,
                  ("roles" Core..=) Core.<$> roles,
                  ("sources" Core..=) Core.<$> sources,
                  ("special" Core..=) Core.<$> special,
                  ("type" Core..=) Core.<$> type'])


-- | Information about the election that was queried.
--
-- /See:/ 'newCivicinfoSchemaV2Election' smart constructor.
data CivicinfoSchemaV2Election = CivicinfoSchemaV2Election
    {
      -- | Day of the election in YYYY-MM-DD format.
      electionDay :: (Core.Maybe Core.Text)
      -- | The unique ID of this election.
    , id :: (Core.Maybe Core.Int64)
      -- | A displayable name for the election.
    , name :: (Core.Maybe Core.Text)
      -- | The political division of the election. Represented as an OCD Division ID. Voters within these political jurisdictions are covered by this election. This is typically a state such as ocd-division\/country:us\/state:ca or for the midterms or general election the entire US (i.e. ocd-division\/country:us).
    , ocdDivisionId :: (Core.Maybe Core.Text)

    , shapeLookupBehavior :: (Core.Maybe CivicinfoSchemaV2Election_ShapeLookupBehavior)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Election' with the minimum fields required to make a request.
newCivicinfoSchemaV2Election 
    ::  CivicinfoSchemaV2Election
newCivicinfoSchemaV2Election
  = CivicinfoSchemaV2Election{electionDay = Core.Nothing,
                              id = Core.Nothing, name = Core.Nothing,
                              ocdDivisionId = Core.Nothing, shapeLookupBehavior = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Election where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Election"
              (\ o ->
                 CivicinfoSchemaV2Election Core.<$>
                   (o Core..:? "electionDay") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "ocdDivisionId")
                     Core.<*> (o Core..:? "shapeLookupBehavior"))

instance Core.ToJSON CivicinfoSchemaV2Election where
        toJSON CivicinfoSchemaV2Election{..}
          = Core.object
              (Core.catMaybes
                 [("electionDay" Core..=) Core.<$> electionDay,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("ocdDivisionId" Core..=) Core.<$> ocdDivisionId,
                  ("shapeLookupBehavior" Core..=) Core.<$> shapeLookupBehavior])


-- | Information about individual election officials.
--
-- /See:/ 'newCivicinfoSchemaV2ElectionOfficial' smart constructor.
data CivicinfoSchemaV2ElectionOfficial = CivicinfoSchemaV2ElectionOfficial
    {
      -- | The email address of the election official.
      emailAddress :: (Core.Maybe Core.Text)
      -- | The fax number of the election official.
    , faxNumber :: (Core.Maybe Core.Text)
      -- | The full name of the election official.
    , name :: (Core.Maybe Core.Text)
      -- | The office phone number of the election official.
    , officePhoneNumber :: (Core.Maybe Core.Text)
      -- | The title of the election official.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2ElectionOfficial' with the minimum fields required to make a request.
newCivicinfoSchemaV2ElectionOfficial 
    :: 
                                     CivicinfoSchemaV2ElectionOfficial
newCivicinfoSchemaV2ElectionOfficial
  = CivicinfoSchemaV2ElectionOfficial{emailAddress = Core.Nothing,
                                      faxNumber = Core.Nothing, name = Core.Nothing,
                                      officePhoneNumber = Core.Nothing, title = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2ElectionOfficial where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2ElectionOfficial"
              (\ o ->
                 CivicinfoSchemaV2ElectionOfficial Core.<$>
                   (o Core..:? "emailAddress") Core.<*> (o Core..:? "faxNumber")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "officePhoneNumber")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON CivicinfoSchemaV2ElectionOfficial where
        toJSON CivicinfoSchemaV2ElectionOfficial{..}
          = Core.object
              (Core.catMaybes
                 [("emailAddress" Core..=) Core.<$> emailAddress,
                  ("faxNumber" Core..=) Core.<$> faxNumber,
                  ("name" Core..=) Core.<$> name,
                  ("officePhoneNumber" Core..=) Core.<$> officePhoneNumber,
                  ("title" Core..=) Core.<$> title])


-- | Describes the geographic scope of a contest.
--
-- /See:/ 'newCivicinfoSchemaV2ElectoralDistrict' smart constructor.
data CivicinfoSchemaV2ElectoralDistrict = CivicinfoSchemaV2ElectoralDistrict
    {
      -- | An identifier for this district, relative to its scope. For example, the 34th State Senate district would have id \"34\" and a scope of stateUpper.
      id :: (Core.Maybe Core.Text)
      -- | The name of the district.
    , name :: (Core.Maybe Core.Text)
      -- | The geographic scope of this district. If unspecified the district\'s geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
    , scope :: (Core.Maybe CivicinfoSchemaV2ElectoralDistrict_Scope)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2ElectoralDistrict' with the minimum fields required to make a request.
newCivicinfoSchemaV2ElectoralDistrict 
    :: 
                                      CivicinfoSchemaV2ElectoralDistrict
newCivicinfoSchemaV2ElectoralDistrict
  = CivicinfoSchemaV2ElectoralDistrict{id = Core.Nothing,
                                       name = Core.Nothing, scope = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2ElectoralDistrict where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2ElectoralDistrict"
              (\ o ->
                 CivicinfoSchemaV2ElectoralDistrict Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "name") Core.<*>
                     (o Core..:? "scope"))

instance Core.ToJSON CivicinfoSchemaV2ElectoralDistrict where
        toJSON CivicinfoSchemaV2ElectoralDistrict{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id, ("name" Core..=) Core.<$> name,
                  ("scope" Core..=) Core.<$> scope])


-- | Describes a political geography.
--
-- /See:/ 'newCivicinfoSchemaV2GeographicDivision' smart constructor.
data CivicinfoSchemaV2GeographicDivision = CivicinfoSchemaV2GeographicDivision
    {
      -- | Any other valid OCD IDs that refer to the same division.\\n\\nBecause OCD IDs are meant to be human-readable and at least somewhat predictable, there are occasionally several identifiers for a single division. These identifiers are defined to be equivalent to one another, and one is always indicated as the primary identifier. The primary identifier will be returned in ocd_id above, and any other equivalent valid identifiers will be returned in this list.\\n\\nFor example, if this division\'s OCD ID is ocd-division\/country:us\/district:dc, this will contain ocd-division\/country:us\/state:dc.
      alsoKnownAs :: (Core.Maybe [Core.Text])
      -- | The name of the division.
    , name :: (Core.Maybe Core.Text)
      -- | List of indices in the offices array, one for each office elected from this division. Will only be present if includeOffices was true (or absent) in the request.
    , officeIndices :: (Core.Maybe [Core.Word32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2GeographicDivision' with the minimum fields required to make a request.
newCivicinfoSchemaV2GeographicDivision 
    :: 
                                       CivicinfoSchemaV2GeographicDivision
newCivicinfoSchemaV2GeographicDivision
  = CivicinfoSchemaV2GeographicDivision{alsoKnownAs = Core.Nothing,
                                        name = Core.Nothing, officeIndices = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2GeographicDivision where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2GeographicDivision"
              (\ o ->
                 CivicinfoSchemaV2GeographicDivision Core.<$>
                   (o Core..:? "alsoKnownAs") Core.<*> (o Core..:? "name") Core.<*>
                     (o Core..:? "officeIndices"))

instance Core.ToJSON CivicinfoSchemaV2GeographicDivision where
        toJSON CivicinfoSchemaV2GeographicDivision{..}
          = Core.object
              (Core.catMaybes
                 [("alsoKnownAs" Core..=) Core.<$> alsoKnownAs,
                  ("name" Core..=) Core.<$> name,
                  ("officeIndices" Core..=) Core.<$> officeIndices])


-- | A location where a voter can vote. This may be an early vote site, an election day voting location, or a drop off location for a completed ballot.
--
-- /See:/ 'newCivicinfoSchemaV2PollingLocation' smart constructor.
data CivicinfoSchemaV2PollingLocation = CivicinfoSchemaV2PollingLocation
    {
      -- | The address of the location.
      address :: (Core.Maybe CivicinfoSchemaV2SimpleAddressType)
      -- | The last date that this early vote site or drop off location may be used. This field is not populated for polling locations.
    , endDate :: (Core.Maybe Core.Text)
      -- | Latitude of the location, in degrees north of the equator. Note this field may not be available for some locations.
    , latitude :: (Core.Maybe Core.Double)
      -- | Longitude of the location, in degrees east of the Prime Meridian. Note this field may not be available for some locations.
    , longitude :: (Core.Maybe Core.Double)
      -- | The name of the early vote site or drop off location. This field is not populated for polling locations.
    , name :: (Core.Maybe Core.Text)
      -- | Notes about this location (e.g. accessibility ramp or entrance to use).
    , notes :: (Core.Maybe Core.Text)
      -- | A description of when this location is open.
    , pollingHours :: (Core.Maybe Core.Text)
      -- | A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources.
    , sources :: (Core.Maybe [CivicinfoSchemaV2Source])
      -- | The first date that this early vote site or drop off location may be used. This field is not populated for polling locations.
    , startDate :: (Core.Maybe Core.Text)
      -- | The services provided by this early vote site or drop off location. This field is not populated for polling locations.
    , voterServices :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2PollingLocation' with the minimum fields required to make a request.
newCivicinfoSchemaV2PollingLocation 
    :: 
                                    CivicinfoSchemaV2PollingLocation
newCivicinfoSchemaV2PollingLocation
  = CivicinfoSchemaV2PollingLocation{address = Core.Nothing,
                                     endDate = Core.Nothing, latitude = Core.Nothing,
                                     longitude = Core.Nothing, name = Core.Nothing,
                                     notes = Core.Nothing, pollingHours = Core.Nothing,
                                     sources = Core.Nothing, startDate = Core.Nothing,
                                     voterServices = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2PollingLocation where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2PollingLocation"
              (\ o ->
                 CivicinfoSchemaV2PollingLocation Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "endDate") Core.<*>
                     (o Core..:? "latitude")
                     Core.<*> (o Core..:? "longitude")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "pollingHours")
                     Core.<*> (o Core..:? "sources")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "voterServices"))

instance Core.ToJSON CivicinfoSchemaV2PollingLocation where
        toJSON CivicinfoSchemaV2PollingLocation{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude,
                  ("name" Core..=) Core.<$> name, ("notes" Core..=) Core.<$> notes,
                  ("pollingHours" Core..=) Core.<$> pollingHours,
                  ("sources" Core..=) Core.<$> sources,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("voterServices" Core..=) Core.<$> voterServices])


--
-- /See:/ 'newCivicinfoSchemaV2Precinct' smart constructor.
data CivicinfoSchemaV2Precinct = CivicinfoSchemaV2Precinct
    {
      -- | ID of the AdministrationRegion message for this precinct. Corresponds to LocalityId xml tag.
      administrationRegionId :: (Core.Maybe Core.Text)
      -- | ID(s) of the Contest message(s) for this precinct.
    , contestId :: (Core.Maybe [Core.Text])
      -- | Required. Dataset ID. What datasets our Precincts come from.
    , datasetId :: (Core.Maybe Core.Int64)
      -- | ID(s) of the PollingLocation message(s) for this precinct.
    , earlyVoteSiteId :: (Core.Maybe [Core.Text])
      -- | ID(s) of the ElectoralDistrict message(s) for this precinct.
    , electoralDistrictId :: (Core.Maybe [Core.Text])
      -- | Required. A unique identifier for this precinct.
    , id :: (Core.Maybe Core.Text)
      -- | Specifies if the precinct runs mail-only elections.
    , mailOnly :: (Core.Maybe Core.Bool)
      -- | Required. The name of the precinct.
    , name :: (Core.Maybe Core.Text)
      -- | The number of the precinct.
    , number :: (Core.Maybe Core.Text)
      -- | Encouraged. The OCD ID of the precinct
    , ocdId :: (Core.Maybe [Core.Text])
      -- | ID(s) of the PollingLocation message(s) for this precinct.
    , pollingLocationId :: (Core.Maybe [Core.Text])
      -- | ID(s) of the SpatialBoundary message(s) for this precinct. Used to specify a geometrical boundary of the precinct.
    , spatialBoundaryId :: (Core.Maybe [Core.Text])
      -- | If present, this proto corresponds to one portion of split precinct. Other portions of this precinct are guaranteed to have the same @name@. If not present, this proto represents a full precicnt.
    , splitName :: (Core.Maybe Core.Text)
      -- | Specifies the ward the precinct is contained within.
    , ward :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Precinct' with the minimum fields required to make a request.
newCivicinfoSchemaV2Precinct 
    ::  CivicinfoSchemaV2Precinct
newCivicinfoSchemaV2Precinct
  = CivicinfoSchemaV2Precinct{administrationRegionId = Core.Nothing,
                              contestId = Core.Nothing, datasetId = Core.Nothing,
                              earlyVoteSiteId = Core.Nothing, electoralDistrictId = Core.Nothing,
                              id = Core.Nothing, mailOnly = Core.Nothing, name = Core.Nothing,
                              number = Core.Nothing, ocdId = Core.Nothing,
                              pollingLocationId = Core.Nothing, spatialBoundaryId = Core.Nothing,
                              splitName = Core.Nothing, ward = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Precinct where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Precinct"
              (\ o ->
                 CivicinfoSchemaV2Precinct Core.<$>
                   (o Core..:? "administrationRegionId") Core.<*>
                     (o Core..:? "contestId")
                     Core.<*>
                     (o Core..:? "datasetId" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "earlyVoteSiteId")
                     Core.<*> (o Core..:? "electoralDistrictId")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "mailOnly")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "number")
                     Core.<*> (o Core..:? "ocdId")
                     Core.<*> (o Core..:? "pollingLocationId")
                     Core.<*> (o Core..:? "spatialBoundaryId")
                     Core.<*> (o Core..:? "splitName")
                     Core.<*> (o Core..:? "ward"))

instance Core.ToJSON CivicinfoSchemaV2Precinct where
        toJSON CivicinfoSchemaV2Precinct{..}
          = Core.object
              (Core.catMaybes
                 [("administrationRegionId" Core..=) Core.<$>
                    administrationRegionId,
                  ("contestId" Core..=) Core.<$> contestId,
                  ("datasetId" Core..=) Core.. Core.AsText Core.<$> datasetId,
                  ("earlyVoteSiteId" Core..=) Core.<$> earlyVoteSiteId,
                  ("electoralDistrictId" Core..=) Core.<$> electoralDistrictId,
                  ("id" Core..=) Core.<$> id, ("mailOnly" Core..=) Core.<$> mailOnly,
                  ("name" Core..=) Core.<$> name, ("number" Core..=) Core.<$> number,
                  ("ocdId" Core..=) Core.<$> ocdId,
                  ("pollingLocationId" Core..=) Core.<$> pollingLocationId,
                  ("spatialBoundaryId" Core..=) Core.<$> spatialBoundaryId,
                  ("splitName" Core..=) Core.<$> splitName,
                  ("ward" Core..=) Core.<$> ward])


-- | A simple representation of an address.
--
-- /See:/ 'newCivicinfoSchemaV2SimpleAddressType' smart constructor.
data CivicinfoSchemaV2SimpleAddressType = CivicinfoSchemaV2SimpleAddressType
    {
      -- | The city or town for the address.
      city :: (Core.Maybe Core.Text)
      -- | The street name and number of this address.
    , line1 :: (Core.Maybe Core.Text)
      -- | The second line the address, if needed.
    , line2 :: (Core.Maybe Core.Text)
      -- | The third line of the address, if needed.
    , line3 :: (Core.Maybe Core.Text)
      -- | The name of the location.
    , locationName :: (Core.Maybe Core.Text)
      -- | The US two letter state abbreviation of the address.
    , state :: (Core.Maybe Core.Text)
      -- | The US Postal Zip Code of the address.
    , zip :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2SimpleAddressType' with the minimum fields required to make a request.
newCivicinfoSchemaV2SimpleAddressType 
    :: 
                                      CivicinfoSchemaV2SimpleAddressType
newCivicinfoSchemaV2SimpleAddressType
  = CivicinfoSchemaV2SimpleAddressType{city = Core.Nothing,
                                       line1 = Core.Nothing, line2 = Core.Nothing,
                                       line3 = Core.Nothing, locationName = Core.Nothing,
                                       state = Core.Nothing, zip = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2SimpleAddressType where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2SimpleAddressType"
              (\ o ->
                 CivicinfoSchemaV2SimpleAddressType Core.<$>
                   (o Core..:? "city") Core.<*> (o Core..:? "line1") Core.<*>
                     (o Core..:? "line2")
                     Core.<*> (o Core..:? "line3")
                     Core.<*> (o Core..:? "locationName")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "zip"))

instance Core.ToJSON CivicinfoSchemaV2SimpleAddressType where
        toJSON CivicinfoSchemaV2SimpleAddressType{..}
          = Core.object
              (Core.catMaybes
                 [("city" Core..=) Core.<$> city, ("line1" Core..=) Core.<$> line1,
                  ("line2" Core..=) Core.<$> line2, ("line3" Core..=) Core.<$> line3,
                  ("locationName" Core..=) Core.<$> locationName,
                  ("state" Core..=) Core.<$> state, ("zip" Core..=) Core.<$> zip])


-- | Contains information about the data source for the element containing it.
--
-- /See:/ 'newCivicinfoSchemaV2Source' smart constructor.
data CivicinfoSchemaV2Source = CivicinfoSchemaV2Source
    {
      -- | The name of the data source.
      name :: (Core.Maybe Core.Text)
      -- | Whether this data comes from an official government source.
    , official :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicinfoSchemaV2Source' with the minimum fields required to make a request.
newCivicinfoSchemaV2Source 
    ::  CivicinfoSchemaV2Source
newCivicinfoSchemaV2Source
  = CivicinfoSchemaV2Source{name = Core.Nothing,
                            official = Core.Nothing}
instance Core.FromJSON CivicinfoSchemaV2Source where
        parseJSON
          = Core.withObject "CivicinfoSchemaV2Source"
              (\ o ->
                 CivicinfoSchemaV2Source Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "official"))

instance Core.ToJSON CivicinfoSchemaV2Source where
        toJSON CivicinfoSchemaV2Source{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("official" Core..=) Core.<$> official])

