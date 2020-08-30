@echo off
set T_FILENAME="Demolition Man (USA).sfc"
set SCRIPTNAME="demolitionmansfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
