@echo off
set T_FILENAME="Zanac (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="zanacrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
