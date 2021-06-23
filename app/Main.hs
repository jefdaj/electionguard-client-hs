{-# LANGUAGE OverloadedStrings #-}

module Main where

-- import Lib
import ElectionGuard.API

import Control.Monad.IO.Class (liftIO)

localGuardian :: Configuration AnonymousSecurityScheme
localGuardian = Configuration "http://localhost:8001" AnonymousSecurityScheme

localMediator :: Configuration AnonymousSecurityScheme
localMediator = Configuration "http://localhost:8002" AnonymousSecurityScheme

main :: IO ()
main = do
  -- TODO make sure the docker containers are running in this script?

  -- TODO include http error handling in the monad to clean this up
  runWithConfiguration localGuardian $ do
    liftIO $ putStr $ "pinging local guardian... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()

  -- TODO include http error handling in the monad to clean this up
  runWithConfiguration localMediator $ do
    liftIO $ putStr $ "pinging local mediator... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()
