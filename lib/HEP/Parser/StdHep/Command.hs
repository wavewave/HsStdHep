module HEP.Parser.StdHep.Command where

import HEP.Parser.StdHep.Type
import HEP.Parser.StdHep.Job

commandLineProcess :: HsStdHep -> IO ()
commandLineProcess Test = do 
  putStrLn "test called"
  startJob
