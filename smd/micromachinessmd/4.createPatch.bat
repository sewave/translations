@echo off
set T_FILENAME="TR_Micro Machines (UE) [c][!].gen"
set S_FILENAME="Micro Machines (UE) [c][!].gen"
set SCRIPTNAME="micromachinessmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
