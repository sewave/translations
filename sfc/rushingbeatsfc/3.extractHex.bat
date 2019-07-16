@echo off
set T_FILENAME="TR_Rushing Beat (J) [T+ENG].smc"
set SCRIPTNAME="rushingbeatsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
