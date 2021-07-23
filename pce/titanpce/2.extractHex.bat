@echo off
set T_FILENAME="TR_Titan (Japan).pce"
set SCRIPTNAME="titanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CC80:100
pause
