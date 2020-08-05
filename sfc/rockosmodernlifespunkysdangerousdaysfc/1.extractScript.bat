@echo off
set T_FILENAME="Rocko's Modern Life - Spunky's Dangerous Day (USA).sfc"
set SCRIPTNAME="rockosmodernlifespunkysdangerousdaysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
