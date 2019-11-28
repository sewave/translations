@echo off
set T_FILENAME="Megalopolis SOS (1983)(General).rom"
set SCRIPTNAME="megalopolissosrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
