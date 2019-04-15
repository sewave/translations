@echo off
set T_FILENAME="Aero the Acro-Bat (U) [!].smc"
set SCRIPTNAME="aerotheacrobatsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
