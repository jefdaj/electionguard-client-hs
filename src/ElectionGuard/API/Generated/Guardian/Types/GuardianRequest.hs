-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema GuardianRequest
module ElectionGuard.API.Generated.Guardian.Types.GuardianRequest where

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
import ElectionGuard.API.Generated.Guardian.Types.AuxiliaryKeyPair

-- | Defines the data type for the schema GuardianRequest
-- 
-- 
data GuardianRequest = GuardianRequest {
  -- | auxiliary_key_pair: Auxiliary pair of a secret key and public key.
  guardianRequestAuxiliaryKeyPair :: (GHC.Maybe.Maybe AuxiliaryKeyPair)
  -- | id
  , guardianRequestId :: Data.Text.Internal.Text
  -- | nonce
  , guardianRequestNonce :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | number_of_guardians
  , guardianRequestNumberOfGuardians :: GHC.Integer.Type.Integer
  -- | quorum
  , guardianRequestQuorum :: GHC.Integer.Type.Integer
  -- | sequence_order
  , guardianRequestSequenceOrder :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GuardianRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "auxiliary_key_pair" (guardianRequestAuxiliaryKeyPair obj) : (Data.Aeson..=) "id" (guardianRequestId obj) : (Data.Aeson..=) "nonce" (guardianRequestNonce obj) : (Data.Aeson..=) "number_of_guardians" (guardianRequestNumberOfGuardians obj) : (Data.Aeson..=) "quorum" (guardianRequestQuorum obj) : (Data.Aeson..=) "sequence_order" (guardianRequestSequenceOrder obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "auxiliary_key_pair" (guardianRequestAuxiliaryKeyPair obj) GHC.Base.<> ((Data.Aeson..=) "id" (guardianRequestId obj) GHC.Base.<> ((Data.Aeson..=) "nonce" (guardianRequestNonce obj) GHC.Base.<> ((Data.Aeson..=) "number_of_guardians" (guardianRequestNumberOfGuardians obj) GHC.Base.<> ((Data.Aeson..=) "quorum" (guardianRequestQuorum obj) GHC.Base.<> (Data.Aeson..=) "sequence_order" (guardianRequestSequenceOrder obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GuardianRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GuardianRequest" (\obj -> (((((GHC.Base.pure GuardianRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auxiliary_key_pair")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nonce")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number_of_guardians")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quorum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sequence_order"))