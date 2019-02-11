@echo off
set T_FILENAME="Micro Machines (Camerica) [!].nes"
set SCRIPTNAME="micromachinesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
