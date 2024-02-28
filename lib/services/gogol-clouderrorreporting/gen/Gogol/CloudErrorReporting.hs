{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudErrorReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Groups and counts similar errors from cloud services and applications, reports new errors, and provides access to error groups and their associated errors.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference>
module Gogol.CloudErrorReporting
    (
    -- * Configuration
      cloudErrorReportingService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** clouderrorreporting.projects.deleteEvents
    , CloudErrorReportingProjectsDeleteEventsResource
    , CloudErrorReportingProjectsDeleteEvents (..)
    , newCloudErrorReportingProjectsDeleteEvents

    -- ** clouderrorreporting.projects.events.list
    , CloudErrorReportingProjectsEventsListResource
    , CloudErrorReportingProjectsEventsList (..)
    , newCloudErrorReportingProjectsEventsList

    -- ** clouderrorreporting.projects.events.report
    , CloudErrorReportingProjectsEventsReportResource
    , CloudErrorReportingProjectsEventsReport (..)
    , newCloudErrorReportingProjectsEventsReport

    -- ** clouderrorreporting.projects.groupStats.list
    , CloudErrorReportingProjectsGroupStatsListResource
    , CloudErrorReportingProjectsGroupStatsList (..)
    , newCloudErrorReportingProjectsGroupStatsList

    -- ** clouderrorreporting.projects.groups.get
    , CloudErrorReportingProjectsGroupsGetResource
    , CloudErrorReportingProjectsGroupsGet (..)
    , newCloudErrorReportingProjectsGroupsGet

    -- ** clouderrorreporting.projects.groups.update
    , CloudErrorReportingProjectsGroupsUpdateResource
    , CloudErrorReportingProjectsGroupsUpdate (..)
    , newCloudErrorReportingProjectsGroupsUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** DeleteEventsResponse
    , DeleteEventsResponse (..)
    , newDeleteEventsResponse

    -- ** ErrorContext
    , ErrorContext (..)
    , newErrorContext

    -- ** ErrorEvent
    , ErrorEvent (..)
    , newErrorEvent

    -- ** ErrorGroup
    , ErrorGroup (..)
    , newErrorGroup

    -- ** ErrorGroup_ResolutionStatus
    , ErrorGroup_ResolutionStatus (..)

    -- ** ErrorGroupStats
    , ErrorGroupStats (..)
    , newErrorGroupStats

    -- ** HttpRequestContext
    , HttpRequestContext (..)
    , newHttpRequestContext

    -- ** ListEventsResponse
    , ListEventsResponse (..)
    , newListEventsResponse

    -- ** ListGroupStatsResponse
    , ListGroupStatsResponse (..)
    , newListGroupStatsResponse

    -- ** ReportErrorEventResponse
    , ReportErrorEventResponse (..)
    , newReportErrorEventResponse

    -- ** ReportedErrorEvent
    , ReportedErrorEvent (..)
    , newReportedErrorEvent

    -- ** ServiceContext
    , ServiceContext (..)
    , newServiceContext

    -- ** SourceLocation
    , SourceLocation (..)
    , newSourceLocation

    -- ** SourceReference
    , SourceReference (..)
    , newSourceReference

    -- ** TimedCount
    , TimedCount (..)
    , newTimedCount

    -- ** TrackingIssue
    , TrackingIssue (..)
    , newTrackingIssue

    -- ** ProjectsEventsListTimeRangePeriod
    , ProjectsEventsListTimeRangePeriod (..)

    -- ** ProjectsGroupStatsListAlignment
    , ProjectsGroupStatsListAlignment (..)

    -- ** ProjectsGroupStatsListOrder
    , ProjectsGroupStatsListOrder (..)

    -- ** ProjectsGroupStatsListTimeRangePeriod
    , ProjectsGroupStatsListTimeRangePeriod (..)
    ) where

import Gogol.CloudErrorReporting.Projects.DeleteEvents
import Gogol.CloudErrorReporting.Projects.Events.List
import Gogol.CloudErrorReporting.Projects.Events.Report
import Gogol.CloudErrorReporting.Projects.GroupStats.List
import Gogol.CloudErrorReporting.Projects.Groups.Get
import Gogol.CloudErrorReporting.Projects.Groups.Update
import Gogol.CloudErrorReporting.Types