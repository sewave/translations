@echo off
set T_FILENAME="TR_Gremlins 2 - The New Batch (U) [!].nes"
set SCRIPTNAME="gremlins2thenewbatchnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41610:A0,40CA0:40,40E00:70
pause
