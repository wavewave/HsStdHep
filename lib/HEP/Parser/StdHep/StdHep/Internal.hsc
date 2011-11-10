{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include "stdhep.h"


module HEP.Parser.StdHep.StdHep.Internal where
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
