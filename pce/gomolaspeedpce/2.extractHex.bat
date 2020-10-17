@echo off
set T_FILENAME="TR_Gomola Speed (Japan).pce"
set SCRIPTNAME="gomolaspeedpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
