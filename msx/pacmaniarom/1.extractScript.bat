@echo off
set T_FILENAME="Pac-Mania (1989) (Namcot) (J).rom"
set SCRIPTNAME="pacmaniarom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
