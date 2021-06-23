{-# LANGUAGE OverloadedStrings #-}

module Main where

import ElectionGuard.API
import Control.Monad.IO.Class (liftIO)
import qualified Data.Text as T

type Port   = Int
type Config = Configuration AnonymousSecurityScheme

localHostConfig :: Port -> Config
localHostConfig port = Configuration addr AnonymousSecurityScheme
  where
    addr = T.pack $ "http://localHost:" ++ show port

localGuardian :: Config
localGuardian = localHostConfig 8001

localMediator :: Config
localMediator = localHostConfig 8002

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
