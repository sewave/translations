@echo off
set T_FILENAME="Micro Machines (U) [!].smc"
set SCRIPTNAME="micromachinessfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
