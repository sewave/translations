@echo off
set T_FILENAME="Micro Machines (UE) [c][!].gen"
set SCRIPTNAME="micromachinessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
