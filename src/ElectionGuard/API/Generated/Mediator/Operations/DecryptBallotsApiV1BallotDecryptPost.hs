-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation decryptBallotsApiV1BallotDecryptPost
module ElectionGuard.API.Generated.Mediator.Operations.DecryptBallotsApiV1BallotDecryptPost where

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
import qualified ElectionGuard.API.Generated.Common
import ElectionGuard.API.Generated.Mediator.Types

-- | > POST /api/v1/ballot/decrypt
-- 
-- Decrypt Ballots
decryptBallotsApiV1BallotDecryptPost :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m, ElectionGuard.API.Generated.Common.SecurityScheme s) => ElectionGuard.API.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> DecryptBallotsRequest                                                                                                                            -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DecryptBallotsApiV1BallotDecryptPostResponse)) -- ^ Monad containing the result of the operation
decryptBallotsApiV1BallotDecryptPost config
                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DecryptBallotsApiV1BallotDecryptPostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DecryptBallotsApiV1BallotDecryptPostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              DecryptBallotsApiV1BallotDecryptPostResponseBody200)
                                                                                                                                                                                                                          | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> DecryptBallotsApiV1BallotDecryptPostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              HTTPValidationError)
                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/ballot/decrypt") [] (GHC.Maybe.Just body) ElectionGuard.API.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/ballot/decrypt
-- 
-- The same as 'decryptBallotsApiV1BallotDecryptPost' but returns the raw 'Data.ByteString.Char8.ByteString'
decryptBallotsApiV1BallotDecryptPostRaw :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                         ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                           ElectionGuard.API.Generated.Common.Configuration s ->
                                           DecryptBallotsRequest ->
                                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
decryptBallotsApiV1BallotDecryptPostRaw config
                                        body = GHC.Base.id (ElectionGuard.API.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/ballot/decrypt") [] (GHC.Maybe.Just body) ElectionGuard.API.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/ballot/decrypt
-- 
-- Monadic version of 'decryptBallotsApiV1BallotDecryptPost' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
decryptBallotsApiV1BallotDecryptPostM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                       ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                         DecryptBallotsRequest ->
                                         Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response DecryptBallotsApiV1BallotDecryptPostResponse))
decryptBallotsApiV1BallotDecryptPostM body = GHC.Base.fmap (GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either DecryptBallotsApiV1BallotDecryptPostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DecryptBallotsApiV1BallotDecryptPostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               DecryptBallotsApiV1BallotDecryptPostResponseBody200)
                                                                                                                                                                                                                           | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> DecryptBallotsApiV1BallotDecryptPostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               HTTPValidationError)
                                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3)) (ElectionGuard.API.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/ballot/decrypt") [] (GHC.Maybe.Just body) ElectionGuard.API.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/ballot/decrypt
-- 
-- Monadic version of 'decryptBallotsApiV1BallotDecryptPostRaw' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
decryptBallotsApiV1BallotDecryptPostRawM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                          ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                            DecryptBallotsRequest ->
                                            Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                               m
                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
decryptBallotsApiV1BallotDecryptPostRawM body = GHC.Base.id (ElectionGuard.API.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/ballot/decrypt") [] (GHC.Maybe.Just body) ElectionGuard.API.Generated.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'decryptBallotsApiV1BallotDecryptPost'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DecryptBallotsApiV1BallotDecryptPostResponseError' is used.
data DecryptBallotsApiV1BallotDecryptPostResponse =                                                      
   DecryptBallotsApiV1BallotDecryptPostResponseError GHC.Base.String                                     -- ^ Means either no matching case available or a parse error
  | DecryptBallotsApiV1BallotDecryptPostResponse200 DecryptBallotsApiV1BallotDecryptPostResponseBody200  -- ^ Successful Response
  | DecryptBallotsApiV1BallotDecryptPostResponse422 HTTPValidationError                                  -- ^ Validation Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DecryptBallotsApiV1BallotDecryptPostResponseBody200
-- 
-- 
data DecryptBallotsApiV1BallotDecryptPostResponseBody200 = DecryptBallotsApiV1BallotDecryptPostResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DecryptBallotsApiV1BallotDecryptPostResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DecryptBallotsApiV1BallotDecryptPostResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DecryptBallotsApiV1BallotDecryptPostResponseBody200" (\obj -> GHC.Base.pure DecryptBallotsApiV1BallotDecryptPostResponseBody200)