@echo off
set T_FILENAME="TR_Tick, The (U) [!].smc"
set SCRIPTNAME="tickthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
