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
-- Module      : Gogol.Admin.Reports.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Admin.Reports.Internal.Product
  (

    -- * Activities
    Activities (..),
    newActivities,

    -- * Activity
    Activity (..),
    newActivity,

    -- * Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- * Activity_Actor_ApplicationInfo
    Activity_Actor_ApplicationInfo (..),
    newActivity_Actor_ApplicationInfo,

    -- * Activity_EventsItem
    Activity_EventsItem (..),
    newActivity_EventsItem,

    -- * Activity_EventsItem_ParametersItem
    Activity_EventsItem_ParametersItem (..),
    newActivity_EventsItem_ParametersItem,

    -- * Activity_EventsItem_ParametersItem_MessageValue
    Activity_EventsItem_ParametersItem_MessageValue (..),
    newActivity_EventsItem_ParametersItem_MessageValue,

    -- * Activity_EventsItem_ParametersItem_MultiMessageValueItem
    Activity_EventsItem_ParametersItem_MultiMessageValueItem (..),
    newActivity_EventsItem_ParametersItem_MultiMessageValueItem,

    -- * Activity_Id
    Activity_Id (..),
    newActivity_Id,

    -- * AppliedLabel
    AppliedLabel (..),
    newAppliedLabel,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * Date
    Date (..),
    newDate,

    -- * FieldValue
    FieldValue (..),
    newFieldValue,

    -- * FieldValueSelectionListValue
    FieldValueSelectionListValue (..),
    newFieldValueSelectionListValue,

    -- * FieldValueSelectionValue
    FieldValueSelectionValue (..),
    newFieldValueSelectionValue,

    -- * FieldValueTextListValue
    FieldValueTextListValue (..),
    newFieldValueTextListValue,

    -- * FieldValueUserListValue
    FieldValueUserListValue (..),
    newFieldValueUserListValue,

    -- * FieldValueUserValue
    FieldValueUserValue (..),
    newFieldValueUserValue,

    -- * NestedParameter
    NestedParameter (..),
    newNestedParameter,

    -- * Reason
    Reason (..),
    newReason,

    -- * ResourceDetails
    ResourceDetails (..),
    newResourceDetails,

    -- * UsageReport
    UsageReport (..),
    newUsageReport,

    -- * UsageReport_Entity
    UsageReport_Entity (..),
    newUsageReport_Entity,

    -- * UsageReport_ParametersItem
    UsageReport_ParametersItem (..),
    newUsageReport_ParametersItem,

    -- * UsageReport_ParametersItem_MsgValueItem
    UsageReport_ParametersItem_MsgValueItem (..),
    newUsageReport_ParametersItem_MsgValueItem,

    -- * UsageReports
    UsageReports (..),
    newUsageReports,

    -- * UsageReports_WarningsItem
    UsageReports_WarningsItem (..),
    newUsageReports_WarningsItem,

    -- * UsageReports_WarningsItem_DataItem
    UsageReports_WarningsItem_DataItem (..),
    newUsageReports_WarningsItem_DataItem,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Reports.Internal.Sum

-- | JSON template for a collection of activities.
--
-- /See:/ 'newActivities' smart constructor.
data Activities = Activities
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | Each activity record in the response.
    , items :: (Core.Maybe [Activity])
      -- | The type of API resource. For an activity report, the value is @reports#activities@.
    , kind :: Core.Text
      -- | Token for retrieving the follow-on next page of the report. The @nextPageToken@ value is used in the request\'s @pageToken@ query string.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
newActivities 
    ::  Activities
newActivities
  = Activities{etag = Core.Nothing, items = Core.Nothing,
               kind = "admin#reports#activities", nextPageToken = Core.Nothing}
instance Core.FromJSON Activities where
        parseJSON
          = Core.withObject "Activities"
              (\ o ->
                 Activities Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items") Core.<*>
                     (o Core..:? "kind" Core..!= "admin#reports#activities")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON Activities where
        toJSON Activities{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag, ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | JSON template for the activity resource.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
    {
      -- | User doing the action.
      actor :: (Core.Maybe Activity_Actor)
      -- | ETag of the entry.
    , etag :: (Core.Maybe Core.Text)
      -- | Activity events in the report.
    , events :: (Core.Maybe [Activity_EventsItem])
      -- | Unique identifier for each activity record.
    , id :: (Core.Maybe Activity_Id)
      -- | IP address of the user doing the action. This is the Internet Protocol (IP) address of the user when logging into Google Workspace, which may or may not reflect the user\'s physical location. For example, the IP address can be the user\'s proxy server\'s address or a virtual private network (VPN) address. The API supports IPv4 and IPv6.
    , ipAddress :: (Core.Maybe Core.Text)
      -- | The type of API resource. For an activity report, the value is @audit#activity@.
    , kind :: Core.Text
      -- | This is the domain that is affected by the report\'s event. For example domain of Admin console or the Drive application\'s document owner.
    , ownerDomain :: (Core.Maybe Core.Text)
      -- | Details of the resource on which the action was performed.
    , resourceDetails :: (Core.Maybe [ResourceDetails])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity 
    ::  Activity
newActivity
  = Activity{actor = Core.Nothing, etag = Core.Nothing,
             events = Core.Nothing, id = Core.Nothing, ipAddress = Core.Nothing,
             kind = "admin#reports#activity", ownerDomain = Core.Nothing,
             resourceDetails = Core.Nothing}
instance Core.FromJSON Activity where
        parseJSON
          = Core.withObject "Activity"
              (\ o ->
                 Activity Core.<$>
                   (o Core..:? "actor") Core.<*> (o Core..:? "etag") Core.<*>
                     (o Core..:? "events")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "ipAddress")
                     Core.<*> (o Core..:? "kind" Core..!= "admin#reports#activity")
                     Core.<*> (o Core..:? "ownerDomain")
                     Core.<*> (o Core..:? "resourceDetails"))

instance Core.ToJSON Activity where
        toJSON Activity{..}
          = Core.object
              (Core.catMaybes
                 [("actor" Core..=) Core.<$> actor, ("etag" Core..=) Core.<$> etag,
                  ("events" Core..=) Core.<$> events, ("id" Core..=) Core.<$> id,
                  ("ipAddress" Core..=) Core.<$> ipAddress,
                  Core.Just ("kind" Core..= kind),
                  ("ownerDomain" Core..=) Core.<$> ownerDomain,
                  ("resourceDetails" Core..=) Core.<$> resourceDetails])


-- | User doing the action.
--
-- /See:/ 'newActivity_Actor' smart constructor.
data Activity_Actor = Activity_Actor
    {
      -- | Details of the application that was the actor for the activity.
      applicationInfo :: (Core.Maybe Activity_Actor_ApplicationInfo)
      -- | The type of actor.
    , callerType :: (Core.Maybe Core.Text)
      -- | The primary email address of the actor. May be absent if there is no email address associated with the actor.
    , email :: (Core.Maybe Core.Text)
      -- | Only present when @callerType@ is @KEY@. Can be the @consumer_key@ of the requestor for OAuth 2LO API requests or an identifier for robot accounts.
    , key :: (Core.Maybe Core.Text)
      -- | The unique Google Workspace profile ID of the actor. This value might be absent if the actor is not a Google Workspace user, or may be the number 105250506097979753968 which acts as a placeholder ID.
    , profileId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor' with the minimum fields required to make a request.
newActivity_Actor 
    ::  Activity_Actor
newActivity_Actor
  = Activity_Actor{applicationInfo = Core.Nothing,
                   callerType = Core.Nothing, email = Core.Nothing,
                   key = Core.Nothing, profileId = Core.Nothing}
instance Core.FromJSON Activity_Actor where
        parseJSON
          = Core.withObject "Activity_Actor"
              (\ o ->
                 Activity_Actor Core.<$>
                   (o Core..:? "applicationInfo") Core.<*> (o Core..:? "callerType")
                     Core.<*> (o Core..:? "email")
                     Core.<*> (o Core..:? "key")
                     Core.<*> (o Core..:? "profileId"))

instance Core.ToJSON Activity_Actor where
        toJSON Activity_Actor{..}
          = Core.object
              (Core.catMaybes
                 [("applicationInfo" Core..=) Core.<$> applicationInfo,
                  ("callerType" Core..=) Core.<$> callerType,
                  ("email" Core..=) Core.<$> email, ("key" Core..=) Core.<$> key,
                  ("profileId" Core..=) Core.<$> profileId])


-- | Details of the application that was the actor for the activity.
--
-- /See:/ 'newActivity_Actor_ApplicationInfo' smart constructor.
data Activity_Actor_ApplicationInfo = Activity_Actor_ApplicationInfo
    {
      -- | Name of the application used to perform the action.
      applicationName :: (Core.Maybe Core.Text)
      -- | Whether the application was impersonating a user.
    , impersonation :: (Core.Maybe Core.Bool)
      -- | OAuth client id of the third party application used to perform the action.
    , oauthClientId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_ApplicationInfo' with the minimum fields required to make a request.
newActivity_Actor_ApplicationInfo 
    ::  Activity_Actor_ApplicationInfo
newActivity_Actor_ApplicationInfo
  = Activity_Actor_ApplicationInfo{applicationName = Core.Nothing,
                                   impersonation = Core.Nothing, oauthClientId = Core.Nothing}
instance Core.FromJSON Activity_Actor_ApplicationInfo where
        parseJSON
          = Core.withObject "Activity_Actor_ApplicationInfo"
              (\ o ->
                 Activity_Actor_ApplicationInfo Core.<$>
                   (o Core..:? "applicationName") Core.<*>
                     (o Core..:? "impersonation")
                     Core.<*> (o Core..:? "oauthClientId"))

instance Core.ToJSON Activity_Actor_ApplicationInfo where
        toJSON Activity_Actor_ApplicationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("applicationName" Core..=) Core.<$> applicationName,
                  ("impersonation" Core..=) Core.<$> impersonation,
                  ("oauthClientId" Core..=) Core.<$> oauthClientId])


--
-- /See:/ 'newActivity_EventsItem' smart constructor.
data Activity_EventsItem = Activity_EventsItem
    {
      -- | Name of the event. This is the specific name of the activity reported by the API. And each @eventName@ is related to a specific Google Workspace service or feature which the API organizes into types of events. For @eventName@ request parameters in general: - If no @eventName@ is given, the report returns all possible instances of an @eventName@. - When you request an @eventName@, the API\'s response returns all activities which contain that @eventName@. For more information about @eventName@ properties, see the list of event names for various applications above in @applicationName@.
      name :: (Core.Maybe Core.Text)
      -- | Parameter value pairs for various applications. For more information about @eventName@ parameters, see the list of event names for various applications above in @applicationName@.
    , parameters :: (Core.Maybe [Activity_EventsItem_ParametersItem])
      -- | Resource ids associated with the event.
    , resourceIds :: (Core.Maybe [Core.Text])
      -- | Type of event. The Google Workspace service or feature that an administrator changes is identified in the @type@ property which identifies an event using the @eventName@ property. For a full list of the API\'s @type@ categories, see the list of event names for various applications above in @applicationName@.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem' with the minimum fields required to make a request.
newActivity_EventsItem 
    ::  Activity_EventsItem
newActivity_EventsItem
  = Activity_EventsItem{name = Core.Nothing,
                        parameters = Core.Nothing, resourceIds = Core.Nothing,
                        type' = Core.Nothing}
instance Core.FromJSON Activity_EventsItem where
        parseJSON
          = Core.withObject "Activity_EventsItem"
              (\ o ->
                 Activity_EventsItem Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "parameters") Core.<*>
                     (o Core..:? "resourceIds")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Activity_EventsItem where
        toJSON Activity_EventsItem{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("parameters" Core..=) Core.<$> parameters,
                  ("resourceIds" Core..=) Core.<$> resourceIds,
                  ("type" Core..=) Core.<$> type'])


--
-- /See:/ 'newActivity_EventsItem_ParametersItem' smart constructor.
data Activity_EventsItem_ParametersItem = Activity_EventsItem_ParametersItem
    {
      -- | Boolean value of the parameter.
      boolValue :: (Core.Maybe Core.Bool)
      -- | Integer value of the parameter.
    , intValue :: (Core.Maybe Core.Int64)
      -- | Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as @[{parameter: [{name: city, value: abc}]}]@
    , messageValue :: (Core.Maybe Activity_EventsItem_ParametersItem_MessageValue)
      -- | Integer values of the parameter.
    , multiIntValue :: (Core.Maybe [Core.Int64])
      -- | List of @messageValue@ objects.
    , multiMessageValue :: (Core.Maybe
   [Activity_EventsItem_ParametersItem_MultiMessageValueItem])
      -- | String values of the parameter.
    , multiValue :: (Core.Maybe [Core.Text])
      -- | The name of the parameter.
    , name :: (Core.Maybe Core.Text)
      -- | String value of the parameter.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem 
    :: 
                                      Activity_EventsItem_ParametersItem
newActivity_EventsItem_ParametersItem
  = Activity_EventsItem_ParametersItem{boolValue = Core.Nothing,
                                       intValue = Core.Nothing, messageValue = Core.Nothing,
                                       multiIntValue = Core.Nothing,
                                       multiMessageValue = Core.Nothing, multiValue = Core.Nothing,
                                       name = Core.Nothing, value = Core.Nothing}
instance Core.FromJSON Activity_EventsItem_ParametersItem where
        parseJSON
          = Core.withObject "Activity_EventsItem_ParametersItem"
              (\ o ->
                 Activity_EventsItem_ParametersItem Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "intValue" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "messageValue")
                     Core.<*>
                     (o Core..:? "multiIntValue" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "multiMessageValue")
                     Core.<*> (o Core..:? "multiValue")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON Activity_EventsItem_ParametersItem where
        toJSON Activity_EventsItem_ParametersItem{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("intValue" Core..=) Core.. Core.AsText Core.<$> intValue,
                  ("messageValue" Core..=) Core.<$> messageValue,
                  ("multiIntValue" Core..=) Core.. Core.fmap Core.AsText Core.<$>
                    multiIntValue,
                  ("multiMessageValue" Core..=) Core.<$> multiMessageValue,
                  ("multiValue" Core..=) Core.<$> multiValue,
                  ("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value])


-- | Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as @[{parameter: [{name: city, value: abc}]}]@
--
-- /See:/ 'newActivity_EventsItem_ParametersItem_MessageValue' smart constructor.
newtype Activity_EventsItem_ParametersItem_MessageValue = Activity_EventsItem_ParametersItem_MessageValue
    {
      -- | Parameter values
      parameter :: (Core.Maybe [NestedParameter])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem_MessageValue' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem_MessageValue 
    :: 
                                                   Activity_EventsItem_ParametersItem_MessageValue
newActivity_EventsItem_ParametersItem_MessageValue
  = Activity_EventsItem_ParametersItem_MessageValue{parameter =
                                                      Core.Nothing}
instance Core.FromJSON
           Activity_EventsItem_ParametersItem_MessageValue
         where
        parseJSON
          = Core.withObject "Activity_EventsItem_ParametersItem_MessageValue"
              (\ o ->
                 Activity_EventsItem_ParametersItem_MessageValue Core.<$>
                   (o Core..:? "parameter"))

instance Core.ToJSON
           Activity_EventsItem_ParametersItem_MessageValue
         where
        toJSON Activity_EventsItem_ParametersItem_MessageValue{..}
          = Core.object
              (Core.catMaybes [("parameter" Core..=) Core.<$> parameter])


--
-- /See:/ 'newActivity_EventsItem_ParametersItem_MultiMessageValueItem' smart constructor.
newtype Activity_EventsItem_ParametersItem_MultiMessageValueItem = Activity_EventsItem_ParametersItem_MultiMessageValueItem
    {
      -- | Parameter values
      parameter :: (Core.Maybe [NestedParameter])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_EventsItem_ParametersItem_MultiMessageValueItem' with the minimum fields required to make a request.
newActivity_EventsItem_ParametersItem_MultiMessageValueItem 
    :: 
                                                            Activity_EventsItem_ParametersItem_MultiMessageValueItem
newActivity_EventsItem_ParametersItem_MultiMessageValueItem
  = Activity_EventsItem_ParametersItem_MultiMessageValueItem{parameter
                                                               = Core.Nothing}
instance Core.FromJSON
           Activity_EventsItem_ParametersItem_MultiMessageValueItem
         where
        parseJSON
          = Core.withObject
              "Activity_EventsItem_ParametersItem_MultiMessageValueItem"
              (\ o ->
                 Activity_EventsItem_ParametersItem_MultiMessageValueItem Core.<$>
                   (o Core..:? "parameter"))

instance Core.ToJSON
           Activity_EventsItem_ParametersItem_MultiMessageValueItem
         where
        toJSON Activity_EventsItem_ParametersItem_MultiMessageValueItem{..}
          = Core.object
              (Core.catMaybes [("parameter" Core..=) Core.<$> parameter])


-- | Unique identifier for each activity record.
--
-- /See:/ 'newActivity_Id' smart constructor.
data Activity_Id = Activity_Id
    {
      -- | Application name to which the event belongs. For possible values see the list of applications above in @applicationName@.
      applicationName :: (Core.Maybe Core.Text)
      -- | The unique identifier for a Google Workspace account.
    , customerId :: (Core.Maybe Core.Text)
      -- | Time of occurrence of the activity. This is in UNIX epoch time in seconds.
    , time :: (Core.Maybe Core.DateTime)
      -- | Unique qualifier if multiple events have the same time.
    , uniqueQualifier :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Id' with the minimum fields required to make a request.
newActivity_Id 
    ::  Activity_Id
newActivity_Id
  = Activity_Id{applicationName = Core.Nothing,
                customerId = Core.Nothing, time = Core.Nothing,
                uniqueQualifier = Core.Nothing}
instance Core.FromJSON Activity_Id where
        parseJSON
          = Core.withObject "Activity_Id"
              (\ o ->
                 Activity_Id Core.<$>
                   (o Core..:? "applicationName") Core.<*> (o Core..:? "customerId")
                     Core.<*> (o Core..:? "time")
                     Core.<*>
                     (o Core..:? "uniqueQualifier" Core.<&> Core.fmap Core.fromAsText))

instance Core.ToJSON Activity_Id where
        toJSON Activity_Id{..}
          = Core.object
              (Core.catMaybes
                 [("applicationName" Core..=) Core.<$> applicationName,
                  ("customerId" Core..=) Core.<$> customerId,
                  ("time" Core..=) Core.<$> time,
                  ("uniqueQualifier" Core..=) Core.. Core.AsText Core.<$>
                    uniqueQualifier])


-- | Details of the label applied on the resource.
--
-- /See:/ 'newAppliedLabel' smart constructor.
data AppliedLabel = AppliedLabel
    {
      -- | List of fields which are part of the label and have been set by the user. If label has a field which was not set by the user, it would not be present in this list.
      fieldValues :: (Core.Maybe [FieldValue])
      -- | Identifier of the label - Only the label id, not the full OnePlatform resource name.
    , id :: (Core.Maybe Core.Text)
      -- | The reason why the label was applied on the resource.
    , reason :: (Core.Maybe Reason)
      -- | Title of the label
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppliedLabel' with the minimum fields required to make a request.
newAppliedLabel 
    ::  AppliedLabel
newAppliedLabel
  = AppliedLabel{fieldValues = Core.Nothing, id = Core.Nothing,
                 reason = Core.Nothing, title = Core.Nothing}
instance Core.FromJSON AppliedLabel where
        parseJSON
          = Core.withObject "AppliedLabel"
              (\ o ->
                 AppliedLabel Core.<$>
                   (o Core..:? "fieldValues") Core.<*> (o Core..:? "id") Core.<*>
                     (o Core..:? "reason")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON AppliedLabel where
        toJSON AppliedLabel{..}
          = Core.object
              (Core.catMaybes
                 [("fieldValues" Core..=) Core.<$> fieldValues,
                  ("id" Core..=) Core.<$> id, ("reason" Core..=) Core.<$> reason,
                  ("title" Core..=) Core.<$> title])


-- | A notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
    {
      -- | The address where notifications are delivered for this channel.
      address :: (Core.Maybe Core.Text)
      -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    , expiration :: (Core.Maybe Core.Int64)
      -- | A UUID or similar unique string that identifies this channel.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies this as a notification channel used to watch for changes to a resource, which is \"@api#channel@\".
    , kind :: Core.Text
      -- | Additional parameters controlling delivery channel behavior. Optional.
    , params :: (Core.Maybe Channel_Params)
      -- | A Boolean value to indicate whether payload is wanted. A payload is data that is sent in the body of an HTTP POST, PUT, or PATCH message and contains important information about the request. Optional.
    , payload :: (Core.Maybe Core.Bool)
      -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    , resourceId :: (Core.Maybe Core.Text)
      -- | A version-specific identifier for the watched resource.
    , resourceUri :: (Core.Maybe Core.Text)
      -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    , token :: (Core.Maybe Core.Text)
      -- | The type of delivery mechanism used for this channel. The value should be set to @\"web_hook\"@.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel 
    ::  Channel
newChannel
  = Channel{address = Core.Nothing, expiration = Core.Nothing,
            id = Core.Nothing, kind = "api#channel", params = Core.Nothing,
            payload = Core.Nothing, resourceId = Core.Nothing,
            resourceUri = Core.Nothing, token = Core.Nothing,
            type' = Core.Nothing}
instance Core.FromJSON Channel where
        parseJSON
          = Core.withObject "Channel"
              (\ o ->
                 Channel Core.<$>
                   (o Core..:? "address") Core.<*>
                     (o Core..:? "expiration" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "api#channel")
                     Core.<*> (o Core..:? "params")
                     Core.<*> (o Core..:? "payload")
                     Core.<*> (o Core..:? "resourceId")
                     Core.<*> (o Core..:? "resourceUri")
                     Core.<*> (o Core..:? "token")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Channel where
        toJSON Channel{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("expiration" Core..=) Core.. Core.AsText Core.<$> expiration,
                  ("id" Core..=) Core.<$> id, Core.Just ("kind" Core..= kind),
                  ("params" Core..=) Core.<$> params,
                  ("payload" Core..=) Core.<$> payload,
                  ("resourceId" Core..=) Core.<$> resourceId,
                  ("resourceUri" Core..=) Core.<$> resourceUri,
                  ("token" Core..=) Core.<$> token, ("type" Core..=) Core.<$> type'])


-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
    {

      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params 
    :: 
                  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Channel_Params
newChannel_Params additional
  = Channel_Params{additional = additional}
instance Core.FromJSON Channel_Params where
        parseJSON
          = Core.withObject "Channel_Params"
              (\ o -> Channel_Params Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Channel_Params where
        toJSON Channel_Params{..} = Core.toJSON additional


-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
    {
      -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
      day :: (Core.Maybe Core.Int32)
      -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    , month :: (Core.Maybe Core.Int32)
      -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    , year :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate 
    ::  Date
newDate
  = Date{day = Core.Nothing, month = Core.Nothing,
         year = Core.Nothing}
instance Core.FromJSON Date where
        parseJSON
          = Core.withObject "Date"
              (\ o ->
                 Date Core.<$>
                   (o Core..:? "day") Core.<*> (o Core..:? "month") Core.<*>
                     (o Core..:? "year"))

instance Core.ToJSON Date where
        toJSON Date{..}
          = Core.object
              (Core.catMaybes
                 [("day" Core..=) Core.<$> day, ("month" Core..=) Core.<$> month,
                  ("year" Core..=) Core.<$> year])


-- | Details of the field value set by the user for the particular label.
--
-- /See:/ 'newFieldValue' smart constructor.
data FieldValue = FieldValue
    {
      -- | Setting a date value.
      dateValue :: (Core.Maybe Date)
      -- | Display name of the field
    , displayName :: (Core.Maybe Core.Text)
      -- | Identifier of the field
    , id :: (Core.Maybe Core.Text)
      -- | Setting an integer value.
    , integerValue :: (Core.Maybe Core.Int64)
      -- | Setting a long text value.
    , longTextValue :: (Core.Maybe Core.Text)
      -- | The reason why the field was applied to the label.
    , reason :: (Core.Maybe Reason)
      -- | Setting a selection list value by selecting multiple values from a dropdown.
    , selectionListValue :: (Core.Maybe FieldValueSelectionListValue)
      -- | Setting a selection value by selecting a single value from a dropdown.
    , selectionValue :: (Core.Maybe FieldValueSelectionValue)
      -- | Setting a text list value.
    , textListValue :: (Core.Maybe FieldValueTextListValue)
      -- | Setting a text value.
    , textValue :: (Core.Maybe Core.Text)
      -- | Type of the field
    , type' :: (Core.Maybe Core.Text)
      -- | If the field is unset, this will be true.
    , unsetValue :: (Core.Maybe Core.Bool)
      -- | Setting a user list value by selecting multiple users.
    , userListValue :: (Core.Maybe FieldValueUserListValue)
      -- | Setting a user value by selecting a single user.
    , userValue :: (Core.Maybe FieldValueUserValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValue' with the minimum fields required to make a request.
newFieldValue 
    ::  FieldValue
newFieldValue
  = FieldValue{dateValue = Core.Nothing, displayName = Core.Nothing,
               id = Core.Nothing, integerValue = Core.Nothing,
               longTextValue = Core.Nothing, reason = Core.Nothing,
               selectionListValue = Core.Nothing, selectionValue = Core.Nothing,
               textListValue = Core.Nothing, textValue = Core.Nothing,
               type' = Core.Nothing, unsetValue = Core.Nothing,
               userListValue = Core.Nothing, userValue = Core.Nothing}
instance Core.FromJSON FieldValue where
        parseJSON
          = Core.withObject "FieldValue"
              (\ o ->
                 FieldValue Core.<$>
                   (o Core..:? "dateValue") Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "integerValue" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "longTextValue")
                     Core.<*> (o Core..:? "reason")
                     Core.<*> (o Core..:? "selectionListValue")
                     Core.<*> (o Core..:? "selectionValue")
                     Core.<*> (o Core..:? "textListValue")
                     Core.<*> (o Core..:? "textValue")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "unsetValue")
                     Core.<*> (o Core..:? "userListValue")
                     Core.<*> (o Core..:? "userValue"))

instance Core.ToJSON FieldValue where
        toJSON FieldValue{..}
          = Core.object
              (Core.catMaybes
                 [("dateValue" Core..=) Core.<$> dateValue,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  ("integerValue" Core..=) Core.. Core.AsText Core.<$> integerValue,
                  ("longTextValue" Core..=) Core.<$> longTextValue,
                  ("reason" Core..=) Core.<$> reason,
                  ("selectionListValue" Core..=) Core.<$> selectionListValue,
                  ("selectionValue" Core..=) Core.<$> selectionValue,
                  ("textListValue" Core..=) Core.<$> textListValue,
                  ("textValue" Core..=) Core.<$> textValue,
                  ("type" Core..=) Core.<$> type',
                  ("unsetValue" Core..=) Core.<$> unsetValue,
                  ("userListValue" Core..=) Core.<$> userListValue,
                  ("userValue" Core..=) Core.<$> userValue])


-- | Setting a selection list value by selecting multiple values from a dropdown.
--
-- /See:/ 'newFieldValueSelectionListValue' smart constructor.
newtype FieldValueSelectionListValue = FieldValueSelectionListValue
    {
      -- | List of selections.
      values :: (Core.Maybe [FieldValueSelectionValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValueSelectionListValue' with the minimum fields required to make a request.
newFieldValueSelectionListValue 
    ::  FieldValueSelectionListValue
newFieldValueSelectionListValue
  = FieldValueSelectionListValue{values = Core.Nothing}
instance Core.FromJSON FieldValueSelectionListValue where
        parseJSON
          = Core.withObject "FieldValueSelectionListValue"
              (\ o ->
                 FieldValueSelectionListValue Core.<$> (o Core..:? "values"))

instance Core.ToJSON FieldValueSelectionListValue where
        toJSON FieldValueSelectionListValue{..}
          = Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])


-- | Setting a selection value by selecting a single value from a dropdown.
--
-- /See:/ 'newFieldValueSelectionValue' smart constructor.
data FieldValueSelectionValue = FieldValueSelectionValue
    {
      -- | Whether the selection is badged.
      badged :: (Core.Maybe Core.Bool)
      -- | Display name of the selection.
    , displayName :: (Core.Maybe Core.Text)
      -- | Identifier of the selection.
    , id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValueSelectionValue' with the minimum fields required to make a request.
newFieldValueSelectionValue 
    ::  FieldValueSelectionValue
newFieldValueSelectionValue
  = FieldValueSelectionValue{badged = Core.Nothing,
                             displayName = Core.Nothing, id = Core.Nothing}
instance Core.FromJSON FieldValueSelectionValue where
        parseJSON
          = Core.withObject "FieldValueSelectionValue"
              (\ o ->
                 FieldValueSelectionValue Core.<$>
                   (o Core..:? "badged") Core.<*> (o Core..:? "displayName") Core.<*>
                     (o Core..:? "id"))

instance Core.ToJSON FieldValueSelectionValue where
        toJSON FieldValueSelectionValue{..}
          = Core.object
              (Core.catMaybes
                 [("badged" Core..=) Core.<$> badged,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id])


-- | Setting a text list value.
--
-- /See:/ 'newFieldValueTextListValue' smart constructor.
newtype FieldValueTextListValue = FieldValueTextListValue
    {
      -- | List of text values.
      values :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValueTextListValue' with the minimum fields required to make a request.
newFieldValueTextListValue 
    ::  FieldValueTextListValue
newFieldValueTextListValue
  = FieldValueTextListValue{values = Core.Nothing}
instance Core.FromJSON FieldValueTextListValue where
        parseJSON
          = Core.withObject "FieldValueTextListValue"
              (\ o -> FieldValueTextListValue Core.<$> (o Core..:? "values"))

instance Core.ToJSON FieldValueTextListValue where
        toJSON FieldValueTextListValue{..}
          = Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])


-- | Setting a user list value by selecting multiple users.
--
-- /See:/ 'newFieldValueUserListValue' smart constructor.
newtype FieldValueUserListValue = FieldValueUserListValue
    {
      -- | List of users.
      values :: (Core.Maybe [FieldValueUserValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValueUserListValue' with the minimum fields required to make a request.
newFieldValueUserListValue 
    ::  FieldValueUserListValue
newFieldValueUserListValue
  = FieldValueUserListValue{values = Core.Nothing}
instance Core.FromJSON FieldValueUserListValue where
        parseJSON
          = Core.withObject "FieldValueUserListValue"
              (\ o -> FieldValueUserListValue Core.<$> (o Core..:? "values"))

instance Core.ToJSON FieldValueUserListValue where
        toJSON FieldValueUserListValue{..}
          = Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])


-- | Setting a user value by selecting a single user.
--
-- /See:/ 'newFieldValueUserValue' smart constructor.
newtype FieldValueUserValue = FieldValueUserValue
    {
      -- | Email of the user.
      email :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldValueUserValue' with the minimum fields required to make a request.
newFieldValueUserValue 
    ::  FieldValueUserValue
newFieldValueUserValue = FieldValueUserValue{email = Core.Nothing}
instance Core.FromJSON FieldValueUserValue where
        parseJSON
          = Core.withObject "FieldValueUserValue"
              (\ o -> FieldValueUserValue Core.<$> (o Core..:? "email"))

instance Core.ToJSON FieldValueUserValue where
        toJSON FieldValueUserValue{..}
          = Core.object (Core.catMaybes [("email" Core..=) Core.<$> email])


-- | JSON template for a parameter used in various reports.
--
-- /See:/ 'newNestedParameter' smart constructor.
data NestedParameter = NestedParameter
    {
      -- | Boolean value of the parameter.
      boolValue :: (Core.Maybe Core.Bool)
      -- | Integer value of the parameter.
    , intValue :: (Core.Maybe Core.Int64)
      -- | Multiple boolean values of the parameter.
    , multiBoolValue :: (Core.Maybe [Core.Bool])
      -- | Multiple integer values of the parameter.
    , multiIntValue :: (Core.Maybe [Core.Int64])
      -- | Multiple string values of the parameter.
    , multiValue :: (Core.Maybe [Core.Text])
      -- | The name of the parameter.
    , name :: (Core.Maybe Core.Text)
      -- | String value of the parameter.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NestedParameter' with the minimum fields required to make a request.
newNestedParameter 
    ::  NestedParameter
newNestedParameter
  = NestedParameter{boolValue = Core.Nothing,
                    intValue = Core.Nothing, multiBoolValue = Core.Nothing,
                    multiIntValue = Core.Nothing, multiValue = Core.Nothing,
                    name = Core.Nothing, value = Core.Nothing}
instance Core.FromJSON NestedParameter where
        parseJSON
          = Core.withObject "NestedParameter"
              (\ o ->
                 NestedParameter Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "intValue" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "multiBoolValue")
                     Core.<*>
                     (o Core..:? "multiIntValue" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "multiValue")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON NestedParameter where
        toJSON NestedParameter{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("intValue" Core..=) Core.. Core.AsText Core.<$> intValue,
                  ("multiBoolValue" Core..=) Core.<$> multiBoolValue,
                  ("multiIntValue" Core..=) Core.. Core.fmap Core.AsText Core.<$>
                    multiIntValue,
                  ("multiValue" Core..=) Core.<$> multiValue,
                  ("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value])


-- | The reason why the label\/field was applied.
--
-- /See:/ 'newReason' smart constructor.
newtype Reason = Reason
    {
      -- | The type of the reason.
      reasonType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reason' with the minimum fields required to make a request.
newReason 
    ::  Reason
newReason = Reason{reasonType = Core.Nothing}
instance Core.FromJSON Reason where
        parseJSON
          = Core.withObject "Reason"
              (\ o -> Reason Core.<$> (o Core..:? "reasonType"))

instance Core.ToJSON Reason where
        toJSON Reason{..}
          = Core.object
              (Core.catMaybes [("reasonType" Core..=) Core.<$> reasonType])


-- | Details of the resource on which the action was performed.
--
-- /See:/ 'newResourceDetails' smart constructor.
data ResourceDetails = ResourceDetails
    {
      -- | List of labels applied on the resource
      appliedLabels :: (Core.Maybe [AppliedLabel])
      -- | Identifier of the resource.
    , id :: (Core.Maybe Core.Text)
      -- | Defines relationship of the resource to the events
    , relation :: (Core.Maybe Core.Text)
      -- | Title of the resource. For instance, in case of a drive document, this would be the title of the document. In case of an email, this would be the subject.
    , title :: (Core.Maybe Core.Text)
      -- | Type of the resource - document, email, chat message
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceDetails' with the minimum fields required to make a request.
newResourceDetails 
    ::  ResourceDetails
newResourceDetails
  = ResourceDetails{appliedLabels = Core.Nothing, id = Core.Nothing,
                    relation = Core.Nothing, title = Core.Nothing,
                    type' = Core.Nothing}
instance Core.FromJSON ResourceDetails where
        parseJSON
          = Core.withObject "ResourceDetails"
              (\ o ->
                 ResourceDetails Core.<$>
                   (o Core..:? "appliedLabels") Core.<*> (o Core..:? "id") Core.<*>
                     (o Core..:? "relation")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON ResourceDetails where
        toJSON ResourceDetails{..}
          = Core.object
              (Core.catMaybes
                 [("appliedLabels" Core..=) Core.<$> appliedLabels,
                  ("id" Core..=) Core.<$> id, ("relation" Core..=) Core.<$> relation,
                  ("title" Core..=) Core.<$> title, ("type" Core..=) Core.<$> type'])


-- | JSON template for a usage report.
--
-- /See:/ 'newUsageReport' smart constructor.
data UsageReport = UsageReport
    {
      -- | Output only. The date of the report request.
      date :: (Core.Maybe Core.Text)
      -- | Output only. Information about the type of the item.
    , entity :: (Core.Maybe UsageReport_Entity)
      -- | ETag of the resource.
    , etag :: (Core.Maybe Core.Text)
      -- | The type of API resource. For a usage report, the value is @admin#reports#usageReport@.
    , kind :: Core.Text
      -- | Output only. Parameter value pairs for various applications. For the Entity Usage Report parameters and values, see <https://developers.google.com/workspace/admin/reports/v1/reference/usage-ref-appendix-a/entities the Entity Usage parameters reference>.
    , parameters :: (Core.Maybe [UsageReport_ParametersItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport' with the minimum fields required to make a request.
newUsageReport 
    ::  UsageReport
newUsageReport
  = UsageReport{date = Core.Nothing, entity = Core.Nothing,
                etag = Core.Nothing, kind = "admin#reports#usageReport",
                parameters = Core.Nothing}
instance Core.FromJSON UsageReport where
        parseJSON
          = Core.withObject "UsageReport"
              (\ o ->
                 UsageReport Core.<$>
                   (o Core..:? "date") Core.<*> (o Core..:? "entity") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "kind" Core..!= "admin#reports#usageReport")
                     Core.<*> (o Core..:? "parameters"))

instance Core.ToJSON UsageReport where
        toJSON UsageReport{..}
          = Core.object
              (Core.catMaybes
                 [("date" Core..=) Core.<$> date,
                  ("entity" Core..=) Core.<$> entity, ("etag" Core..=) Core.<$> etag,
                  Core.Just ("kind" Core..= kind),
                  ("parameters" Core..=) Core.<$> parameters])


-- | Output only. Information about the type of the item.
--
-- /See:/ 'newUsageReport_Entity' smart constructor.
data UsageReport_Entity = UsageReport_Entity
    {
      -- | Output only. The unique identifier of the customer\'s account.
      customerId :: (Core.Maybe Core.Text)
      -- | Output only. Object key. Only relevant if entity.type = \"OBJECT\" Note: external-facing name of report is \"Entities\" rather than \"Objects\".
    , entityId :: (Core.Maybe Core.Text)
      -- | Output only. The user\'s immutable Google Workspace profile identifier.
    , profileId :: (Core.Maybe Core.Text)
      -- | Output only. The type of item. The value is @user@.
    , type' :: (Core.Maybe Core.Text)
      -- | Output only. The user\'s email address. Only relevant if entity.type = \"USER\"
    , userEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_Entity' with the minimum fields required to make a request.
newUsageReport_Entity 
    ::  UsageReport_Entity
newUsageReport_Entity
  = UsageReport_Entity{customerId = Core.Nothing,
                       entityId = Core.Nothing, profileId = Core.Nothing,
                       type' = Core.Nothing, userEmail = Core.Nothing}
instance Core.FromJSON UsageReport_Entity where
        parseJSON
          = Core.withObject "UsageReport_Entity"
              (\ o ->
                 UsageReport_Entity Core.<$>
                   (o Core..:? "customerId") Core.<*> (o Core..:? "entityId") Core.<*>
                     (o Core..:? "profileId")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "userEmail"))

instance Core.ToJSON UsageReport_Entity where
        toJSON UsageReport_Entity{..}
          = Core.object
              (Core.catMaybes
                 [("customerId" Core..=) Core.<$> customerId,
                  ("entityId" Core..=) Core.<$> entityId,
                  ("profileId" Core..=) Core.<$> profileId,
                  ("type" Core..=) Core.<$> type',
                  ("userEmail" Core..=) Core.<$> userEmail])


--
-- /See:/ 'newUsageReport_ParametersItem' smart constructor.
data UsageReport_ParametersItem = UsageReport_ParametersItem
    {
      -- | Output only. Boolean value of the parameter.
      boolValue :: (Core.Maybe Core.Bool)
      -- | The RFC 3339 formatted value of the parameter, for example 2010-10-28T10:26:35.000Z.
    , datetimeValue :: (Core.Maybe Core.DateTime)
      -- | Output only. Integer value of the parameter.
    , intValue :: (Core.Maybe Core.Int64)
      -- | Output only. Nested message value of the parameter.
    , msgValue :: (Core.Maybe [UsageReport_ParametersItem_MsgValueItem])
      -- | The name of the parameter. For the User Usage Report parameter names, see the User Usage parameters reference.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. String value of the parameter.
    , stringValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_ParametersItem' with the minimum fields required to make a request.
newUsageReport_ParametersItem 
    ::  UsageReport_ParametersItem
newUsageReport_ParametersItem
  = UsageReport_ParametersItem{boolValue = Core.Nothing,
                               datetimeValue = Core.Nothing, intValue = Core.Nothing,
                               msgValue = Core.Nothing, name = Core.Nothing,
                               stringValue = Core.Nothing}
instance Core.FromJSON UsageReport_ParametersItem where
        parseJSON
          = Core.withObject "UsageReport_ParametersItem"
              (\ o ->
                 UsageReport_ParametersItem Core.<$>
                   (o Core..:? "boolValue") Core.<*> (o Core..:? "datetimeValue")
                     Core.<*> (o Core..:? "intValue" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "msgValue")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "stringValue"))

instance Core.ToJSON UsageReport_ParametersItem where
        toJSON UsageReport_ParametersItem{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("datetimeValue" Core..=) Core.<$> datetimeValue,
                  ("intValue" Core..=) Core.. Core.AsText Core.<$> intValue,
                  ("msgValue" Core..=) Core.<$> msgValue,
                  ("name" Core..=) Core.<$> name,
                  ("stringValue" Core..=) Core.<$> stringValue])


--
-- /See:/ 'newUsageReport_ParametersItem_MsgValueItem' smart constructor.
newtype UsageReport_ParametersItem_MsgValueItem = UsageReport_ParametersItem_MsgValueItem
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReport_ParametersItem_MsgValueItem' with the minimum fields required to make a request.
newUsageReport_ParametersItem_MsgValueItem 
    :: 
                                           Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> UsageReport_ParametersItem_MsgValueItem
newUsageReport_ParametersItem_MsgValueItem additional
  = UsageReport_ParametersItem_MsgValueItem{additional = additional}
instance Core.FromJSON UsageReport_ParametersItem_MsgValueItem
         where
        parseJSON
          = Core.withObject "UsageReport_ParametersItem_MsgValueItem"
              (\ o ->
                 UsageReport_ParametersItem_MsgValueItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON UsageReport_ParametersItem_MsgValueItem where
        toJSON UsageReport_ParametersItem_MsgValueItem{..}
          = Core.toJSON additional


--
-- /See:/ 'newUsageReports' smart constructor.
data UsageReports = UsageReports
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | The type of API resource. For a usage report, the value is @admin#reports#usageReports@.
    , kind :: Core.Text
      -- | Token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. For your follow-on requests getting all of the report\'s pages, enter the @nextPageToken@ value in the @pageToken@ query string.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Various application parameter records.
    , usageReports :: (Core.Maybe [UsageReport])
      -- | Warnings, if any.
    , warnings :: (Core.Maybe [UsageReports_WarningsItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports' with the minimum fields required to make a request.
newUsageReports 
    ::  UsageReports
newUsageReports
  = UsageReports{etag = Core.Nothing,
                 kind = "admin#reports#usageReports", nextPageToken = Core.Nothing,
                 usageReports = Core.Nothing, warnings = Core.Nothing}
instance Core.FromJSON UsageReports where
        parseJSON
          = Core.withObject "UsageReports"
              (\ o ->
                 UsageReports Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "kind" Core..!= "admin#reports#usageReports")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "usageReports")
                     Core.<*> (o Core..:? "warnings"))

instance Core.ToJSON UsageReports where
        toJSON UsageReports{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag, Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("usageReports" Core..=) Core.<$> usageReports,
                  ("warnings" Core..=) Core.<$> warnings])


--
-- /See:/ 'newUsageReports_WarningsItem' smart constructor.
data UsageReports_WarningsItem = UsageReports_WarningsItem
    {
      -- | Machine readable code or warning type. The warning code value is @200@.
      code :: (Core.Maybe Core.Text)
      -- | Key-value pairs to give detailed information on the warning.
    , data' :: (Core.Maybe [UsageReports_WarningsItem_DataItem])
      -- | The human readable messages for a warning are: - Data is not available warning - Sorry, data for date yyyy-mm-dd for application \"@application name@\" is not available. - Partial data is available warning - Data for date yyyy-mm-dd for application \"@application name@\" is not available right now, please try again after a few hours.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports_WarningsItem' with the minimum fields required to make a request.
newUsageReports_WarningsItem 
    ::  UsageReports_WarningsItem
newUsageReports_WarningsItem
  = UsageReports_WarningsItem{code = Core.Nothing,
                              data' = Core.Nothing, message = Core.Nothing}
instance Core.FromJSON UsageReports_WarningsItem where
        parseJSON
          = Core.withObject "UsageReports_WarningsItem"
              (\ o ->
                 UsageReports_WarningsItem Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "data") Core.<*>
                     (o Core..:? "message"))

instance Core.ToJSON UsageReports_WarningsItem where
        toJSON UsageReports_WarningsItem{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code, ("data" Core..=) Core.<$> data',
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newUsageReports_WarningsItem_DataItem' smart constructor.
data UsageReports_WarningsItem_DataItem = UsageReports_WarningsItem_DataItem
    {
      -- | Key associated with a key-value pair to give detailed information on the warning.
      key :: (Core.Maybe Core.Text)
      -- | Value associated with a key-value pair to give detailed information on the warning.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageReports_WarningsItem_DataItem' with the minimum fields required to make a request.
newUsageReports_WarningsItem_DataItem 
    :: 
                                      UsageReports_WarningsItem_DataItem
newUsageReports_WarningsItem_DataItem
  = UsageReports_WarningsItem_DataItem{key = Core.Nothing,
                                       value = Core.Nothing}
instance Core.FromJSON UsageReports_WarningsItem_DataItem where
        parseJSON
          = Core.withObject "UsageReports_WarningsItem_DataItem"
              (\ o ->
                 UsageReports_WarningsItem_DataItem Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "value"))

instance Core.ToJSON UsageReports_WarningsItem_DataItem where
        toJSON UsageReports_WarningsItem_DataItem{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value])

