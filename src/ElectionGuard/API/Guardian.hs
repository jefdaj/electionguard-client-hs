{-# LANGUAGE ExplicitForAll #-}

module ElectionGuard.API.Guardian
  ( ping, PingResponse
  )
  where

import Network.HTTP.Client (HttpException, Response)
import ElectionGuard.API.Generated.Common (Configuration, SecurityScheme, MonadHTTP)
import ElectionGuard.API.Generated.Guardian.Types.HTTPValidationError
import ElectionGuard.API.Generated.Guardian.Operations.PingApiV1PingGet
import Control.Monad.Trans.Reader (ReaderT)

-- TODO does this make sense? maybe go with ByteString first
-- TODO does HttpException really need to be separate from PingApiV1PingGetResponseError?
--      i guess they do convey different information
type PingResponse = Response PingApiV1PingGetResponse

-- TODO monad stack based on the ReaderT Configuration thing
-- type ElectionT s = ReaderT (Configuration s)

ping :: forall m s . (MonadHTTP m, SecurityScheme s) => ReaderT (Configuration s) m (Either HttpException PingResponse)
ping = pingApiV1PingGetM
