@echo off
set T_FILENAME="TR_Oil's Well (Japan).rom"
set SCRIPTNAME="oilswellrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F47:8,41B7:18,42B7:60,4337:40,43B7:50
pause
