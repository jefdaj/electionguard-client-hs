-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema EncryptBallotsRequest
module ElectionGuard.API.Generated.Mediator.Types.EncryptBallotsRequest where

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
import qualified ElectionGuard.API.Generated.Common

-- | Defines the data type for the schema EncryptBallotsRequest
-- 
-- 
data EncryptBallotsRequest = EncryptBallotsRequest {
  -- | ballots
  encryptBallotsRequestBallots :: ([] EncryptBallotsRequestBallots)
  -- | context
  , encryptBallotsRequestContext :: (GHC.Maybe.Maybe EncryptBallotsRequestContext)
  -- | description
  , encryptBallotsRequestDescription :: (GHC.Maybe.Maybe EncryptBallotsRequestDescription)
  -- | nonce
  , encryptBallotsRequestNonce :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | seed_hash
  , encryptBallotsRequestSeedHash :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON EncryptBallotsRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ballots" (encryptBallotsRequestBallots obj) : (Data.Aeson..=) "context" (encryptBallotsRequestContext obj) : (Data.Aeson..=) "description" (encryptBallotsRequestDescription obj) : (Data.Aeson..=) "nonce" (encryptBallotsRequestNonce obj) : (Data.Aeson..=) "seed_hash" (encryptBallotsRequestSeedHash obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ballots" (encryptBallotsRequestBallots obj) GHC.Base.<> ((Data.Aeson..=) "context" (encryptBallotsRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "description" (encryptBallotsRequestDescription obj) GHC.Base.<> ((Data.Aeson..=) "nonce" (encryptBallotsRequestNonce obj) GHC.Base.<> (Data.Aeson..=) "seed_hash" (encryptBallotsRequestSeedHash obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON EncryptBallotsRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EncryptBallotsRequest" (\obj -> ((((GHC.Base.pure EncryptBallotsRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ballots")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nonce")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "seed_hash"))
-- | Defines the data type for the schema EncryptBallotsRequestBallots
-- 
-- 
data EncryptBallotsRequestBallots = EncryptBallotsRequestBallots {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON EncryptBallotsRequestBallots
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON EncryptBallotsRequestBallots
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EncryptBallotsRequestBallots" (\obj -> GHC.Base.pure EncryptBallotsRequestBallots)
-- | Defines the data type for the schema EncryptBallotsRequestContext
-- 
-- 
data EncryptBallotsRequestContext = EncryptBallotsRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON EncryptBallotsRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON EncryptBallotsRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EncryptBallotsRequestContext" (\obj -> GHC.Base.pure EncryptBallotsRequestContext)
-- | Defines the data type for the schema EncryptBallotsRequestDescription
-- 
-- 
data EncryptBallotsRequestDescription = EncryptBallotsRequestDescription {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON EncryptBallotsRequestDescription
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON EncryptBallotsRequestDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EncryptBallotsRequestDescription" (\obj -> GHC.Base.pure EncryptBallotsRequestDescription)