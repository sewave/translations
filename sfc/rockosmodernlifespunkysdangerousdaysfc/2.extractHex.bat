@echo off
set T_FILENAME="TR_Rocko's Modern Life - Spunky's Dangerous Day (USA).sfc"
set SCRIPTNAME="rockosmodernlifespunkysdangerousdaysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
