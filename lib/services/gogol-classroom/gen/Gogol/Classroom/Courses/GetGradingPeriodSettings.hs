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
-- Module      : Gogol.Classroom.Courses.GetGradingPeriodSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the grading period settings in a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user isn\'t permitted to access the grading period settings in the requested course or for access errors. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/workspace/classroom/ Google Classroom API Reference> for @classroom.courses.getGradingPeriodSettings@.
module Gogol.Classroom.Courses.GetGradingPeriodSettings
    (
    -- * Resource
      ClassroomCoursesGetGradingPeriodSettingsResource

    -- ** Constructing a Request
    , ClassroomCoursesGetGradingPeriodSettings (..)
    , newClassroomCoursesGetGradingPeriodSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.getGradingPeriodSettings@ method which the
-- 'ClassroomCoursesGetGradingPeriodSettings' request conforms to.
type ClassroomCoursesGetGradingPeriodSettingsResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "gradingPeriodSettings" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] GradingPeriodSettings

-- | Returns the grading period settings in a course. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user isn\'t permitted to access the grading period settings in the requested course or for access errors. * @NOT_FOUND@ if the requested course does not exist.
--
-- /See:/ 'newClassroomCoursesGetGradingPeriodSettings' smart constructor.
data ClassroomCoursesGetGradingPeriodSettings = ClassroomCoursesGetGradingPeriodSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The identifier of the course.
    , courseId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesGetGradingPeriodSettings' with the minimum fields required to make a request.
newClassroomCoursesGetGradingPeriodSettings 
    :: 
                                            Core.Text
       -- ^  Required. The identifier of the course. See 'courseId'.
    -> ClassroomCoursesGetGradingPeriodSettings
newClassroomCoursesGetGradingPeriodSettings courseId
  = ClassroomCoursesGetGradingPeriodSettings{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             courseId = courseId, uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ClassroomCoursesGetGradingPeriodSettings
         where
        type Rs ClassroomCoursesGetGradingPeriodSettings =
             GradingPeriodSettings
        type Scopes ClassroomCoursesGetGradingPeriodSettings =
             '[Classroom'Courses, Classroom'Courses'Readonly]
        requestClient ClassroomCoursesGetGradingPeriodSettings{..}
          = go courseId xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesGetGradingPeriodSettingsResource)
                      Core.mempty

