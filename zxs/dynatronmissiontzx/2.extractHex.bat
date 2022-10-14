@echo off
set T_FILENAME="TR_Dynatron Mission.tzx"
set SCRIPTNAME="dynatronmissiontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
