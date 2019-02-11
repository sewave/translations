@echo off
set T_FILENAME="TR_Micro Machines (U) [!].smc"
set S_FILENAME="Micro Machines (U) [!].smc"
set SCRIPTNAME="micromachinessfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
