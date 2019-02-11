@echo off
set T_FILENAME="TR_Micro Machines (U) [!].smc"
set SCRIPTNAME="micromachinessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
