module Main where

-- import HEP.Parser.StdHep.StdHep.Internal
import HEP.Parser.StdHep

import Control.Applicative
import Data.IORef
import Foreign.Storable

import HEP.Util.Functions
import Data.Maybe

import HROOT

main :: IO () 
main = do 
  tcanvas <- newTCanvas "Test" "Test" 640 480
  h2 <- newTH2F "test" "test" 100 (-2.0) 2.0 100 (-pi) pi

  mcfioInit
  r <- stdHepXdrReadOpen "testevents.hep" 500 0 
  lbl <- newIORef (0 :: Int)
  r <- stdHepXdrRead lbl 0
  stdHepXdrRead lbl 0 
  stdHepXdrRead lbl 0 
  h <- getHEPEVT
  -- print (nevhep h, nhep h, map ((,) <$> fst <*> idhep.snd) (particles h))
  
  histfill h2 

  draw h2 "lego"
  
  saveAs tcanvas "testtest.pdf" "" 

  print r


getFinalStatePtEtaPhi ::  (Int,HEPEVT_Particle) -> Maybe (Double,Double,Double) 
getFinalStatePtEtaPhi (_,p) = 
  if isthep p == 1
    then let (p1,p2,p3,p0,_)  = phep p 
             (pt,eta,phi) = mom_2_pt_eta_phi (p0,p1,p2,p3)  
         in  Just (pt,eta,phi)
    else Nothing
  
 
histfill :: TH2F -> IO () 
histfill hist = do 
  ev <- getHEPEVT 
  --   mapM_ (fill1 hist . abs . fromIntegral . idhep . snd) (particles ev)
  let ptetaphilst = mapMaybe getFinalStatePtEtaPhi (particles ev)
  mapM_ (\x->fill2w hist (snd3 x) (trd3 x) (fst3 x)) ptetaphilst 


  
