-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ChallengeVerificationRequest
module ElectionGuard.API.Generated.Guardian.Types.ChallengeVerificationRequest where

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

-- | Defines the data type for the schema ChallengeVerificationRequest
-- 
-- 
data ChallengeVerificationRequest = ChallengeVerificationRequest {
  -- | election_partial_key_challenge
  challengeVerificationRequestElectionPartialKeyChallenge :: (GHC.Maybe.Maybe ChallengeVerificationRequestElectionPartialKeyChallenge)
  -- | verifier_id
  , challengeVerificationRequestVerifierId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ChallengeVerificationRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "election_partial_key_challenge" (challengeVerificationRequestElectionPartialKeyChallenge obj) : (Data.Aeson..=) "verifier_id" (challengeVerificationRequestVerifierId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "election_partial_key_challenge" (challengeVerificationRequestElectionPartialKeyChallenge obj) GHC.Base.<> (Data.Aeson..=) "verifier_id" (challengeVerificationRequestVerifierId obj))
instance Data.Aeson.Types.FromJSON.FromJSON ChallengeVerificationRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChallengeVerificationRequest" (\obj -> (GHC.Base.pure ChallengeVerificationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "election_partial_key_challenge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verifier_id"))
-- | Defines the data type for the schema ChallengeVerificationRequestElection_partial_key_challenge
-- 
-- 
data ChallengeVerificationRequestElectionPartialKeyChallenge = ChallengeVerificationRequestElectionPartialKeyChallenge {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ChallengeVerificationRequestElectionPartialKeyChallenge
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ChallengeVerificationRequestElectionPartialKeyChallenge
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChallengeVerificationRequestElectionPartialKeyChallenge" (\obj -> GHC.Base.pure ChallengeVerificationRequestElectionPartialKeyChallenge)