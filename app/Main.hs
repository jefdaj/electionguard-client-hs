{-# LANGUAGE OverloadedStrings #-}

module Main where

import ElectionGuard.API
import Control.Monad.IO.Class (liftIO)
import qualified Data.Text as T

type Port   = Int
type Config = Configuration AnonymousSecurityScheme

localConfig :: Port -> Config
localConfig port = Configuration addr AnonymousSecurityScheme
  where
    addr = T.pack $ "http://localhost:" ++ show port

-- use whatever port you set in docker.sh here
localGuardian :: Config
localGuardian = localConfig 8001

-- use whatever port you set in docker.sh here
localMediator :: Config
localMediator = localConfig 8002

main :: IO ()
main = do
  -- TODO make sure the docker containers are running in this script?

  -- TODO include http error handling in the monad to clean this up
  runElectionT localGuardian $ do
    liftIO $ putStr $ "pinging local guardian... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()

  -- TODO include http error handling in the monad to clean this up
  runElectionT localMediator $ do
    liftIO $ putStr $ "pinging local mediator... "
    res <- ping
    liftIO $ putStrLn $ case res of
      Left  e -> "FAIL: " ++ show e
      Right _ -> "ok"
    return ()
