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
-- Module      : Gogol.Chat.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Chat.Types
    (
    -- * Configuration
      chatService

    -- * OAuth Scopes
    , Chat'Bot
    , Chat'Delete
    , Chat'Memberships
    , Chat'Memberships'App
    , Chat'Memberships'Readonly
    , Chat'Messages
    , Chat'Messages'Create
    , Chat'Messages'Reactions
    , Chat'Messages'Reactions'Create
    , Chat'Messages'Reactions'Readonly
    , Chat'Messages'Readonly
    , Chat'Spaces
    , Chat'Spaces'Create
    , Chat'Spaces'Readonly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ActionParameter
    , ActionParameter (..)
    , newActionParameter

    -- ** ActionResponse
    , ActionResponse (..)
    , newActionResponse

    -- ** ActionResponse_Type
    , ActionResponse_Type (..)

    -- ** ActionStatus
    , ActionStatus (..)
    , newActionStatus

    -- ** ActionStatus_StatusCode
    , ActionStatus_StatusCode (..)

    -- ** Annotation
    , Annotation (..)
    , newAnnotation

    -- ** Annotation_Type
    , Annotation_Type (..)

    -- ** Attachment
    , Attachment (..)
    , newAttachment

    -- ** Attachment_Source
    , Attachment_Source (..)

    -- ** AttachmentDataRef
    , AttachmentDataRef (..)
    , newAttachmentDataRef

    -- ** Button
    , Button (..)
    , newButton

    -- ** Card
    , Card (..)
    , newCard

    -- ** CardAction
    , CardAction (..)
    , newCardAction

    -- ** CardHeader
    , CardHeader (..)
    , newCardHeader

    -- ** CardHeader_ImageStyle
    , CardHeader_ImageStyle (..)

    -- ** CardWithId
    , CardWithId (..)
    , newCardWithId

    -- ** ChatAppLogEntry
    , ChatAppLogEntry (..)
    , newChatAppLogEntry

    -- ** Color
    , Color (..)
    , newColor

    -- ** CommonEventObject
    , CommonEventObject (..)
    , newCommonEventObject

    -- ** CommonEventObject_FormInputs
    , CommonEventObject_FormInputs (..)
    , newCommonEventObject_FormInputs

    -- ** CommonEventObject_HostApp
    , CommonEventObject_HostApp (..)

    -- ** CommonEventObject_Parameters
    , CommonEventObject_Parameters (..)
    , newCommonEventObject_Parameters

    -- ** CommonEventObject_Platform
    , CommonEventObject_Platform (..)

    -- ** CustomEmoji
    , CustomEmoji (..)
    , newCustomEmoji

    -- ** DateInput
    , DateInput (..)
    , newDateInput

    -- ** DateTimeInput
    , DateTimeInput (..)
    , newDateTimeInput

    -- ** DeletionMetadata
    , DeletionMetadata (..)
    , newDeletionMetadata

    -- ** DeletionMetadata_DeletionType
    , DeletionMetadata_DeletionType (..)

    -- ** DeprecatedEvent
    , DeprecatedEvent (..)
    , newDeprecatedEvent

    -- ** DeprecatedEvent_DialogEventType
    , DeprecatedEvent_DialogEventType (..)

    -- ** DeprecatedEvent_Type
    , DeprecatedEvent_Type (..)

    -- ** Dialog
    , Dialog (..)
    , newDialog

    -- ** DialogAction
    , DialogAction (..)
    , newDialogAction

    -- ** DriveDataRef
    , DriveDataRef (..)
    , newDriveDataRef

    -- ** Emoji
    , Emoji (..)
    , newEmoji

    -- ** EmojiReactionSummary
    , EmojiReactionSummary (..)
    , newEmojiReactionSummary

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FormAction
    , FormAction (..)
    , newFormAction

    -- ** GoogleAppsCardV1Action
    , GoogleAppsCardV1Action (..)
    , newGoogleAppsCardV1Action

    -- ** GoogleAppsCardV1Action_Interaction
    , GoogleAppsCardV1Action_Interaction (..)

    -- ** GoogleAppsCardV1Action_LoadIndicator
    , GoogleAppsCardV1Action_LoadIndicator (..)

    -- ** GoogleAppsCardV1ActionParameter
    , GoogleAppsCardV1ActionParameter (..)
    , newGoogleAppsCardV1ActionParameter

    -- ** GoogleAppsCardV1BorderStyle
    , GoogleAppsCardV1BorderStyle (..)
    , newGoogleAppsCardV1BorderStyle

    -- ** GoogleAppsCardV1BorderStyle_Type
    , GoogleAppsCardV1BorderStyle_Type (..)

    -- ** GoogleAppsCardV1Button
    , GoogleAppsCardV1Button (..)
    , newGoogleAppsCardV1Button

    -- ** GoogleAppsCardV1ButtonList
    , GoogleAppsCardV1ButtonList (..)
    , newGoogleAppsCardV1ButtonList

    -- ** GoogleAppsCardV1Card
    , GoogleAppsCardV1Card (..)
    , newGoogleAppsCardV1Card

    -- ** GoogleAppsCardV1Card_DisplayStyle
    , GoogleAppsCardV1Card_DisplayStyle (..)

    -- ** GoogleAppsCardV1CardAction
    , GoogleAppsCardV1CardAction (..)
    , newGoogleAppsCardV1CardAction

    -- ** GoogleAppsCardV1CardFixedFooter
    , GoogleAppsCardV1CardFixedFooter (..)
    , newGoogleAppsCardV1CardFixedFooter

    -- ** GoogleAppsCardV1CardHeader
    , GoogleAppsCardV1CardHeader (..)
    , newGoogleAppsCardV1CardHeader

    -- ** GoogleAppsCardV1CardHeader_ImageType
    , GoogleAppsCardV1CardHeader_ImageType (..)

    -- ** GoogleAppsCardV1Column
    , GoogleAppsCardV1Column (..)
    , newGoogleAppsCardV1Column

    -- ** GoogleAppsCardV1Column_HorizontalAlignment
    , GoogleAppsCardV1Column_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Column_HorizontalSizeStyle
    , GoogleAppsCardV1Column_HorizontalSizeStyle (..)

    -- ** GoogleAppsCardV1Column_VerticalAlignment
    , GoogleAppsCardV1Column_VerticalAlignment (..)

    -- ** GoogleAppsCardV1Columns
    , GoogleAppsCardV1Columns (..)
    , newGoogleAppsCardV1Columns

    -- ** GoogleAppsCardV1DateTimePicker
    , GoogleAppsCardV1DateTimePicker (..)
    , newGoogleAppsCardV1DateTimePicker

    -- ** GoogleAppsCardV1DateTimePicker_Type
    , GoogleAppsCardV1DateTimePicker_Type (..)

    -- ** GoogleAppsCardV1DecoratedText
    , GoogleAppsCardV1DecoratedText (..)
    , newGoogleAppsCardV1DecoratedText

    -- ** GoogleAppsCardV1Divider
    , GoogleAppsCardV1Divider (..)
    , newGoogleAppsCardV1Divider

    -- ** GoogleAppsCardV1FooterWidget
    , GoogleAppsCardV1FooterWidget (..)
    , newGoogleAppsCardV1FooterWidget

    -- ** GoogleAppsCardV1Grid
    , GoogleAppsCardV1Grid (..)
    , newGoogleAppsCardV1Grid

    -- ** GoogleAppsCardV1GridItem
    , GoogleAppsCardV1GridItem (..)
    , newGoogleAppsCardV1GridItem

    -- ** GoogleAppsCardV1GridItem_Layout
    , GoogleAppsCardV1GridItem_Layout (..)

    -- ** GoogleAppsCardV1Icon
    , GoogleAppsCardV1Icon (..)
    , newGoogleAppsCardV1Icon

    -- ** GoogleAppsCardV1Icon_ImageType
    , GoogleAppsCardV1Icon_ImageType (..)

    -- ** GoogleAppsCardV1Image
    , GoogleAppsCardV1Image (..)
    , newGoogleAppsCardV1Image

    -- ** GoogleAppsCardV1ImageComponent
    , GoogleAppsCardV1ImageComponent (..)
    , newGoogleAppsCardV1ImageComponent

    -- ** GoogleAppsCardV1ImageCropStyle
    , GoogleAppsCardV1ImageCropStyle (..)
    , newGoogleAppsCardV1ImageCropStyle

    -- ** GoogleAppsCardV1ImageCropStyle_Type
    , GoogleAppsCardV1ImageCropStyle_Type (..)

    -- ** GoogleAppsCardV1OnClick
    , GoogleAppsCardV1OnClick (..)
    , newGoogleAppsCardV1OnClick

    -- ** GoogleAppsCardV1OpenLink
    , GoogleAppsCardV1OpenLink (..)
    , newGoogleAppsCardV1OpenLink

    -- ** GoogleAppsCardV1OpenLink_OnClose
    , GoogleAppsCardV1OpenLink_OnClose (..)

    -- ** GoogleAppsCardV1OpenLink_OpenAs
    , GoogleAppsCardV1OpenLink_OpenAs (..)

    -- ** GoogleAppsCardV1Section
    , GoogleAppsCardV1Section (..)
    , newGoogleAppsCardV1Section

    -- ** GoogleAppsCardV1SelectionInput
    , GoogleAppsCardV1SelectionInput (..)
    , newGoogleAppsCardV1SelectionInput

    -- ** GoogleAppsCardV1SelectionInput_Type
    , GoogleAppsCardV1SelectionInput_Type (..)

    -- ** GoogleAppsCardV1SelectionItem
    , GoogleAppsCardV1SelectionItem (..)
    , newGoogleAppsCardV1SelectionItem

    -- ** GoogleAppsCardV1SuggestionItem
    , GoogleAppsCardV1SuggestionItem (..)
    , newGoogleAppsCardV1SuggestionItem

    -- ** GoogleAppsCardV1Suggestions
    , GoogleAppsCardV1Suggestions (..)
    , newGoogleAppsCardV1Suggestions

    -- ** GoogleAppsCardV1SwitchControl
    , GoogleAppsCardV1SwitchControl (..)
    , newGoogleAppsCardV1SwitchControl

    -- ** GoogleAppsCardV1SwitchControl_ControlType
    , GoogleAppsCardV1SwitchControl_ControlType (..)

    -- ** GoogleAppsCardV1TextInput
    , GoogleAppsCardV1TextInput (..)
    , newGoogleAppsCardV1TextInput

    -- ** GoogleAppsCardV1TextInput_Type
    , GoogleAppsCardV1TextInput_Type (..)

    -- ** GoogleAppsCardV1TextParagraph
    , GoogleAppsCardV1TextParagraph (..)
    , newGoogleAppsCardV1TextParagraph

    -- ** GoogleAppsCardV1Widget
    , GoogleAppsCardV1Widget (..)
    , newGoogleAppsCardV1Widget

    -- ** GoogleAppsCardV1Widget_HorizontalAlignment
    , GoogleAppsCardV1Widget_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Widgets
    , GoogleAppsCardV1Widgets (..)
    , newGoogleAppsCardV1Widgets

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImageButton
    , ImageButton (..)
    , newImageButton

    -- ** ImageButton_Icon
    , ImageButton_Icon (..)

    -- ** Inputs
    , Inputs (..)
    , newInputs

    -- ** KeyValue
    , KeyValue (..)
    , newKeyValue

    -- ** KeyValue_Icon
    , KeyValue_Icon (..)

    -- ** ListMembershipsResponse
    , ListMembershipsResponse (..)
    , newListMembershipsResponse

    -- ** ListMessagesResponse
    , ListMessagesResponse (..)
    , newListMessagesResponse

    -- ** ListReactionsResponse
    , ListReactionsResponse (..)
    , newListReactionsResponse

    -- ** ListSpacesResponse
    , ListSpacesResponse (..)
    , newListSpacesResponse

    -- ** MatchedUrl
    , MatchedUrl (..)
    , newMatchedUrl

    -- ** Media
    , Media (..)
    , newMedia

    -- ** Membership
    , Membership (..)
    , newMembership

    -- ** Membership_Role
    , Membership_Role (..)

    -- ** Membership_State
    , Membership_State (..)

    -- ** Message
    , Message (..)
    , newMessage

    -- ** OnClick
    , OnClick (..)
    , newOnClick

    -- ** OpenLink
    , OpenLink (..)
    , newOpenLink

    -- ** Reaction
    , Reaction (..)
    , newReaction

    -- ** Section
    , Section (..)
    , newSection

    -- ** SetUpSpaceRequest
    , SetUpSpaceRequest (..)
    , newSetUpSpaceRequest

    -- ** SlashCommand
    , SlashCommand (..)
    , newSlashCommand

    -- ** SlashCommandMetadata
    , SlashCommandMetadata (..)
    , newSlashCommandMetadata

    -- ** SlashCommandMetadata_Type
    , SlashCommandMetadata_Type (..)

    -- ** Space
    , Space (..)
    , newSpace

    -- ** Space_SpaceHistoryState
    , Space_SpaceHistoryState (..)

    -- ** Space_SpaceThreadingState
    , Space_SpaceThreadingState (..)

    -- ** Space_SpaceType
    , Space_SpaceType (..)

    -- ** Space_Type
    , Space_Type (..)

    -- ** SpaceDetails
    , SpaceDetails (..)
    , newSpaceDetails

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StringInputs
    , StringInputs (..)
    , newStringInputs

    -- ** TextButton
    , TextButton (..)
    , newTextButton

    -- ** TextParagraph
    , TextParagraph (..)
    , newTextParagraph

    -- ** Thread
    , Thread (..)
    , newThread

    -- ** TimeInput
    , TimeInput (..)
    , newTimeInput

    -- ** TimeZone
    , TimeZone (..)
    , newTimeZone

    -- ** UploadAttachmentRequest
    , UploadAttachmentRequest (..)
    , newUploadAttachmentRequest

    -- ** UploadAttachmentResponse
    , UploadAttachmentResponse (..)
    , newUploadAttachmentResponse

    -- ** User
    , User (..)
    , newUser

    -- ** User_Type
    , User_Type (..)

    -- ** UserMentionMetadata
    , UserMentionMetadata (..)
    , newUserMentionMetadata

    -- ** UserMentionMetadata_Type
    , UserMentionMetadata_Type (..)

    -- ** WidgetMarkup
    , WidgetMarkup (..)
    , newWidgetMarkup

    -- ** SpacesMessagesCreateMessageReplyOption
    , SpacesMessagesCreateMessageReplyOption (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Internal.Product
import Gogol.Chat.Internal.Sum

-- | Default request referring to version @v1@ of the Google Chat API. This contains the host and root path used as a starting point for constructing service requests.
chatService :: Core.ServiceConfig
chatService
  = Core.defaultService (Core.ServiceId "chat:v1")
      "chat.googleapis.com"

-- | Private Service: https:\/\/www.googleapis.com\/auth\/chat.bot
type Chat'Bot = "https://www.googleapis.com/auth/chat.bot"

-- | Delete conversations and spaces & remove access to associated files in Google Chat
type Chat'Delete = "https://www.googleapis.com/auth/chat.delete"

-- | View, add, and remove members from conversations in Google Chat
type Chat'Memberships = "https://www.googleapis.com/auth/chat.memberships"

-- | Add and remove itself from conversations in Google Chat
type Chat'Memberships'App = "https://www.googleapis.com/auth/chat.memberships.app"

-- | View members in Google Chat conversations.
type Chat'Memberships'Readonly = "https://www.googleapis.com/auth/chat.memberships.readonly"

-- | View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.
type Chat'Messages = "https://www.googleapis.com/auth/chat.messages"

-- | Compose and send messages in Google Chat
type Chat'Messages'Create = "https://www.googleapis.com/auth/chat.messages.create"

-- | View, add, and delete reactions to messages in Google Chat
type Chat'Messages'Reactions = "https://www.googleapis.com/auth/chat.messages.reactions"

-- | Add reactions to messages in Google Chat
type Chat'Messages'Reactions'Create = "https://www.googleapis.com/auth/chat.messages.reactions.create"

-- | View reactions to messages in Google Chat
type Chat'Messages'Reactions'Readonly = "https://www.googleapis.com/auth/chat.messages.reactions.readonly"

-- | View messages and reactions in Google Chat
type Chat'Messages'Readonly = "https://www.googleapis.com/auth/chat.messages.readonly"

-- | Create conversations and spaces and view or update metadata (including history settings) in Google Chat
type Chat'Spaces = "https://www.googleapis.com/auth/chat.spaces"

-- | Create new conversations in Google Chat
type Chat'Spaces'Create = "https://www.googleapis.com/auth/chat.spaces.create"

-- | View chat and spaces in Google Chat
type Chat'Spaces'Readonly = "https://www.googleapis.com/auth/chat.spaces.readonly"