@echo off
set T_FILENAME="TR_Gremlins 2 - The New Batch (W) [!].gb"
set SCRIPTNAME="gremlins2thenewbatchgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
