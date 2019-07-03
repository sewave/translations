@echo off
set T_FILENAME="TR_Cool Spot (U) [!].smc"
set SCRIPTNAME="coolspotsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
