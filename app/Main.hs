{-# LANGUAGE OverloadedStrings #-}

module Main where

-- import Lib
import ElectionGuard.API

import Control.Monad.IO.Class (liftIO)
import qualified Data.Text as T

type Port = Int

localHostConfig :: Port -> Configuration AnonymousSecurityScheme
localHostConfig port = Configuration addr AnonymousSecurityScheme
  where
    addr = T.pack $ "http://localHost:" ++ show port

localGuardian :: Configuration AnonymousSecurityScheme
localGuardian = localHostConfig 8001

localMediator :: Configuration AnonymousSecurityScheme
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
