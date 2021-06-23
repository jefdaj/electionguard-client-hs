-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ValidationError
module ElectionGuard.API.Generated.Mediator.Types.ValidationError where

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

-- | Defines the data type for the schema ValidationError
-- 
-- 
data ValidationError = ValidationError {
  -- | loc
  validationErrorLoc :: ([] Data.Text.Internal.Text)
  -- | msg
  , validationErrorMsg :: Data.Text.Internal.Text
  -- | type
  , validationErrorType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ValidationError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "loc" (validationErrorLoc obj) : (Data.Aeson..=) "msg" (validationErrorMsg obj) : (Data.Aeson..=) "type" (validationErrorType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "loc" (validationErrorLoc obj) GHC.Base.<> ((Data.Aeson..=) "msg" (validationErrorMsg obj) GHC.Base.<> (Data.Aeson..=) "type" (validationErrorType obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ValidationError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ValidationError" (\obj -> ((GHC.Base.pure ValidationError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "loc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))