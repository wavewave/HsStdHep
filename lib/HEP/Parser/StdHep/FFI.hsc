{-# LANGUAGE ForeignFunctionInterface #-}

module HEP.Parser.StdHep.FFI where

import Foreign.C
import Foreign.Ptr

#include "stdhep.h"
#include "stdhep_mcfio.h"

-- | StdHepXdrReadInit 
--  
--   > int StdHepXdrReadInit(char *filename, int ntries, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrReadInit" c_StdHepXdrReadInit 
  :: CString -> CInt -> CInt -> IO CInt

-- | StdHepXdrReadOpen 
--
-- > int StdHepXdrReadOpen(char *filename, int ntries, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrReadOpen" c_StdHepXdrReadOpen 
  :: CString -> CInt -> CInt -> IO CInt 

-- | StdHepXdrRead
--
-- > int StdHepXdrRead(int *ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrRead" c_StdHepXdrRead 
  :: (Ptr CInt) -> CInt -> IO CInt 

-- | StdHepXdrReadMulti
-- 
-- > int StdHepXdrReadMulti(int *ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrReadMulti" c_StdHepXdrReadMulti
  :: (Ptr CInt) -> CInt -> IO CInt 

-- | StdHepXdrWriteInit
--
-- > int StdHepXdrWriteInit(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteInit" c_StdHepXdrWriteInit
  :: CString -> CString -> CInt -> CInt -> IO CInt 

-- | StdHepXdrWriteOpen
--
-- > int StdHepXdrWriteOpen(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteOpen" c_StdHepXdrWriteOpen
  :: CString -> CString -> CInt -> CInt -> IO CInt 

-- | StdHepXdrWrite
--
-- > int StdHepXdrWrite(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWrite" c_StdHepXdrWrite
  :: CInt -> CInt -> IO CInt 

-- > StdHepXdrWriteCM
--
-- | int StdHepXdrWriteCM(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteCM" c_StdHepXdrWriteCM
  :: CInt -> CInt -> IO CInt 

-- | StdHepXdrWriteEvent
--
-- > int StdHepXdrWriteEvent(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteEvent" c_StdHepXdrWriteEvent
  :: CInt -> CInt -> IO CInt 

-- | StdHepXdrWriteEventLH
--
-- > int StdHepXdrWriteEventLH(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteEventLH" c_StdHepXdrWriteEventLH
  :: CInt -> CInt -> IO CInt 

-- | StdHepXdrWriteEventEUP
--
-- > int StdHepXdrWriteEventEUP(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteEventEUP" c_StdHepXdrWriteEventEUP
  :: CInt -> CInt -> IO CInt 

-- | StdHepXdrWriteEventRUP
--
-- > int StdHepXdrWriteEventRUP(int ilbl, int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrWriteEventRUP" c_StdHepXdrWriteEventRUP
  :: CInt -> CInt -> IO CInt 

-- | StdHepXdrEnd
--
-- > void StdHepXdrEnd(int ist)
--
foreign import ccall "stdhep_mcfio.h StdHepXdrEnd" c_StdHepXdrEnd 
  :: CInt -> IO () 

-- | StdHepPrintHeader
--
-- > void StdHepPrintHeader( )
--
foreign import ccall "stdhep_mcfio.h StdHepPrintHeader" c_StdHepPrintHeader
  :: IO () 




