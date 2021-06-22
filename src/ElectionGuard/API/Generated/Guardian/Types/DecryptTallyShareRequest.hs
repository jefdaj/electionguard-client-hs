-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DecryptTallyShareRequest
module ElectionGuard.API.Generated.Guardian.Types.DecryptTallyShareRequest where

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

-- | Defines the data type for the schema DecryptTallyShareRequest
-- 
-- 
data DecryptTallyShareRequest = DecryptTallyShareRequest {
  -- | context
  decryptTallyShareRequestContext :: (GHC.Maybe.Maybe DecryptTallyShareRequestContext)
  -- | description
  , decryptTallyShareRequestDescription :: (GHC.Maybe.Maybe DecryptTallyShareRequestDescription)
  -- | encrypted_tally
  , decryptTallyShareRequestEncryptedTally :: (GHC.Maybe.Maybe DecryptTallyShareRequestEncryptedTally)
  -- | guardian
  , decryptTallyShareRequestGuardian :: Guardian
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyShareRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "context" (decryptTallyShareRequestContext obj) : (Data.Aeson..=) "description" (decryptTallyShareRequestDescription obj) : (Data.Aeson..=) "encrypted_tally" (decryptTallyShareRequestEncryptedTally obj) : (Data.Aeson..=) "guardian" (decryptTallyShareRequestGuardian obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "context" (decryptTallyShareRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "description" (decryptTallyShareRequestDescription obj) GHC.Base.<> ((Data.Aeson..=) "encrypted_tally" (decryptTallyShareRequestEncryptedTally obj) GHC.Base.<> (Data.Aeson..=) "guardian" (decryptTallyShareRequestGuardian obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyShareRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyShareRequest" (\obj -> (((GHC.Base.pure DecryptTallyShareRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "encrypted_tally")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "guardian"))
-- | Defines the data type for the schema DecryptTallyShareRequestContext
-- 
-- 
data DecryptTallyShareRequestContext = DecryptTallyShareRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyShareRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyShareRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyShareRequestContext" (\obj -> GHC.Base.pure DecryptTallyShareRequestContext)
-- | Defines the data type for the schema DecryptTallyShareRequestDescription
-- 
-- 
data DecryptTallyShareRequestDescription = DecryptTallyShareRequestDescription {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyShareRequestDescription
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyShareRequestDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyShareRequestDescription" (\obj -> GHC.Base.pure DecryptTallyShareRequestDescription)
-- | Defines the data type for the schema DecryptTallyShareRequestEncrypted_tally
-- 
-- 
data DecryptTallyShareRequestEncryptedTally = DecryptTallyShareRequestEncryptedTally {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyShareRequestEncryptedTally
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyShareRequestEncryptedTally
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyShareRequestEncryptedTally" (\obj -> GHC.Base.pure DecryptTallyShareRequestEncryptedTally)