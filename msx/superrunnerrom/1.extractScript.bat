@echo off
set T_FILENAME="Super Runner (1987) (Pony Cannon) (J).rom"
set SCRIPTNAME="superrunnerrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
