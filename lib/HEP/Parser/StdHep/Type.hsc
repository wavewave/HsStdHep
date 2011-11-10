{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include "stdhep.h"


module HEP.Parser.StdHep.Type where
#strict_import 

-- #num NMXHEP
-- #num NMXMLT

#starttype struct hepevt
#field nevhep, CInt
#field nhep, CInt 
#array_field isthep, CInt
#array_field idhep, CInt
#array_field jmohep, CInt
#array_field jdahep, CInt
#array_field phep, CDouble
#array_field vhep, CDouble
#stoptype 

#globalvar hepevt_ , <hepevt>

-- , <hepevt>

-- #include "hs_stdhep.h"

{-
data HEPEVT = 
         HEPEVT { nevhep :: Int
                , nhep :: Int
                , particles :: [(Int,HEPEVT_Particle)]
                }

data HEPEVT_Particle = 
         HEPEVT_Particle { isthep :: Int
                         , idhep  :: Int
                         , jmohep :: (Int,Int)
                         , jdahep :: (Int,Int)
                         , phep :: (Double,Double,Double,Double,Double)
                         , vhep :: (Double,Double,Double,Double)
                         }
                    

-}