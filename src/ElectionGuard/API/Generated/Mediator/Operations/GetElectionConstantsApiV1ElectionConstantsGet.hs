-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getElectionConstantsApiV1ElectionConstantsGet
module ElectionGuard.API.Generated.Mediator.Operations.GetElectionConstantsApiV1ElectionConstantsGet where

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

-- | > GET /api/v1/election/constants
-- 
-- Return the constants defined for an election
getElectionConstantsApiV1ElectionConstantsGet :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m, ElectionGuard.API.Generated.Common.SecurityScheme s) => ElectionGuard.API.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetElectionConstantsApiV1ElectionConstantsGetResponse)) -- ^ Monad containing the result of the operation
getElectionConstantsApiV1ElectionConstantsGet config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetElectionConstantsApiV1ElectionConstantsGetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetElectionConstantsApiV1ElectionConstantsGetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GetElectionConstantsApiV1ElectionConstantsGetResponseBody200)
                                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/election/constants") [])
-- | > GET /api/v1/election/constants
-- 
-- The same as 'getElectionConstantsApiV1ElectionConstantsGet' but returns the raw 'Data.ByteString.Char8.ByteString'
getElectionConstantsApiV1ElectionConstantsGetRaw :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                  ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                    ElectionGuard.API.Generated.Common.Configuration s ->
                                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getElectionConstantsApiV1ElectionConstantsGetRaw config = GHC.Base.id (ElectionGuard.API.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/election/constants") [])
-- | > GET /api/v1/election/constants
-- 
-- Monadic version of 'getElectionConstantsApiV1ElectionConstantsGet' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
getElectionConstantsApiV1ElectionConstantsGetM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                  Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                                     m
                                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                         (Network.HTTP.Client.Types.Response GetElectionConstantsApiV1ElectionConstantsGetResponse))
getElectionConstantsApiV1ElectionConstantsGetM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetElectionConstantsApiV1ElectionConstantsGetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetElectionConstantsApiV1ElectionConstantsGetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetElectionConstantsApiV1ElectionConstantsGetResponseBody200)
                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (ElectionGuard.API.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/election/constants") [])
-- | > GET /api/v1/election/constants
-- 
-- Monadic version of 'getElectionConstantsApiV1ElectionConstantsGetRaw' (use with 'ElectionGuard.API.Generated.Common.runWithConfiguration')
getElectionConstantsApiV1ElectionConstantsGetRawM :: forall m s . (ElectionGuard.API.Generated.Common.MonadHTTP m,
                                                                   ElectionGuard.API.Generated.Common.SecurityScheme s) =>
                                                     Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Generated.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getElectionConstantsApiV1ElectionConstantsGetRawM = GHC.Base.id (ElectionGuard.API.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/election/constants") [])
-- | Represents a response of the operation 'getElectionConstantsApiV1ElectionConstantsGet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetElectionConstantsApiV1ElectionConstantsGetResponseError' is used.
data GetElectionConstantsApiV1ElectionConstantsGetResponse =                                                               
   GetElectionConstantsApiV1ElectionConstantsGetResponseError GHC.Base.String                                              -- ^ Means either no matching case available or a parse error
  | GetElectionConstantsApiV1ElectionConstantsGetResponse200 GetElectionConstantsApiV1ElectionConstantsGetResponseBody200  -- ^ Successful Response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetElectionConstantsApiV1ElectionConstantsGetResponseBody200
-- 
-- 
data GetElectionConstantsApiV1ElectionConstantsGetResponseBody200 = GetElectionConstantsApiV1ElectionConstantsGetResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetElectionConstantsApiV1ElectionConstantsGetResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetElectionConstantsApiV1ElectionConstantsGetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetElectionConstantsApiV1ElectionConstantsGetResponseBody200" (\obj -> GHC.Base.pure GetElectionConstantsApiV1ElectionConstantsGetResponseBody200)
