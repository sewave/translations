@echo off
set T_FILENAME="Zaxxon (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="zaxxonrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
