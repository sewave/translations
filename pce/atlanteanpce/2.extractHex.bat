@echo off
set T_FILENAME="TR_Atlantean.pce"
set SCRIPTNAME="atlanteanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
