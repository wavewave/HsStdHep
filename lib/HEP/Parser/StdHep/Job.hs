module HEP.Parser.StdHep.Job where

import HEP.Parser.StdHep.Type 
import HEP.Parser.StdHep.IO
import HEP.Parser.StdHep.MCFIO.Internal

startJob :: IO () 
startJob = do 
  putStrLn "job started"
  
  c'mcfioC_Init

  -- filein <- newCString "testevents.hep"
  
  r <- stdHepXdrReadOpen "testevents.hep" 500 0 

  print r
  {-

  

  let x = p'hepevt_

  print x 
  -}


  
