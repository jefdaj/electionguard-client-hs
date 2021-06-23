-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains all types with cyclic dependencies (between each other or to itself)
module ElectionGuard.API.Generated.Guardian.CyclicTypes where

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
import ElectionGuard.API.Generated.Guardian.Types.AuxiliaryPublicKey
import ElectionGuard.API.Generated.Guardian.Types.BackupChallengeRequest
import ElectionGuard.API.Generated.Guardian.Types.ChallengeVerificationRequest
import ElectionGuard.API.Generated.Guardian.Types.ElectionKeyPair
import ElectionGuard.API.Generated.Guardian.Types.ElectionKeyPairRequest
import ElectionGuard.API.Generated.Guardian.Types.GuardianBackup
import ElectionGuard.API.Generated.Guardian.Types.ValidationError
import ElectionGuard.API.Generated.Guardian.Types.BackupVerificationRequest
import ElectionGuard.API.Generated.Guardian.Types.Guardian
import ElectionGuard.API.Generated.Guardian.Types.GuardianBackupRequest
import ElectionGuard.API.Generated.Guardian.Types.GuardianRequest
import ElectionGuard.API.Generated.Types.HTTPValidationError
import ElectionGuard.API.Generated.Guardian.Types.DecryptBallotSharesRequest
import ElectionGuard.API.Generated.Guardian.Types.DecryptTallyShareRequest