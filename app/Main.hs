{-# LANGUAGE OverloadedStrings #-}

module Main where

-- import Lib
import ElectionGuard.API

import Control.Monad.IO.Class (liftIO)

localGuardianConfig :: Configuration AnonymousSecurityScheme
localGuardianConfig = Configuration "http://localhost:8001" AnonymousSecurityScheme

localMediatorConfig :: Configuration AnonymousSecurityScheme
localMediatorConfig = Configuration "http://localhost:8002" AnonymousSecurityScheme

main :: IO ()
main = do
  -- TODO make sure the docker containers are running in this script?
  putStrLn "hello world"
  runWithConfiguration localGuardianConfig $ do
    res <- ping
    liftIO $ putStrLn $ show res
    return ()
