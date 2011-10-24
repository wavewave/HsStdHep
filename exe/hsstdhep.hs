module Main where

import System.Console.CmdArgs

import HEP.Parser.StdHep.Type
import HEP.Parser.StdHep.Command

main :: IO () 
main = do 
  putStrLn "HsStdHep"
  param <- cmdArgs mode

  commandLineProcess param