-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ValidateElectionDescriptionRequest
module ElectionGuard.API.Generated.Mediator.Types.ValidateElectionDescriptionRequest where

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

-- | Defines the data type for the schema ValidateElectionDescriptionRequest
-- 
-- A request to validate an Election Description
data ValidateElectionDescriptionRequest = ValidateElectionDescriptionRequest {
  -- | description
  validateElectionDescriptionRequestDescription :: (GHC.Maybe.Maybe ValidateElectionDescriptionRequestDescription)
  -- | schema_override
  , validateElectionDescriptionRequestSchemaOverride :: (GHC.Maybe.Maybe ValidateElectionDescriptionRequestSchemaOverride)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ValidateElectionDescriptionRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (validateElectionDescriptionRequestDescription obj) : (Data.Aeson..=) "schema_override" (validateElectionDescriptionRequestSchemaOverride obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (validateElectionDescriptionRequestDescription obj) GHC.Base.<> (Data.Aeson..=) "schema_override" (validateElectionDescriptionRequestSchemaOverride obj))
instance Data.Aeson.Types.FromJSON.FromJSON ValidateElectionDescriptionRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ValidateElectionDescriptionRequest" (\obj -> (GHC.Base.pure ValidateElectionDescriptionRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schema_override"))
-- | Defines the data type for the schema ValidateElectionDescriptionRequestDescription
-- 
-- 
data ValidateElectionDescriptionRequestDescription = ValidateElectionDescriptionRequestDescription {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ValidateElectionDescriptionRequestDescription
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ValidateElectionDescriptionRequestDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ValidateElectionDescriptionRequestDescription" (\obj -> GHC.Base.pure ValidateElectionDescriptionRequestDescription)
-- | Defines the data type for the schema ValidateElectionDescriptionRequestSchema_override
-- 
-- 
data ValidateElectionDescriptionRequestSchemaOverride = ValidateElectionDescriptionRequestSchemaOverride {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ValidateElectionDescriptionRequestSchemaOverride
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ValidateElectionDescriptionRequestSchemaOverride
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ValidateElectionDescriptionRequestSchemaOverride" (\obj -> GHC.Base.pure ValidateElectionDescriptionRequestSchemaOverride)