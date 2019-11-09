@echo off
set T_FILENAME="TR_Ghost Manor (USA).pce"
set SCRIPTNAME="ghostmanorpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
