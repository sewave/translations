@echo off
set T_FILENAME="Micro Machines (E).gg"
set SCRIPTNAME="micromachinesgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
