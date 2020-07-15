@echo off
set T_FILENAME="TR_Devil's Crush (USA).pce"
set SCRIPTNAME="devilscrushpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
