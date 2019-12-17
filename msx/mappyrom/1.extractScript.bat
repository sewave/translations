@echo off
set T_FILENAME="Mappy (1984) (Namcot) (J).rom"
set SCRIPTNAME="mappyrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
