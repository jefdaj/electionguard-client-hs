-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ElectionKeyPair
module ElectionGuard.API.Guardian.Generated.Types.ElectionKeyPair where

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

-- | Defines the data type for the schema ElectionKeyPair
-- 
-- Election key pair, proof and polynomial
data ElectionKeyPair = ElectionKeyPair {
  -- | polynomial
  electionKeyPairPolynomial :: (GHC.Maybe.Maybe ElectionKeyPairPolynomial)
  -- | proof
  , electionKeyPairProof :: (GHC.Maybe.Maybe ElectionKeyPairProof)
  -- | public_key
  , electionKeyPairPublicKey :: Data.Text.Internal.Text
  -- | secret_key
  , electionKeyPairSecretKey :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ElectionKeyPair
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "polynomial" (electionKeyPairPolynomial obj) : (Data.Aeson..=) "proof" (electionKeyPairProof obj) : (Data.Aeson..=) "public_key" (electionKeyPairPublicKey obj) : (Data.Aeson..=) "secret_key" (electionKeyPairSecretKey obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "polynomial" (electionKeyPairPolynomial obj) GHC.Base.<> ((Data.Aeson..=) "proof" (electionKeyPairProof obj) GHC.Base.<> ((Data.Aeson..=) "public_key" (electionKeyPairPublicKey obj) GHC.Base.<> (Data.Aeson..=) "secret_key" (electionKeyPairSecretKey obj))))
instance Data.Aeson.Types.FromJSON.FromJSON ElectionKeyPair
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElectionKeyPair" (\obj -> (((GHC.Base.pure ElectionKeyPair GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "polynomial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proof")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "secret_key"))
-- | Defines the data type for the schema ElectionKeyPairPolynomial
-- 
-- 
data ElectionKeyPairPolynomial = ElectionKeyPairPolynomial {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ElectionKeyPairPolynomial
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ElectionKeyPairPolynomial
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElectionKeyPairPolynomial" (\obj -> GHC.Base.pure ElectionKeyPairPolynomial)
-- | Defines the data type for the schema ElectionKeyPairProof
-- 
-- 
data ElectionKeyPairProof = ElectionKeyPairProof {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ElectionKeyPairProof
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ElectionKeyPairProof
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ElectionKeyPairProof" (\obj -> GHC.Base.pure ElectionKeyPairProof)