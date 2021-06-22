-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AuxiliaryPublicKey
module ElectionGuard.API.Guardian.Generated.Types.AuxiliaryPublicKey where

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

-- | Defines the data type for the schema AuxiliaryPublicKey
-- 
-- Auxiliary public key and owner information
data AuxiliaryPublicKey = AuxiliaryPublicKey {
  -- | key
  auxiliaryPublicKeyKey :: Data.Text.Internal.Text
  -- | owner_id
  , auxiliaryPublicKeyOwnerId :: Data.Text.Internal.Text
  -- | sequence_order
  , auxiliaryPublicKeySequenceOrder :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AuxiliaryPublicKey
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "key" (auxiliaryPublicKeyKey obj) : (Data.Aeson..=) "owner_id" (auxiliaryPublicKeyOwnerId obj) : (Data.Aeson..=) "sequence_order" (auxiliaryPublicKeySequenceOrder obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "key" (auxiliaryPublicKeyKey obj) GHC.Base.<> ((Data.Aeson..=) "owner_id" (auxiliaryPublicKeyOwnerId obj) GHC.Base.<> (Data.Aeson..=) "sequence_order" (auxiliaryPublicKeySequenceOrder obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AuxiliaryPublicKey
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AuxiliaryPublicKey" (\obj -> ((GHC.Base.pure AuxiliaryPublicKey GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "owner_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sequence_order"))