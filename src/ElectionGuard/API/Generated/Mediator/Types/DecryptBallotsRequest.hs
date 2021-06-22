-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DecryptBallotsRequest
module ElectionGuard.API.Mediator.Generated.Types.DecryptBallotsRequest where

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

-- | Defines the data type for the schema DecryptBallotsRequest
-- 
-- 
data DecryptBallotsRequest = DecryptBallotsRequest {
  -- | context
  decryptBallotsRequestContext :: (GHC.Maybe.Maybe DecryptBallotsRequestContext)
  -- | encrypted_ballots
  , decryptBallotsRequestEncryptedBallots :: ([] DecryptBallotsRequestEncryptedBallots)
  -- | shares
  , decryptBallotsRequestShares :: DecryptBallotsRequestShares
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotsRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "context" (decryptBallotsRequestContext obj) : (Data.Aeson..=) "encrypted_ballots" (decryptBallotsRequestEncryptedBallots obj) : (Data.Aeson..=) "shares" (decryptBallotsRequestShares obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "context" (decryptBallotsRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "encrypted_ballots" (decryptBallotsRequestEncryptedBallots obj) GHC.Base.<> (Data.Aeson..=) "shares" (decryptBallotsRequestShares obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotsRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotsRequest" (\obj -> ((GHC.Base.pure DecryptBallotsRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "encrypted_ballots")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "shares"))
-- | Defines the data type for the schema DecryptBallotsRequestContext
-- 
-- 
data DecryptBallotsRequestContext = DecryptBallotsRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotsRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotsRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotsRequestContext" (\obj -> GHC.Base.pure DecryptBallotsRequestContext)
-- | Defines the data type for the schema DecryptBallotsRequestEncrypted_ballots
-- 
-- 
data DecryptBallotsRequestEncryptedBallots = DecryptBallotsRequestEncryptedBallots {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotsRequestEncryptedBallots
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotsRequestEncryptedBallots
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotsRequestEncryptedBallots" (\obj -> GHC.Base.pure DecryptBallotsRequestEncryptedBallots)
-- | Defines the data type for the schema DecryptBallotsRequestShares
-- 
-- 
data DecryptBallotsRequestShares = DecryptBallotsRequestShares {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotsRequestShares
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotsRequestShares
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotsRequestShares" (\obj -> GHC.Base.pure DecryptBallotsRequestShares)