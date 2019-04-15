@echo off
set T_FILENAME="TR_Aero the Acro-Bat (U) [!].smc"
set SCRIPTNAME="aerotheacrobatsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
