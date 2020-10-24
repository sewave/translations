@echo off
set T_FILENAME="TR_Daffy Duck - The Marvin Missions (USA).sfc"
set SCRIPTNAME="daffyduckthemarvinmissionssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
