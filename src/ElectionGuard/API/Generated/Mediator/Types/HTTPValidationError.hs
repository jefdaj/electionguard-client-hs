-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema HTTPValidationError
module ElectionGuard.API.Generated.Mediator.Types.HTTPValidationError where

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
import ElectionGuard.API.Generated.Mediator.Types.ValidationError

-- | Defines the data type for the schema HTTPValidationError
-- 
-- 
data HTTPValidationError = HTTPValidationError {
  -- | detail
  hTTPValidationErrorDetail :: (GHC.Maybe.Maybe ([] ValidationError))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON HTTPValidationError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "detail" (hTTPValidationErrorDetail obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "detail" (hTTPValidationErrorDetail obj))
instance Data.Aeson.Types.FromJSON.FromJSON HTTPValidationError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "HTTPValidationError" (\obj -> GHC.Base.pure HTTPValidationError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "detail"))