@echo off
set T_FILENAME="TR_Run Saber (U) [!].smc"
set SCRIPTNAME="runsabersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
