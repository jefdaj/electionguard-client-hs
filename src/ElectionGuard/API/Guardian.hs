{-# LANGUAGE ExplicitForAll #-}

module ElectionGuard.API.Guardian
  ( ping, PingResponse
  )
  where

import Network.HTTP.Client (HttpException, Response)
import ElectionGuard.API.Guardian.Generated.Common (Configuration, SecurityScheme, MonadHTTP)
import ElectionGuard.API.Guardian.Generated.Types.HTTPValidationError
import ElectionGuard.API.Guardian.Generated.Operations.PingApiV1PingGet

-- TODO does this make sense? maybe go with ByteString first
type PingResponse = Response PingApiV1PingGetResponse

ping :: forall m s . (MonadHTTP m, SecurityScheme s) => Configuration s -> m (Either HttpException PingResponse)
ping = pingApiV1PingGet
