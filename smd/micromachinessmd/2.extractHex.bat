@echo off
set T_FILENAME="TR_Micro Machines (UE) [c][!].gen"
set SCRIPTNAME="micromachinessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
