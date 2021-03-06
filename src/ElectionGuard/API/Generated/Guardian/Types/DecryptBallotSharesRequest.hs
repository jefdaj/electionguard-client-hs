-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DecryptBallotSharesRequest
module ElectionGuard.API.Generated.Guardian.Types.DecryptBallotSharesRequest where

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
import ElectionGuard.API.Generated.Guardian.Types.Guardian

-- | Defines the data type for the schema DecryptBallotSharesRequest
-- 
-- 
data DecryptBallotSharesRequest = DecryptBallotSharesRequest {
  -- | context
  decryptBallotSharesRequestContext :: (GHC.Maybe.Maybe DecryptBallotSharesRequestContext)
  -- | encrypted_ballots
  , decryptBallotSharesRequestEncryptedBallots :: ([] DecryptBallotSharesRequestEncryptedBallots)
  -- | guardian
  , decryptBallotSharesRequestGuardian :: Guardian
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotSharesRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "context" (decryptBallotSharesRequestContext obj) : (Data.Aeson..=) "encrypted_ballots" (decryptBallotSharesRequestEncryptedBallots obj) : (Data.Aeson..=) "guardian" (decryptBallotSharesRequestGuardian obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "context" (decryptBallotSharesRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "encrypted_ballots" (decryptBallotSharesRequestEncryptedBallots obj) GHC.Base.<> (Data.Aeson..=) "guardian" (decryptBallotSharesRequestGuardian obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotSharesRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotSharesRequest" (\obj -> ((GHC.Base.pure DecryptBallotSharesRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "encrypted_ballots")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "guardian"))
-- | Defines the data type for the schema DecryptBallotSharesRequestContext
-- 
-- 
data DecryptBallotSharesRequestContext = DecryptBallotSharesRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotSharesRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotSharesRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotSharesRequestContext" (\obj -> GHC.Base.pure DecryptBallotSharesRequestContext)
-- | Defines the data type for the schema DecryptBallotSharesRequestEncrypted_ballots
-- 
-- 
data DecryptBallotSharesRequestEncryptedBallots = DecryptBallotSharesRequestEncryptedBallots {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotSharesRequestEncryptedBallots
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotSharesRequestEncryptedBallots
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotSharesRequestEncryptedBallots" (\obj -> GHC.Base.pure DecryptBallotSharesRequestEncryptedBallots)