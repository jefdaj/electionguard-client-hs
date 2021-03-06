-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DecryptTallyRequest
module ElectionGuard.API.Generated.Mediator.Types.DecryptTallyRequest where

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

-- | Defines the data type for the schema DecryptTallyRequest
-- 
-- 
data DecryptTallyRequest = DecryptTallyRequest {
  -- | context
  decryptTallyRequestContext :: (GHC.Maybe.Maybe DecryptTallyRequestContext)
  -- | description
  , decryptTallyRequestDescription :: (GHC.Maybe.Maybe DecryptTallyRequestDescription)
  -- | encrypted_tally
  , decryptTallyRequestEncryptedTally :: (GHC.Maybe.Maybe DecryptTallyRequestEncryptedTally)
  -- | shares
  , decryptTallyRequestShares :: DecryptTallyRequestShares
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "context" (decryptTallyRequestContext obj) : (Data.Aeson..=) "description" (decryptTallyRequestDescription obj) : (Data.Aeson..=) "encrypted_tally" (decryptTallyRequestEncryptedTally obj) : (Data.Aeson..=) "shares" (decryptTallyRequestShares obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "context" (decryptTallyRequestContext obj) GHC.Base.<> ((Data.Aeson..=) "description" (decryptTallyRequestDescription obj) GHC.Base.<> ((Data.Aeson..=) "encrypted_tally" (decryptTallyRequestEncryptedTally obj) GHC.Base.<> (Data.Aeson..=) "shares" (decryptTallyRequestShares obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyRequest" (\obj -> (((GHC.Base.pure DecryptTallyRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "encrypted_tally")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "shares"))
-- | Defines the data type for the schema DecryptTallyRequestContext
-- 
-- 
data DecryptTallyRequestContext = DecryptTallyRequestContext {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyRequestContext
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyRequestContext
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyRequestContext" (\obj -> GHC.Base.pure DecryptTallyRequestContext)
-- | Defines the data type for the schema DecryptTallyRequestDescription
-- 
-- 
data DecryptTallyRequestDescription = DecryptTallyRequestDescription {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyRequestDescription
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyRequestDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyRequestDescription" (\obj -> GHC.Base.pure DecryptTallyRequestDescription)
-- | Defines the data type for the schema DecryptTallyRequestEncrypted_tally
-- 
-- 
data DecryptTallyRequestEncryptedTally = DecryptTallyRequestEncryptedTally {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyRequestEncryptedTally
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyRequestEncryptedTally
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyRequestEncryptedTally" (\obj -> GHC.Base.pure DecryptTallyRequestEncryptedTally)
-- | Defines the data type for the schema DecryptTallyRequestShares
-- 
-- 
data DecryptTallyRequestShares = DecryptTallyRequestShares {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptTallyRequestShares
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptTallyRequestShares
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptTallyRequestShares" (\obj -> GHC.Base.pure DecryptTallyRequestShares)