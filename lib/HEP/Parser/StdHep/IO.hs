module HEP.Parser.StdHep.IO where

import Data.IORef
import HEP.Parser.StdHep.TypeCast
import HEP.Parser.StdHep.IO.Internal

stdHepXdrReadInit :: String -> Int -> Int -> IO Int 
stdHepXdrReadInit = xform3 c_StdHepXdrReadInit

stdHepXdrReadOpen :: String -> Int -> Int -> IO Int 
stdHepXdrReadOpen = xform3 c_StdHepXdrReadOpen

stdHepXdrRead :: (IORef Int) -> Int -> IO Int
stdHepXdrRead = xform2WithWrap c_StdHepXdrRead

stdHepXdrReadMulti :: (IORef Int) -> Int -> IO Int
stdHepXdrReadMulti = xform2WithWrap c_StdHepXdrReadMulti

stdHepXdrWriteInit :: String -> String -> Int -> Int -> IO Int
stdHepXdrWriteInit = xform4 c_StdHepXdrWriteInit

stdHepXdrWriteOpen :: String -> String -> Int -> Int -> IO Int 
stdHepXdrWriteOpen = xform4 c_StdHepXdrWriteOpen

stdHepXdrWrite :: Int -> Int -> IO Int 
stdHepXdrWrite = xform2 c_StdHepXdrWrite

stdHepXdrWriteCM :: Int -> Int -> IO Int 
stdHepXdrWriteCM = xform2 c_StdHepXdrWriteCM

stdHepXdrWriteEvent :: Int -> Int -> IO Int 
stdHepXdrWriteEvent = xform2 c_StdHepXdrWriteEvent

stdHepXdrWriteEventLH :: Int -> Int -> IO Int
stdHepXdrWriteEventLH = xform2 c_StdHepXdrWriteEventLH

stdHepXdrWriteEventEUP :: Int -> Int -> IO Int
stdHepXdrWriteEventEUP = xform2 c_StdHepXdrWriteEventEUP

stdHepXdrWriteEventRUP :: Int -> Int -> IO Int
stdHepXdrWriteEventRUP = xform2 c_StdHepXdrWriteEventRUP

stdHepXdrEnd :: Int -> IO ()
stdHepXdrEnd = xform1 c_StdHepXdrEnd 

stdHepPrintHeader :: IO ()
stdHepPrintHeader = xform0 c_StdHepPrintHeader 
