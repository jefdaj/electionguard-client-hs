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

  -- TODO include http error handling in the monad to clean this up
  runWithConfiguration localGuardianConfig $ do
    liftIO $ putStr $ "pinging local guardian... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()

  -- TODO include http error handling in the monad to clean this up
  runWithConfiguration localMediatorConfig $ do
    liftIO $ putStr $ "pinging local mediator... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()
