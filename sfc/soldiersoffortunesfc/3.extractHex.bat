@echo off
set T_FILENAME="TR_Soldiers of Fortune (U) [!].smc"
set SCRIPTNAME="soldiersoffortunesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
