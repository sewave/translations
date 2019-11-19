@echo off
set T_FILENAME="Galaxian (1984) (Namcot) (J) [a1].rom"
set SCRIPTNAME="galaxianrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
