module HEP.Parser.StdHep.StdHep where

import Control.Applicative
import Control.Monad.State
import Foreign.C
import Foreign.Storable 
import HEP.Parser.StdHep.StdHep.Internal

-- , <hepevt>

-- #include "hs_stdhep.h"

data HEPEVT = 
         HEPEVT { nevhep :: Int
                , nhep :: Int
                , particles :: [(Int,HEPEVT_Particle)]
                } deriving (Show)

data HEPEVT_Particle = 
         HEPEVT_Particle { isthep :: Int
                         , idhep  :: Int
                         , jmohep :: (Int,Int)
                         , jdahep :: (Int,Int)
                         , phep :: (Double,Double,Double,Double,Double)
                         , vhep :: (Double,Double,Double,Double)
                         } deriving (Show)
                    


type IState = ([CInt],[CInt],[CInt],[CInt],[CDouble],[CDouble])

type HEPEVTPtlMonad = State IState

cnstrctHEPEVTptl :: HEPEVTPtlMonad [HEPEVT_Particle] 
cnstrctHEPEVTptl = do 
  st <- get
  case st of 
    ([],[],[],[],[],[]) -> return []
    (a1:isthep_t,b1:idhep_t,c1:c2:jmohep_t,d1:d2:jdahep_t,e1:e2:e3:e4:e5:phep_t,f1:f2:f3:f4:vhep_t) -> do 
      put (isthep_t,idhep_t,jmohep_t,jdahep_t,phep_t,vhep_t)
      let r1 = HEPEVT_Particle (fromIntegral a1)
                               (fromIntegral b1)
                               (fromIntegral c1, fromIntegral c2) 
                               (fromIntegral d1, fromIntegral d2) 
                               (realToFrac e1, realToFrac e2, realToFrac e3, realToFrac e4, realToFrac e5) 
                               (realToFrac f1, realToFrac f2, realToFrac f3, realToFrac f4) 
      r2 <- cnstrctHEPEVTptl 
      return (r1:r2)

getHEPEVT :: IO HEPEVT
getHEPEVT = do
  x <- peek p'hepevt_
  
  let nevhep_t = fromIntegral $ c'hepevt'nevhep x 
      nhep_t = fromIntegral $ c'hepevt'nhep x
     
      st = (,,,,,) <$>  c'hepevt'isthep <*> c'hepevt'idhep <*> c'hepevt'jmohep <*> c'hepevt'jdahep <*> c'hepevt'phep <*> c'hepevt'vhep $ x

      (r,_) = runState cnstrctHEPEVTptl st

  --  print $ fmap fromIntegral (c'hepevt'isthep x)

  return (HEPEVT nevhep_t nhep_t (zip [1..] (take nhep_t r)))
 

