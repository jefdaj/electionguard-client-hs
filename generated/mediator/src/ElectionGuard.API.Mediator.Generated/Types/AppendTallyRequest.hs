-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AppendTallyRequest
module ElectionGuard.API.Mediator.Generated.Types.AppendTallyRequest where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified ElectionGuard.API.Mediator.Generated.Common

-- | Defines the data type for the schema AppendTallyRequest
-- 
-- 
data AppendTallyRequest = AppendTallyRequest {
  -- | ballots
  appendTallyRequestBallots :: ([] AppendTallyRequestBallots)
  -- | context
  , appendTallyRequestContext :: (GHC.Maybe.Maybe AppendTallyRequestContext)
  -- | description
  , appendTallyRequestDescription :: (GHC.Maybe.Maybe AppendTallyRequestDescription)
  -- | encrypted_tally
  , appendTallyRequestEncryptedTally :: (GHC.Maybe.Maybe AppendTallyRequestEncryptedTally)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendTallyRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ballots" (appendTallyRequestBallots obj) : (Data.Aeson..=) "context" (appendTallyRequestContext obj) : (Data.Aeson..=) "description" (appendTallyRequestDescription obj) : (Data.Aeson..=) "encrypted_tally" (appendTallyRequestEncryptedTally obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ballots" (appendTallyRequestBallots obj) GHC.Base.<> ((Data.Aeson..=) "context" (appendTallyRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "description" (appendTallyRequestDescription obj) GHC.Base.<> (Data.Aeson..=) "encrypted_tally" (appendTallyRequestEncryptedTally obj))))
instance Data.Aeson.Types.FromJSON.FromJSON AppendTallyRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendTallyRequest" (\obj -> (((GHC.Base.pure AppendTallyRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ballots")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "encrypted_tally"))
-- | Defines the data type for the schema AppendTallyRequestBallots
-- 
-- 
data AppendTallyRequestBallots = AppendTallyRequestBallots {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendTallyRequestBallots
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AppendTallyRequestBallots
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendTallyRequestBallots" (\obj -> GHC.Base.pure AppendTallyRequestBallots)
-- | Defines the data type for the schema AppendTallyRequestContext
-- 
-- 
data AppendTallyRequestContext = AppendTallyRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendTallyRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AppendTallyRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendTallyRequestContext" (\obj -> GHC.Base.pure AppendTallyRequestContext)
-- | Defines the data type for the schema AppendTallyRequestDescription
-- 
-- 
data AppendTallyRequestDescription = AppendTallyRequestDescription {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendTallyRequestDescription
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AppendTallyRequestDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendTallyRequestDescription" (\obj -> GHC.Base.pure AppendTallyRequestDescription)
-- | Defines the data type for the schema AppendTallyRequestEncrypted_tally
-- 
-- 
data AppendTallyRequestEncryptedTally = AppendTallyRequestEncryptedTally {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendTallyRequestEncryptedTally
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AppendTallyRequestEncryptedTally
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendTallyRequestEncryptedTally" (\obj -> GHC.Base.pure AppendTallyRequestEncryptedTally)