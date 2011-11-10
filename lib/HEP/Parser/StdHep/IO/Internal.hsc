{-# LANGUAGE ForeignFunctionInterface #-}

module HEP.Parser.StdHep.IO.Internal where

import Foreign.C
import Foreign.Ptr

import Data.IORef

import HEP.Parser.StdHep.TypeCast

-- #include "stdhep.h"
#include "hs_stdhep_mcfio.h"




-- | StdHepXdrReadInit 
--  
--   > int StdHepXdrReadInit(char *filename, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrReadInit" c_StdHepXdrReadInit 
  :: CString -> CInt -> CInt -> IO CInt



-- | StdHepXdrReadOpen 
--
-- > int StdHepXdrReadOpen(char *filename, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrReadOpen" c_StdHepXdrReadOpen 
  :: CString -> CInt -> CInt -> IO CInt 


-- | StdHepXdrRead
--
-- > int StdHepXdrRead(int *ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrRead" c_StdHepXdrRead 
  :: (Ptr CInt) -> CInt -> IO CInt 


-- | StdHepXdrReadMulti
-- 
-- > int StdHepXdrReadMulti(int *ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrReadMulti" c_StdHepXdrReadMulti
  :: (Ptr CInt) -> CInt -> IO CInt 



-- | StdHepXdrWriteInit
--
-- > int StdHepXdrWriteInit(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteInit" c_StdHepXdrWriteInit
  :: CString -> CString -> CInt -> CInt -> IO CInt 



-- | StdHepXdrWriteOpen
--
-- > int StdHepXdrWriteOpen(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteOpen" c_StdHepXdrWriteOpen
  :: CString -> CString -> CInt -> CInt -> IO CInt 


-- | StdHepXdrWrite
--
-- > int StdHepXdrWrite(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWrite" c_StdHepXdrWrite
  :: CInt -> CInt -> IO CInt 



-- > StdHepXdrWriteCM
--
-- | int StdHepXdrWriteCM(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteCM" c_StdHepXdrWriteCM
  :: CInt -> CInt -> IO CInt 



-- | StdHepXdrWriteEvent
--
-- > int StdHepXdrWriteEvent(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEvent" c_StdHepXdrWriteEvent
  :: CInt -> CInt -> IO CInt 



-- | StdHepXdrWriteEventLH
--
-- > int StdHepXdrWriteEventLH(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventLH" c_StdHepXdrWriteEventLH
  :: CInt -> CInt -> IO CInt 



-- | StdHepXdrWriteEventEUP
--
-- > int StdHepXdrWriteEventEUP(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventEUP" c_StdHepXdrWriteEventEUP
  :: CInt -> CInt -> IO CInt 


-- | StdHepXdrWriteEventRUP
--
-- > int StdHepXdrWriteEventRUP(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventRUP" c_StdHepXdrWriteEventRUP
  :: CInt -> CInt -> IO CInt 


-- | StdHepXdrEnd
--
-- > void StdHepXdrEnd(int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrEnd" c_StdHepXdrEnd 
  :: CInt -> IO () 


-- | StdHepPrintHeader
--
-- > void StdHepPrintHeader( )
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepPrintHeader" c_StdHepPrintHeader
  :: IO () 





