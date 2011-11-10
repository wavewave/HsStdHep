module HEP.Parser.StdHep.MCFIO where

import HEP.Parser.StdHep.MCFIO.Internal

mcfioInit :: IO ()
mcfioInit = c'mcfioC_Init

