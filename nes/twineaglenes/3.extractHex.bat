@echo off
set T_FILENAME="TR_Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set SCRIPTNAME="twineaglenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AA10-1AA3F,1ABB0-1AC0F