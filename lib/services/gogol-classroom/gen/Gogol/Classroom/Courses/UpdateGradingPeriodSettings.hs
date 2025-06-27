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
-- Module      : Gogol.Classroom.Courses.UpdateGradingPeriodSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates grading period settings of a course. Individual grading periods can be added, removed, or modified using this method. The requesting user and course owner must be eligible to modify Grading Periods. For details, see <https://developers.google.com/workspace/classroom/grading-periods/manage-grading-periods#licensing_requirements licensing requirements>. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the grading period settings in a course or for access errors: * UserIneligibleToUpdateGradingPeriodSettings * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/workspace/classroom/ Google Classroom API Reference> for @classroom.courses.updateGradingPeriodSettings@.
module Gogol.Classroom.Courses.UpdateGradingPeriodSettings
    (
    -- * Resource
      ClassroomCoursesUpdateGradingPeriodSettingsResource

    -- ** Constructing a Request
    , ClassroomCoursesUpdateGradingPeriodSettings (..)
    , newClassroomCoursesUpdateGradingPeriodSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.updateGradingPeriodSettings@ method which the
-- 'ClassroomCoursesUpdateGradingPeriodSettings' request conforms to.
type ClassroomCoursesUpdateGradingPeriodSettingsResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "gradingPeriodSettings" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "updateMask" Core.FieldMask Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] GradingPeriodSettings Core.:>
                             Core.Patch '[Core.JSON] GradingPeriodSettings

-- | Updates grading period settings of a course. Individual grading periods can be added, removed, or modified using this method. The requesting user and course owner must be eligible to modify Grading Periods. For details, see <https://developers.google.com/workspace/classroom/grading-periods/manage-grading-periods#licensing_requirements licensing requirements>. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to modify the grading period settings in a course or for access errors: * UserIneligibleToUpdateGradingPeriodSettings * @INVALID_ARGUMENT@ if the request is malformed. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesUpdateGradingPeriodSettings' smart constructor.
data ClassroomCoursesUpdateGradingPeriodSettings = ClassroomCoursesUpdateGradingPeriodSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The identifier of the course.
    , courseId :: Core.Text
      -- | Multipart request metadata.
    , payload :: GradingPeriodSettings
      -- | Mask that identifies which fields in the GradingPeriodSettings to update. The GradingPeriodSettings @grading_periods@ list will be fully replaced by the grading periods specified in the update request. For example: * Grading periods included in the list without an ID are considered additions, and a new ID will be assigned when the request is made. * Grading periods that currently exist, but are missing from the request will be considered deletions. * Grading periods with an existing ID and modified data are considered edits. Unmodified data will be left as is. * Grading periods included with an unknown ID will result in an error. The following fields may be specified: * @grading_periods@ * @apply_to_existing_coursework@
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesUpdateGradingPeriodSettings' with the minimum fields required to make a request.
newClassroomCoursesUpdateGradingPeriodSettings 
    :: 
                                               Core.Text
       -- ^  Required. The identifier of the course. See 'courseId'.
    -> GradingPeriodSettings
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesUpdateGradingPeriodSettings
newClassroomCoursesUpdateGradingPeriodSettings courseId payload
  = ClassroomCoursesUpdateGradingPeriodSettings{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                courseId = courseId, payload = payload,
                                                updateMask = Core.Nothing,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ClassroomCoursesUpdateGradingPeriodSettings
         where
        type Rs ClassroomCoursesUpdateGradingPeriodSettings =
             GradingPeriodSettings
        type Scopes ClassroomCoursesUpdateGradingPeriodSettings =
             '[Classroom'Courses]
        requestClient ClassroomCoursesUpdateGradingPeriodSettings{..}
          = go courseId xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesUpdateGradingPeriodSettingsResource)
                      Core.mempty

