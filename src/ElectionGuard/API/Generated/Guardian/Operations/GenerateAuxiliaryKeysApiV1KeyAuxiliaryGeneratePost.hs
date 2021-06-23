-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost
module ElectionGuard.API.Generated.Guardian.Operations.GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost where

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
import ElectionGuard.API.Generated.Guardian.Types

-- | > POST /api/v1/key/auxiliary/generate
-- 
-- Generate auxiliary key pair for auxiliary uses during process
-- :return: Auxiliary key pair
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m, ElectionGuard.API.Generated.Common.SecurityScheme s) => ElectionGuard.API.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse)) -- ^ Monad containing the result of the operation
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          AuxiliaryKeyPair)
                                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/auxiliary/generate") [])
-- | > POST /api/v1/key/auxiliary/generate
-- 
-- The same as 'generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost' but returns the raw 'Data.ByteString.Char8.ByteString'
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostRaw :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                       ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                         ElectionGuard.API.Generated.Common.Configuration s ->
                                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostRaw config = GHC.Base.id (ElectionGuard.API.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/auxiliary/generate") [])
-- | > POST /api/v1/key/auxiliary/generate
-- 
-- Monadic version of 'generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                     ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                       Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                                          m
                                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                              (Network.HTTP.Client.Types.Response GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse))
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    AuxiliaryKeyPair)
                                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (ElectionGuard.API.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/auxiliary/generate") [])
-- | > POST /api/v1/key/auxiliary/generate
-- 
-- Monadic version of 'generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostRaw' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostRawM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                        ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                          Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                                             m
                                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostRawM = GHC.Base.id (ElectionGuard.API.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/api/v1/key/auxiliary/generate") [])
-- | Represents a response of the operation 'generateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePost'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponseError' is used.
data GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse =                   
   GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GenerateAuxiliaryKeysApiV1KeyAuxiliaryGeneratePostResponse200 AuxiliaryKeyPair  -- ^ Successful Response
  deriving (GHC.Show.Show, GHC.Classes.Eq)