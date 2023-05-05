@echo off
set T_FILENAME="Obitus (USA).sfc"
set SCRIPTNAME="obitussfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
