-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation generateElectionKeysApiV1KeyElectionGeneratePost
module ElectionGuard.API.Guardian.Generated.Operations.GenerateElectionKeysApiV1KeyElectionGeneratePost where

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
import qualified ElectionGuard.API.Guardian.Generated.Common
import ElectionGuard.API.Guardian.Generated.Types

-- | > POST /api/v1/key/election/generate
-- 
-- Generate election key pairs for use in election process
-- :param request: Election key pair request
-- :return: Election key pair
generateElectionKeysApiV1KeyElectionGeneratePost :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m, ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) => ElectionGuard.API.Guardian.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> ElectionKeyPairRequest                                                                                                                                       -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GenerateElectionKeysApiV1KeyElectionGeneratePostResponse)) -- ^ Monad containing the result of the operation
generateElectionKeysApiV1KeyElectionGeneratePost config
                                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GenerateElectionKeysApiV1KeyElectionGeneratePostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GenerateElectionKeysApiV1KeyElectionGeneratePostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ElectionKeyPair)
                                                                                                                                                                                                                                                  | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> GenerateElectionKeysApiV1KeyElectionGeneratePostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  HTTPValidationError)
                                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Guardian.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/election/generate") [] (GHC.Maybe.Just body) ElectionGuard.API.Guardian.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/key/election/generate
-- 
-- The same as 'generateElectionKeysApiV1KeyElectionGeneratePost' but returns the raw 'Data.ByteString.Char8.ByteString'
generateElectionKeysApiV1KeyElectionGeneratePostRaw :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                                                     ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                                                       ElectionGuard.API.Guardian.Generated.Common.Configuration s ->
                                                       ElectionKeyPairRequest ->
                                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
generateElectionKeysApiV1KeyElectionGeneratePostRaw config
                                                    body = GHC.Base.id (ElectionGuard.API.Guardian.Generated.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/election/generate") [] (GHC.Maybe.Just body) ElectionGuard.API.Guardian.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/key/election/generate
-- 
-- Monadic version of 'generateElectionKeysApiV1KeyElectionGeneratePost' (use with 'ElectionGuard.API.Guardian.Generated.Common.runWithConfiguration')
generateElectionKeysApiV1KeyElectionGeneratePostM :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                                                   ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                                                     ElectionKeyPairRequest ->
                                                     Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Guardian.Generated.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response GenerateElectionKeysApiV1KeyElectionGeneratePostResponse))
generateElectionKeysApiV1KeyElectionGeneratePostM body = GHC.Base.fmap (GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either GenerateElectionKeysApiV1KeyElectionGeneratePostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GenerateElectionKeysApiV1KeyElectionGeneratePostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ElectionKeyPair)
                                                                                                                                                                                                                                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) -> GenerateElectionKeysApiV1KeyElectionGeneratePostResponse422 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   HTTPValidationError)
                                                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3)) (ElectionGuard.API.Guardian.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/election/generate") [] (GHC.Maybe.Just body) ElectionGuard.API.Guardian.Generated.Common.RequestBodyEncodingJSON)
-- | > POST /api/v1/key/election/generate
-- 
-- Monadic version of 'generateElectionKeysApiV1KeyElectionGeneratePostRaw' (use with 'ElectionGuard.API.Guardian.Generated.Common.runWithConfiguration')
generateElectionKeysApiV1KeyElectionGeneratePostRawM :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                                                      ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                                                        ElectionKeyPairRequest ->
                                                        Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Guardian.Generated.Common.Configuration s)
                                                                                           m
                                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
generateElectionKeysApiV1KeyElectionGeneratePostRawM body = GHC.Base.id (ElectionGuard.API.Guardian.Generated.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/election/generate") [] (GHC.Maybe.Just body) ElectionGuard.API.Guardian.Generated.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'generateElectionKeysApiV1KeyElectionGeneratePost'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GenerateElectionKeysApiV1KeyElectionGeneratePostResponseError' is used.
data GenerateElectionKeysApiV1KeyElectionGeneratePostResponse =                      
   GenerateElectionKeysApiV1KeyElectionGeneratePostResponseError GHC.Base.String     -- ^ Means either no matching case available or a parse error
  | GenerateElectionKeysApiV1KeyElectionGeneratePostResponse200 ElectionKeyPair      -- ^ Successful Response
  | GenerateElectionKeysApiV1KeyElectionGeneratePostResponse422 HTTPValidationError  -- ^ Validation Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
