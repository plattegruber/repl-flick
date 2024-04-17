module Main where

import System.Environment (getArgs)
import System.Process (callCommand)

launchRepl :: String -> IO ()
launchRepl "haskell" = callCommand "ghci"
launchRepl repl = error (repl ++ " not supported")

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  args <- getArgs
  case args of
    [repl] -> launchRepl repl
    _ -> putStrLn "Usage: replflick <language>"
