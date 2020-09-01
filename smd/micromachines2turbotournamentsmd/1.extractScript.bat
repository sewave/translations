@echo off
set T_FILENAME="Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set SCRIPTNAME="micromachines2turbotournamentsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
