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
-- Module      : Gogol.MachineLearning.Ml.Projects.Predict
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs online prediction on the data in the request. {% dynamic include \"\/ai-platform\/includes\/___predict-request\" %}
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.predict@.
module Gogol.MachineLearning.Ml.Projects.Predict
    (
    -- * Resource
      MlProjectsPredictResource

    -- ** Constructing a Request
    , MlProjectsPredict (..)
    , newMlProjectsPredict
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MachineLearning.Types

-- | A resource alias for @ml.projects.predict@ method which the
-- 'MlProjectsPredict' request conforms to.
type MlProjectsPredictResource =
     "v1" Core.:>
       Core.CaptureMode "name" "predict" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudMlV1__PredictRequest
                       Core.:> Core.Post '[Core.JSON] GoogleApi__HttpBody

-- | Performs online prediction on the data in the request. {% dynamic include \"\/ai-platform\/includes\/___predict-request\" %}
--
-- /See:/ 'newMlProjectsPredict' smart constructor.
data MlProjectsPredict = MlProjectsPredict
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of a model or a version. Authorization: requires the @predict@ permission on the specified resource.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudMlV1__PredictRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsPredict' with the minimum fields required to make a request.
newMlProjectsPredict 
    ::  Core.Text
       -- ^  Required. The resource name of a model or a version. Authorization: requires the @predict@ permission on the specified resource. See 'name'.
    -> GoogleCloudMlV1__PredictRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MlProjectsPredict
newMlProjectsPredict name payload =
  MlProjectsPredict
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsPredict where
        type Rs MlProjectsPredict = GoogleApi__HttpBody
        type Scopes MlProjectsPredict =
             '[CloudPlatform'FullControl]
        requestClient MlProjectsPredict{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              machineLearningService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy MlProjectsPredictResource)
                      Core.mempty
