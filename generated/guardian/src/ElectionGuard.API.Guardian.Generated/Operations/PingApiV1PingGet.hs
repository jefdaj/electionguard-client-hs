-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation pingApiV1PingGet
module ElectionGuard.API.Guardian.Generated.Operations.PingApiV1PingGet where

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

-- | > GET /api/v1/ping
-- 
-- Ensure API can be pinged
pingApiV1PingGet :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m, ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) => ElectionGuard.API.Guardian.Generated.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PingApiV1PingGetResponse)) -- ^ Monad containing the result of the operation
pingApiV1PingGet config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PingApiV1PingGetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PingApiV1PingGetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Data.Text.Internal.Text)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (ElectionGuard.API.Guardian.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/ping") [])
-- | > GET /api/v1/ping
-- 
-- The same as 'pingApiV1PingGet' but returns the raw 'Data.ByteString.Char8.ByteString'
pingApiV1PingGetRaw :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                     ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                       ElectionGuard.API.Guardian.Generated.Common.Configuration s ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
pingApiV1PingGetRaw config = GHC.Base.id (ElectionGuard.API.Guardian.Generated.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/ping") [])
-- | > GET /api/v1/ping
-- 
-- Monadic version of 'pingApiV1PingGet' (use with 'ElectionGuard.API.Guardian.Generated.Common.runWithConfiguration')
pingApiV1PingGetM :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                   ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                     Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Guardian.Generated.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PingApiV1PingGetResponse))
pingApiV1PingGetM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PingApiV1PingGetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PingApiV1PingGetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Data.Text.Internal.Text)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (ElectionGuard.API.Guardian.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/ping") [])
-- | > GET /api/v1/ping
-- 
-- Monadic version of 'pingApiV1PingGetRaw' (use with 'ElectionGuard.API.Guardian.Generated.Common.runWithConfiguration')
pingApiV1PingGetRawM :: forall m s . (ElectionGuard.API.Guardian.Generated.Common.MonadHTTP m,
                                      ElectionGuard.API.Guardian.Generated.Common.SecurityScheme s) =>
                        Control.Monad.Trans.Reader.ReaderT (ElectionGuard.API.Guardian.Generated.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
pingApiV1PingGetRawM = GHC.Base.id (ElectionGuard.API.Guardian.Generated.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v1/ping") [])
-- | Represents a response of the operation 'pingApiV1PingGet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PingApiV1PingGetResponseError' is used.
data PingApiV1PingGetResponse =                          
   PingApiV1PingGetResponseError GHC.Base.String         -- ^ Means either no matching case available or a parse error
  | PingApiV1PingGetResponse200 Data.Text.Internal.Text  -- ^ Successful Response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
