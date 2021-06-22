-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Guardian
module ElectionGuard.API.Guardian.Generated.Types.Guardian where

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
import qualified ElectionGuard.API.Guardian.Generated.Common
import ElectionGuard.API.Guardian.Generated.Types.AuxiliaryKeyPair
import ElectionGuard.API.Guardian.Generated.Types.ElectionKeyPair

-- | Defines the data type for the schema Guardian
-- 
-- 
data Guardian = Guardian {
  -- | auxiliary_key_pair: Auxiliary pair of a secret key and public key.
  guardianAuxiliaryKeyPair :: AuxiliaryKeyPair
  -- | election_key_pair: Election key pair, proof and polynomial
  , guardianElectionKeyPair :: ElectionKeyPair
  -- | id
  , guardianId :: Data.Text.Internal.Text
  -- | number_of_guardians
  , guardianNumberOfGuardians :: GHC.Integer.Type.Integer
  -- | quorum
  , guardianQuorum :: GHC.Integer.Type.Integer
  -- | sequence_order
  , guardianSequenceOrder :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Guardian
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "auxiliary_key_pair" (guardianAuxiliaryKeyPair obj) : (Data.Aeson..=) "election_key_pair" (guardianElectionKeyPair obj) : (Data.Aeson..=) "id" (guardianId obj) : (Data.Aeson..=) "number_of_guardians" (guardianNumberOfGuardians obj) : (Data.Aeson..=) "quorum" (guardianQuorum obj) : (Data.Aeson..=) "sequence_order" (guardianSequenceOrder obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "auxiliary_key_pair" (guardianAuxiliaryKeyPair obj) GHC.Base.<> ((Data.Aeson..=) "election_key_pair" (guardianElectionKeyPair obj) GHC.Base.<> ((Data.Aeson..=) "id" (guardianId obj) GHC.Base.<> ((Data.Aeson..=) "number_of_guardians" (guardianNumberOfGuardians obj) GHC.Base.<> ((Data.Aeson..=) "quorum" (guardianQuorum obj) GHC.Base.<> (Data.Aeson..=) "sequence_order" (guardianSequenceOrder obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Guardian
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Guardian" (\obj -> (((((GHC.Base.pure Guardian GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "auxiliary_key_pair")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "election_key_pair")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number_of_guardians")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quorum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sequence_order"))