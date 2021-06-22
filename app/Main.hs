{-# LANGUAGE OverloadedStrings #-}

module Main where

-- import Lib
import ElectionGuard.API

localGuardianConfig :: Configuration AnonymousSecurityScheme
localGuardianConfig = Configuration "http://localhost:8001" AnonymousSecurityScheme

localMediatorConfig :: Configuration AnonymousSecurityScheme
localMediatorConfig = Configuration "http://localhost:8002" AnonymousSecurityScheme

main :: IO ()
main = do
  -- TODO make sure the docker containers are running in this script?
  putStrLn "hello world"
