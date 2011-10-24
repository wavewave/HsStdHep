{-# LANGUAGE DeriveDataTypeable #-}

module HEP.Parser.StdHep.ProgType where 

import System.Console.CmdArgs

data HsStdHep = Test 
              deriving (Show,Data,Typeable)

test :: HsStdHep
test = Test 

mode = modes [test]

