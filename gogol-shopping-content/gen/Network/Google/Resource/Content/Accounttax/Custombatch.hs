{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Accounttax.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.custombatch@.
module Network.Google.Resource.Content.Accounttax.Custombatch
    (
    -- * REST Resource
      AccounttaxCustombatchResource

    -- * Creating a Request
    , accounttaxCustombatch
    , AccounttaxCustombatch

    -- * Request Lenses
    , acccXgafv
    , acccUploadProtocol
    , acccAccessToken
    , acccUploadType
    , acccPayload
    , acccDryRun
    , acccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.custombatch@ method which the
-- 'AccounttaxCustombatch' request conforms to.
type AccounttaxCustombatchResource =
     "content" :>
       "v2" :>
         "accounttax" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "dryRun" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccounttaxCustomBatchRequest :>
                             Post '[JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ 'accounttaxCustombatch' smart constructor.
data AccounttaxCustombatch =
  AccounttaxCustombatch'
    { _acccXgafv :: !(Maybe Xgafv)
    , _acccUploadProtocol :: !(Maybe Text)
    , _acccAccessToken :: !(Maybe Text)
    , _acccUploadType :: !(Maybe Text)
    , _acccPayload :: !AccounttaxCustomBatchRequest
    , _acccDryRun :: !(Maybe Bool)
    , _acccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccXgafv'
--
-- * 'acccUploadProtocol'
--
-- * 'acccAccessToken'
--
-- * 'acccUploadType'
--
-- * 'acccPayload'
--
-- * 'acccDryRun'
--
-- * 'acccCallback'
accounttaxCustombatch
    :: AccounttaxCustomBatchRequest -- ^ 'acccPayload'
    -> AccounttaxCustombatch
accounttaxCustombatch pAcccPayload_ =
  AccounttaxCustombatch'
    { _acccXgafv = Nothing
    , _acccUploadProtocol = Nothing
    , _acccAccessToken = Nothing
    , _acccUploadType = Nothing
    , _acccPayload = pAcccPayload_
    , _acccDryRun = Nothing
    , _acccCallback = Nothing
    }


-- | V1 error format.
acccXgafv :: Lens' AccounttaxCustombatch (Maybe Xgafv)
acccXgafv
  = lens _acccXgafv (\ s a -> s{_acccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acccUploadProtocol :: Lens' AccounttaxCustombatch (Maybe Text)
acccUploadProtocol
  = lens _acccUploadProtocol
      (\ s a -> s{_acccUploadProtocol = a})

-- | OAuth access token.
acccAccessToken :: Lens' AccounttaxCustombatch (Maybe Text)
acccAccessToken
  = lens _acccAccessToken
      (\ s a -> s{_acccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acccUploadType :: Lens' AccounttaxCustombatch (Maybe Text)
acccUploadType
  = lens _acccUploadType
      (\ s a -> s{_acccUploadType = a})

-- | Multipart request metadata.
acccPayload :: Lens' AccounttaxCustombatch AccounttaxCustomBatchRequest
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | Flag to simulate a request like in a live environment. If set to true,
-- dry-run mode checks the validity of the request and returns errors (if
-- any).
acccDryRun :: Lens' AccounttaxCustombatch (Maybe Bool)
acccDryRun
  = lens _acccDryRun (\ s a -> s{_acccDryRun = a})

-- | JSONP
acccCallback :: Lens' AccounttaxCustombatch (Maybe Text)
acccCallback
  = lens _acccCallback (\ s a -> s{_acccCallback = a})

instance GoogleRequest AccounttaxCustombatch where
        type Rs AccounttaxCustombatch =
             AccounttaxCustomBatchResponse
        type Scopes AccounttaxCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxCustombatch'{..}
          = go _acccXgafv _acccUploadProtocol _acccAccessToken
              _acccUploadType
              _acccDryRun
              _acccCallback
              (Just AltJSON)
              _acccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxCustombatchResource)
                      mempty
