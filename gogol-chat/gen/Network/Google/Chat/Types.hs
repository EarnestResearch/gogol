{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types
    (
    -- * Service Configuration
      chatService

    -- * Card
    , Card
    , card
    , cCardActions
    , cName
    , cHeader
    , cSections

    -- * Space
    , Space
    , space
    , sName
    , sThreaded
    , sDisplayName
    , sType
    , sSingleUserBotDm

    -- * KeyValue
    , KeyValue
    , keyValue
    , kvOnClick
    , kvTopLabel
    , kvIcon
    , kvButton
    , kvContent
    , kvIconURL
    , kvContentMultiline
    , kvBottomLabel

    -- * WidgetMarkup
    , WidgetMarkup
    , widgetMarkup
    , wmKeyValue
    , wmImage
    , wmButtons
    , wmTextParagraph

    -- * OnClick
    , OnClick
    , onClick
    , ocAction
    , ocOpenLink

    -- * Annotation
    , Annotation
    , annotation
    , aLength
    , aSlashCommand
    , aType
    , aUserMention
    , aStartIndex

    -- * Image
    , Image
    , image
    , iOnClick
    , iAspectRatio
    , iImageURL

    -- * KeyValueIcon
    , KeyValueIcon (..)

    -- * ActionParameter
    , ActionParameter
    , actionParameter
    , apValue
    , apKey

    -- * SlashCommandMetadata
    , SlashCommandMetadata
    , slashCommandMetadata
    , scmBot
    , scmCommandId
    , scmCommandName
    , scmType
    , scmTriggersDialog

    -- * Membership
    , Membership
    , membership
    , mState
    , mName
    , mMember
    , mCreateTime

    -- * ActionResponseType
    , ActionResponseType (..)

    -- * Empty
    , Empty
    , empty

    -- * DeprecatedEvent
    , DeprecatedEvent
    , deprecatedEvent
    , deSpace
    , deToken
    , deAction
    , deEventTime
    , deUser
    , deConfigCompleteRedirectURL
    , deType
    , deMessage
    , deThreadKey

    -- * MembershipState
    , MembershipState (..)

    -- * AttachmentDataRef
    , AttachmentDataRef
    , attachmentDataRef
    , adrResourceName

    -- * CardHeaderImageStyle
    , CardHeaderImageStyle (..)

    -- * TextParagraph
    , TextParagraph
    , textParagraph
    , tpText

    -- * Button
    , Button
    , button
    , bTextButton
    , bImageButton

    -- * UserMentionMetadataType
    , UserMentionMetadataType (..)

    -- * ListSpacesResponse
    , ListSpacesResponse
    , listSpacesResponse
    , lsrNextPageToken
    , lsrSpaces

    -- * Attachment
    , Attachment
    , attachment
    , aDownloadURI
    , aAttachmentDataRef
    , aContentName
    , aName
    , aThumbnailURI
    , aSource
    , aDriveDataRef
    , aContentType

    -- * User
    , User
    , user
    , uIsAnonymous
    , uName
    , uDisplayName
    , uDomainId
    , uType

    -- * Media
    , Media
    , media
    , mResourceName

    -- * AttachmentSource
    , AttachmentSource (..)

    -- * SpaceType
    , SpaceType (..)

    -- * OpenLink
    , OpenLink
    , openLink
    , olURL

    -- * AnnotationType
    , AnnotationType (..)

    -- * SlashCommandMetadataType
    , SlashCommandMetadataType (..)

    -- * SlashCommand
    , SlashCommand
    , slashCommand
    , scCommandId

    -- * ImageButtonIcon
    , ImageButtonIcon (..)

    -- * CardAction
    , CardAction
    , cardAction
    , caOnClick
    , caActionLabel

    -- * Xgafv
    , Xgafv (..)

    -- * DeprecatedEventType
    , DeprecatedEventType (..)

    -- * ActionResponse
    , ActionResponse
    , actionResponse
    , arURL
    , arType

    -- * DriveDataRef
    , DriveDataRef
    , driveDataRef
    , ddrDriveFileId

    -- * FormAction
    , FormAction
    , formAction
    , faActionMethodName
    , faParameters

    -- * ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- * Message
    , Message
    , message
    , mesAnnotations
    , mesSpace
    , mesText
    , mesSender
    , mesAttachment
    , mesName
    , mesPreviewText
    , mesCards
    , mesSlashCommand
    , mesActionResponse
    , mesArgumentText
    , mesThread
    , mesFallbackText
    , mesCreateTime

    -- * CardHeader
    , CardHeader
    , cardHeader
    , chSubtitle
    , chImageURL
    , chTitle
    , chImageStyle

    -- * TextButton
    , TextButton
    , textButton
    , tbOnClick
    , tbText

    -- * Thread
    , Thread
    , thread
    , tName

    -- * UserMentionMetadata
    , UserMentionMetadata
    , userMentionMetadata
    , ummUser
    , ummType

    -- * ImageButton
    , ImageButton
    , imageButton
    , ibOnClick
    , ibIcon
    , ibName
    , ibIconURL

    -- * Section
    , Section
    , section
    , sWidgets
    , sHeader

    -- * UserType
    , UserType (..)
    ) where

import Network.Google.Chat.Types.Product
import Network.Google.Chat.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Chat API. This contains the host and root path used as a starting point for constructing service requests.
chatService :: ServiceConfig
chatService
  = defaultService (ServiceId "chat:v1")
      "chat.googleapis.com"
