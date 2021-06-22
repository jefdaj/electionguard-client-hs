-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema BackupVerificationRequest
module ElectionGuard.API.Generated.Guardian.Types.BackupVerificationRequest where

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

-- | Defines the data type for the schema BackupVerificationRequest
-- 
-- 
data BackupVerificationRequest = BackupVerificationRequest {
  -- | auxiliary_key_pair: Auxiliary pair of a secret key and public key.
  backupVerificationRequestAuxiliaryKeyPair :: AuxiliaryKeyPair
  -- | election_partial_key_backup
  , backupVerificationRequestElectionPartialKeyBackup :: (GHC.Maybe.Maybe BackupVerificationRequestElectionPartialKeyBackup)
  -- | override_rsa
  , backupVerificationRequestOverrideRsa :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | verifier_id
  , backupVerificationRequestVerifierId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BackupVerificationRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "auxiliary_key_pair" (backupVerificationRequestAuxiliaryKeyPair obj) : (Data.Aeson..=) "election_partial_key_backup" (backupVerificationRequestElectionPartialKeyBackup obj) : (Data.Aeson..=) "override_rsa" (backupVerificationRequestOverrideRsa obj) : (Data.Aeson..=) "verifier_id" (backupVerificationRequestVerifierId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "auxiliary_key_pair" (backupVerificationRequestAuxiliaryKeyPair obj) GHC.Base.<> ((Data.Aeson..=) "election_partial_key_backup" (backupVerificationRequestElectionPartialKeyBackup obj) GHC.Base.<> ((Data.Aeson..=) "override_rsa" (backupVerificationRequestOverrideRsa obj) GHC.Base.<> (Data.Aeson..=) "verifier_id" (backupVerificationRequestVerifierId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON BackupVerificationRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BackupVerificationRequest" (\obj -> (((GHC.Base.pure BackupVerificationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "auxiliary_key_pair")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "election_partial_key_backup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "override_rsa")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verifier_id"))
-- | Defines the data type for the schema BackupVerificationRequestElection_partial_key_backup
-- 
-- 
data BackupVerificationRequestElectionPartialKeyBackup = BackupVerificationRequestElectionPartialKeyBackup {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BackupVerificationRequestElectionPartialKeyBackup
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON BackupVerificationRequestElectionPartialKeyBackup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BackupVerificationRequestElectionPartialKeyBackup" (\obj -> GHC.Base.pure BackupVerificationRequestElectionPartialKeyBackup)