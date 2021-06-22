-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema GuardianBackupRequest
module ElectionGuard.API.Guardian.Generated.Types.GuardianBackupRequest where

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
import ElectionGuard.API.Guardian.Generated.Types.AuxiliaryPublicKey

-- | Defines the data type for the schema GuardianBackupRequest
-- 
-- 
data GuardianBackupRequest = GuardianBackupRequest {
  -- | auxiliary_public_keys
  guardianBackupRequestAuxiliaryPublicKeys :: ([] AuxiliaryPublicKey)
  -- | election_polynomial
  , guardianBackupRequestElectionPolynomial :: (GHC.Maybe.Maybe GuardianBackupRequestElectionPolynomial)
  -- | guardian_id
  , guardianBackupRequestGuardianId :: Data.Text.Internal.Text
  -- | override_rsa
  , guardianBackupRequestOverrideRsa :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | quorum
  , guardianBackupRequestQuorum :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GuardianBackupRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "auxiliary_public_keys" (guardianBackupRequestAuxiliaryPublicKeys obj) : (Data.Aeson..=) "election_polynomial" (guardianBackupRequestElectionPolynomial obj) : (Data.Aeson..=) "guardian_id" (guardianBackupRequestGuardianId obj) : (Data.Aeson..=) "override_rsa" (guardianBackupRequestOverrideRsa obj) : (Data.Aeson..=) "quorum" (guardianBackupRequestQuorum obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "auxiliary_public_keys" (guardianBackupRequestAuxiliaryPublicKeys obj) GHC.Base.<> ((Data.Aeson..=) "election_polynomial" (guardianBackupRequestElectionPolynomial obj) GHC.Base.<> ((Data.Aeson..=) "guardian_id" (guardianBackupRequestGuardianId obj) GHC.Base.<> ((Data.Aeson..=) "override_rsa" (guardianBackupRequestOverrideRsa obj) GHC.Base.<> (Data.Aeson..=) "quorum" (guardianBackupRequestQuorum obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON GuardianBackupRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GuardianBackupRequest" (\obj -> ((((GHC.Base.pure GuardianBackupRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "auxiliary_public_keys")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "election_polynomial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "guardian_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "override_rsa")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quorum"))
-- | Defines the data type for the schema GuardianBackupRequestElection_polynomial
-- 
-- 
data GuardianBackupRequestElectionPolynomial = GuardianBackupRequestElectionPolynomial {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GuardianBackupRequestElectionPolynomial
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GuardianBackupRequestElectionPolynomial
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GuardianBackupRequestElectionPolynomial" (\obj -> GHC.Base.pure GuardianBackupRequestElectionPolynomial)