{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Append features to an existing table. A single batchInsert request can
-- create: - Up to 50 features. - A combined total of 10 000 vertices.
-- Feature limits are documented in the Supported data formats and limits
-- article of the Google Maps Engine help center. Note that free and paid
-- accounts have different limits. For more information about inserting
-- features, read Creating features in the Google Maps Engine developer\'s
-- guide.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFeaturesBatchInsert@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert
    (
    -- * REST Resource
      TablesFeaturesBatchInsertResource

    -- * Creating a Request
    , tablesFeaturesBatchInsert'
    , TablesFeaturesBatchInsert'

    -- * Request Lenses
    , tfbiQuotaUser
    , tfbiPrettyPrint
    , tfbiUserIP
    , tfbiKey
    , tfbiId
    , tfbiFeaturesBatchInsertRequest
    , tfbiOAuthToken
    , tfbiFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFeaturesBatchInsert@ which the
-- 'TablesFeaturesBatchInsert'' request conforms to.
type TablesFeaturesBatchInsertResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchInsert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FeaturesBatchInsertRequest :>
                             Post '[JSON] ()

-- | Append features to an existing table. A single batchInsert request can
-- create: - Up to 50 features. - A combined total of 10 000 vertices.
-- Feature limits are documented in the Supported data formats and limits
-- article of the Google Maps Engine help center. Note that free and paid
-- accounts have different limits. For more information about inserting
-- features, read Creating features in the Google Maps Engine developer\'s
-- guide.
--
-- /See:/ 'tablesFeaturesBatchInsert'' smart constructor.
data TablesFeaturesBatchInsert' = TablesFeaturesBatchInsert'
    { _tfbiQuotaUser                  :: !(Maybe Text)
    , _tfbiPrettyPrint                :: !Bool
    , _tfbiUserIP                     :: !(Maybe Text)
    , _tfbiKey                        :: !(Maybe Key)
    , _tfbiId                         :: !Text
    , _tfbiFeaturesBatchInsertRequest :: !FeaturesBatchInsertRequest
    , _tfbiOAuthToken                 :: !(Maybe OAuthToken)
    , _tfbiFields                     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbiQuotaUser'
--
-- * 'tfbiPrettyPrint'
--
-- * 'tfbiUserIP'
--
-- * 'tfbiKey'
--
-- * 'tfbiId'
--
-- * 'tfbiFeaturesBatchInsertRequest'
--
-- * 'tfbiOAuthToken'
--
-- * 'tfbiFields'
tablesFeaturesBatchInsert'
    :: Text -- ^ 'id'
    -> FeaturesBatchInsertRequest -- ^ 'FeaturesBatchInsertRequest'
    -> TablesFeaturesBatchInsert'
tablesFeaturesBatchInsert' pTfbiId_ pTfbiFeaturesBatchInsertRequest_ =
    TablesFeaturesBatchInsert'
    { _tfbiQuotaUser = Nothing
    , _tfbiPrettyPrint = True
    , _tfbiUserIP = Nothing
    , _tfbiKey = Nothing
    , _tfbiId = pTfbiId_
    , _tfbiFeaturesBatchInsertRequest = pTfbiFeaturesBatchInsertRequest_
    , _tfbiOAuthToken = Nothing
    , _tfbiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfbiQuotaUser :: Lens' TablesFeaturesBatchInsert' (Maybe Text)
tfbiQuotaUser
  = lens _tfbiQuotaUser
      (\ s a -> s{_tfbiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfbiPrettyPrint :: Lens' TablesFeaturesBatchInsert' Bool
tfbiPrettyPrint
  = lens _tfbiPrettyPrint
      (\ s a -> s{_tfbiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfbiUserIP :: Lens' TablesFeaturesBatchInsert' (Maybe Text)
tfbiUserIP
  = lens _tfbiUserIP (\ s a -> s{_tfbiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfbiKey :: Lens' TablesFeaturesBatchInsert' (Maybe Key)
tfbiKey = lens _tfbiKey (\ s a -> s{_tfbiKey = a})

-- | The ID of the table to append the features to.
tfbiId :: Lens' TablesFeaturesBatchInsert' Text
tfbiId = lens _tfbiId (\ s a -> s{_tfbiId = a})

-- | Multipart request metadata.
tfbiFeaturesBatchInsertRequest :: Lens' TablesFeaturesBatchInsert' FeaturesBatchInsertRequest
tfbiFeaturesBatchInsertRequest
  = lens _tfbiFeaturesBatchInsertRequest
      (\ s a -> s{_tfbiFeaturesBatchInsertRequest = a})

-- | OAuth 2.0 token for the current user.
tfbiOAuthToken :: Lens' TablesFeaturesBatchInsert' (Maybe OAuthToken)
tfbiOAuthToken
  = lens _tfbiOAuthToken
      (\ s a -> s{_tfbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tfbiFields :: Lens' TablesFeaturesBatchInsert' (Maybe Text)
tfbiFields
  = lens _tfbiFields (\ s a -> s{_tfbiFields = a})

instance GoogleAuth TablesFeaturesBatchInsert' where
        authKey = tfbiKey . _Just
        authToken = tfbiOAuthToken . _Just

instance GoogleRequest TablesFeaturesBatchInsert'
         where
        type Rs TablesFeaturesBatchInsert' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesFeaturesBatchInsert'{..}
          = go _tfbiId _tfbiQuotaUser (Just _tfbiPrettyPrint)
              _tfbiUserIP
              _tfbiFields
              _tfbiKey
              _tfbiOAuthToken
              (Just AltJSON)
              _tfbiFeaturesBatchInsertRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesBatchInsertResource)
                      r
                      u