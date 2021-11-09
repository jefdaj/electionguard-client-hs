{-# LANGUAGE OverloadedStrings #-}

module Main where

import ElectionGuard.API

import qualified Data.ByteString.Lazy as B
import qualified Data.Text as T

import Control.Monad (forM_)
import Control.Monad.IO.Class (liftIO)
import System.Exit (ExitCode(..), exitWith)

-- TODO be more specific
import Data.Aeson

-----------------------------
--- parse test-config.json --
-----------------------------

-- test-config.json should match this as well as the Nix code in arion-compose.nix
data TestConfig = TestConfig
  { nGuardians :: Int
  , nMediators :: Int
  , guardianStartPort :: Int
  , mediatorStartPort :: Int
  } deriving (Show, Generic)

-- TODO do these still have to be standalone?
instance FromJSON TestConfig
instance ToJSON   TestConfig

loadTestConfig :: FilePath -> IO (Either String TestConfig)
loadTestConfig path = B.readFile path >>= eitherDecode

type Port = Int
type ApiConfig = Configuration AnonymousSecurityScheme

localHostApiConfig :: Port -> ApiConfig
localHostApiConfig port = Configuration addr AnonymousSecurityScheme
  where
    addr = T.pack $ "http://localhost:" ++ show port

-- TODO name to indicate that it exits on failure?
-- TODO include http error handling in the monad to clean this up
pingLocalApiContainer :: String -> Port -> IO ()
pingLocalApiContainer mode port = runElectionT (localHostApiConfig port) $ do
  liftIO $ putStr $ "pinging local " ++ mode ++ " API container on port " ++ show port ++ "... "
  res <- ping
  liftIO $ case res of
    Left  e -> putStrLn ("FAIL: " ++ show e) >> exitWith (ExitFailure 1)
    Right _ -> putStrLn "ok"

pingLocalContainers :: ([Port], [Port]) -> IO ()
pingLocalContainers (guardianPorts, mediatorPorts) = do
  forM_ guardianPorts $ pingLocalApiContainer "guardian"
  forM_ mediatorPorts $ pingLocalApiContainer "mediator"

main :: IO ()
main = do
  eCfg <- loadTestConfig "test-config.json"
  case eCfg of
    Left errMsg -> putStrLn errMsg >> exitWith (ExitFailure 1)
    Right cfg -> do
      let guardianPorts = map (guardianStartPort cfg +) [1 .. nGuardians cfg]
          mediatorPorts = map (mediatorStartPort cfg +) [1 .. nMediators cfg]
      pingLocalContainers (guardianPorts, mediatorPorts)
      exitWith ExitSuccess
