@echo off
set T_FILENAME="TR_Zipang (Japan).pce"
set SCRIPTNAME="zipangpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
