-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation appendToTallyApiV1TallyAppendPost
module ElectionGuard.API.Mediator.Generated.Operations.AppendToTallyApiV1TallyAppendPost where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified ElectionGuard.API.Mediator.Generated.Common
import ElectionGuard.API.Mediator.Generated.Types

-- | > POST /api/v1/tally/append
-- 
-- Append ballots into an existing tally
appendToTallyApiV1TallyAppendPost :: forall m s . (ElectionGuard.API.Mediator.Generated.Common.MonadHTTP m, ElectionGuard.API.Mediator.Generated.Common.SecurityScheme s) => ElectionGuard.API.Mediator.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> AppendTallyRequest                                                                                                                            -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response AppendToTallyApiV1TallyAppendPostResponse)) -- ^ Monad containing the result of the operation
appendToTallyApiV1TallyAppendPost config
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AppendToTallyApiV1TallyAppendPostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AppendToTallyApiV1TallyAppendPostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     AppendToTallyApiV1TallyAppendPostResponseBody200)
                                                                                                                                                                                                                    | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> AppendToTallyApiV1TallyAppendPostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     HTTPValidationError)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Mediator.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/tally/append") [] (GHC.Maybe.Just body) ElectionGuard.API.Mediator.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/tally/append
-- 
-- The same as 'appendToTallyApiV1TallyAppendPost' but returns the raw 'Data.ByteString.Char8.ByteString'
appendToTallyApiV1TallyAppendPostRaw :: forall m s . (ElectionGuard.API.Mediator.Generated.Common.MonadHTTP m,
                                                      ElectionGuard.API.Mediator.Generated.Common.SecurityScheme s) =>
                                        ElectionGuard.API.Mediator.Generated.Common.Configuration s ->
                                        AppendTallyRequest ->
                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
appendToTallyApiV1TallyAppendPostRaw config
                                     body = GHC.Base.id (ElectionGuard.API.Mediator.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/tally/append") [] (GHC.Maybe.Just body) ElectionGuard.API.Mediator.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/tally/append
-- 
-- Monadic version of 'appendToTallyApiV1TallyAppendPost' (use with 'ElectionGuard.API.Mediator.Generated.Common.runWithConfiguration')
appendToTallyApiV1TallyAppendPostM :: forall m s . (ElectionGuard.API.Mediator.Generated.Common.MonadHTTP m,
                                                    ElectionGuard.API.Mediator.Generated.Common.SecurityScheme s) =>
                                      AppendTallyRequest ->
                                      Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Mediator.Generated.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response AppendToTallyApiV1TallyAppendPostResponse))
appendToTallyApiV1TallyAppendPostM body = GHC.Base.fmap (GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either AppendToTallyApiV1TallyAppendPostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AppendToTallyApiV1TallyAppendPostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      AppendToTallyApiV1TallyAppendPostResponseBody200)
                                                                                                                                                                                                                     | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> AppendToTallyApiV1TallyAppendPostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      HTTPValidationError)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3)) (ElectionGuard.API.Mediator.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/tally/append") [] (GHC.Maybe.Just body) ElectionGuard.API.Mediator.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/tally/append
-- 
-- Monadic version of 'appendToTallyApiV1TallyAppendPostRaw' (use with 'ElectionGuard.API.Mediator.Generated.Common.runWithConfiguration')
appendToTallyApiV1TallyAppendPostRawM :: forall m s . (ElectionGuard.API.Mediator.Generated.Common.MonadHTTP m,
                                                       ElectionGuard.API.Mediator.Generated.Common.SecurityScheme s) =>
                                         AppendTallyRequest ->
                                         Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Mediator.Generated.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
appendToTallyApiV1TallyAppendPostRawM body = GHC.Base.id (ElectionGuard.API.Mediator.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/tally/append") [] (GHC.Maybe.Just body) ElectionGuard.API.Mediator.Generated.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'appendToTallyApiV1TallyAppendPost'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AppendToTallyApiV1TallyAppendPostResponseError' is used.
data AppendToTallyApiV1TallyAppendPostResponse =                                                   
   AppendToTallyApiV1TallyAppendPostResponseError GHC.Base.String                                  -- ^ Means either no matching case available or a parse error
  | AppendToTallyApiV1TallyAppendPostResponse200 AppendToTallyApiV1TallyAppendPostResponseBody200  -- ^ Successful Response
  | AppendToTallyApiV1TallyAppendPostResponse422 HTTPValidationError                               -- ^ Validation Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema AppendToTallyApiV1TallyAppendPostResponseBody200
-- 
-- 
data AppendToTallyApiV1TallyAppendPostResponseBody200 = AppendToTallyApiV1TallyAppendPostResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AppendToTallyApiV1TallyAppendPostResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AppendToTallyApiV1TallyAppendPostResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AppendToTallyApiV1TallyAppendPostResponseBody200" (\obj -> GHC.Base.pure AppendToTallyApiV1TallyAppendPostResponseBody200)
