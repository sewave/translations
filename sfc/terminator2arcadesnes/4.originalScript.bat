@echo off
set T_FILENAME="T2 - The Arcade Game (U).smc"
set SCRIPTNAME="terminator2arcadesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
