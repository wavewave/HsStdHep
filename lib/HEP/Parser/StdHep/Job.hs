module HEP.Parser.StdHep.Job where

-- import HEP.Parser.StdHep.StdHep.Internal
import HEP.Parser.StdHep.StdHep

import HEP.Parser.StdHep.IO
import HEP.Parser.StdHep.MCFIO.Internal

import Control.Applicative
import Data.IORef
import Foreign.Storable

startJob :: IO () 
startJob = do 
  putStrLn "job started"
  
  c'mcfioC_Init

  -- filein <- newCString "testevents.hep"
  
  r <- stdHepXdrReadOpen "testevents.hep" 500 0 

  lbl <- newIORef (0 :: Int)
  r <- stdHepXdrRead lbl 0

  stdHepXdrRead lbl 0 
  -- x <- peek p'hepevt_
  
  h <- getHEPEVT
  print (nevhep h, nhep h, map ((,) <$> fst <*> idhep.snd) (particles h))
  -- print x 
  
  print r
  {-

  

  let x = p'hepevt_

  print x 
  -}


  
