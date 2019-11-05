@echo off
set T_FILENAME="TR_Adan y Eva (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="adanyevanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8340:100,8FD0:10
pause
