{-# LANGUAGE ExplicitForAll #-}

module ElectionGuard.API

  -- Generated.Common
  ( Configuration (..)
  , doCallWithConfiguration
  , doCallWithConfigurationM
  , doBodyCallWithConfiguration
  , doBodyCallWithConfigurationM
  , MonadHTTP (..)
  , stringifyModel
  , StringifyModel
  , SecurityScheme (..)
  , AnonymousSecurityScheme (..)
  , textToByte
  , JsonByteString (..)
  , JsonDateTime (..)
  , RequestBodyEncoding (..)

  -- Generated.Configuration
  , defaultURL
  , defaultConfiguration

  -- Generated.Types
  , HTTPValidationError

  -- handwritten wrappers for the rest of the generated code
  , module ElectionGuard.API.Guardian
  , module ElectionGuard.API.Mediator

  -- defined here
  , ElectionT(..)
  , runElectionT
  , ping
  , PingResponse
  )
  where

import ElectionGuard.API.Generated.Common
import ElectionGuard.API.Generated.Configuration
import ElectionGuard.API.Generated.Types

import ElectionGuard.API.Guardian
import ElectionGuard.API.Mediator

import Network.HTTP.Client (HttpException, Response)
import ElectionGuard.API.Generated.Common (Configuration, SecurityScheme, MonadHTTP)
import ElectionGuard.API.Generated.Types.HTTPValidationError
import ElectionGuard.API.Generated.Guardian.Operations.PingApiV1PingGet
import Control.Monad.Trans.Reader (ReaderT)

-- TODO does this make sense? maybe go with ByteString first
-- TODO does HttpException really need to be separate from PingApiV1PingGetResponseError?
--      i guess they do convey different information
type PingResponse = Response PingApiV1PingGetResponse

-- TODO monad stack based on the ReaderT Configuration thing
type ElectionT s = ReaderT (Configuration s)

runElectionT :: SecurityScheme s => Configuration s -> ElectionT s m a -> m a
runElectionT = runWithConfiguration

ping :: forall m s . (MonadHTTP m, SecurityScheme s) => ReaderT (Configuration s) m (Either HttpException PingResponse)
ping = pingApiV1PingGetM
