{-# LANGUAGE ForeignFunctionInterface #-}

module HEP.Parser.StdHep.IO where

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

stdHepXdrReadInit :: String -> Int -> Int -> IO Int 
stdHepXdrReadInit = xform3 c_StdHepXdrReadInit


-- | StdHepXdrReadOpen 
--
-- > int StdHepXdrReadOpen(char *filename, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrReadOpen" c_StdHepXdrReadOpen 
  :: CString -> CInt -> CInt -> IO CInt 

stdHepXdrReadOpen :: String -> Int -> Int -> IO Int 
stdHepXdrReadOpen = xform3 c_StdHepXdrReadOpen

-- | StdHepXdrRead
--
-- > int StdHepXdrRead(int *ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrRead" c_StdHepXdrRead 
  :: (Ptr CInt) -> CInt -> IO CInt 

stdHepXdrRead :: (IORef Int) -> Int -> IO Int
stdHepXdrRead = xform2WithWrap c_StdHepXdrRead

-- | StdHepXdrReadMulti
-- 
-- > int StdHepXdrReadMulti(int *ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrReadMulti" c_StdHepXdrReadMulti
  :: (Ptr CInt) -> CInt -> IO CInt 

stdHepXdrReadMulti :: (IORef Int) -> Int -> IO Int
stdHepXdrReadMulti = xform2WithWrap c_StdHepXdrReadMulti


-- | StdHepXdrWriteInit
--
-- > int StdHepXdrWriteInit(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteInit" c_StdHepXdrWriteInit
  :: CString -> CString -> CInt -> CInt -> IO CInt 

stdHepXdrWriteInit :: String -> String -> Int -> Int -> IO Int
stdHepXdrWriteInit = xform4 c_StdHepXdrWriteInit


-- | StdHepXdrWriteOpen
--
-- > int StdHepXdrWriteOpen(char *filename, char *title, int ntries, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteOpen" c_StdHepXdrWriteOpen
  :: CString -> CString -> CInt -> CInt -> IO CInt 

stdHepXdrWriteOpen :: String -> String -> Int -> Int -> IO Int 
stdHepXdrWriteOpen = xform4 c_StdHepXdrWriteOpen

-- | StdHepXdrWrite
--
-- > int StdHepXdrWrite(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWrite" c_StdHepXdrWrite
  :: CInt -> CInt -> IO CInt 

stdHepXdrWrite :: Int -> Int -> IO Int 
stdHepXdrWrite = xform2 c_StdHepXdrWrite


-- > StdHepXdrWriteCM
--
-- | int StdHepXdrWriteCM(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteCM" c_StdHepXdrWriteCM
  :: CInt -> CInt -> IO CInt 

stdHepXdrWriteCM :: Int -> Int -> IO Int 
stdHepXdrWriteCM = xform2 c_StdHepXdrWriteCM


-- | StdHepXdrWriteEvent
--
-- > int StdHepXdrWriteEvent(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEvent" c_StdHepXdrWriteEvent
  :: CInt -> CInt -> IO CInt 

stdHepXdrWriteEvent :: Int -> Int -> IO Int 
stdHepXdrWriteEvent = xform2 c_StdHepXdrWriteEvent


-- | StdHepXdrWriteEventLH
--
-- > int StdHepXdrWriteEventLH(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventLH" c_StdHepXdrWriteEventLH
  :: CInt -> CInt -> IO CInt 


stdHepXdrWriteEventLH :: Int -> Int -> IO Int
stdHepXdrWriteEventLH = xform2 c_StdHepXdrWriteEventLH

-- | StdHepXdrWriteEventEUP
--
-- > int StdHepXdrWriteEventEUP(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventEUP" c_StdHepXdrWriteEventEUP
  :: CInt -> CInt -> IO CInt 

stdHepXdrWriteEventEUP :: Int -> Int -> IO Int
stdHepXdrWriteEventEUP = xform2 c_StdHepXdrWriteEventEUP

-- | StdHepXdrWriteEventRUP
--
-- > int StdHepXdrWriteEventRUP(int ilbl, int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrWriteEventRUP" c_StdHepXdrWriteEventRUP
  :: CInt -> CInt -> IO CInt 

stdHepXdrWriteEventRUP :: Int -> Int -> IO Int
stdHepXdrWriteEventRUP = xform2 c_StdHepXdrWriteEventRUP

-- | StdHepXdrEnd
--
-- > void StdHepXdrEnd(int ist)
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepXdrEnd" c_StdHepXdrEnd 
  :: CInt -> IO () 

stdHepXdrEnd :: Int -> IO ()
stdHepXdrEnd = xform1 c_StdHepXdrEnd 

-- | StdHepPrintHeader
--
-- > void StdHepPrintHeader( )
--
foreign import ccall "hs_stdhep_mcfio.h hsStdHepPrintHeader" c_StdHepPrintHeader
  :: IO () 

stdHepPrintHeader :: IO ()
stdHepPrintHeader = xform0 c_StdHepPrintHeader 




