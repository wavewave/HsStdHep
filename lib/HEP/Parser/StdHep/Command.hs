module HEP.Parser.StdHep.Command where

import HEP.Parser.StdHep.ProgType
import HEP.Parser.StdHep.Job

commandLineProcess :: HsStdHep -> IO ()
commandLineProcess Test = do 
  putStrLn "test called"
  startJob
