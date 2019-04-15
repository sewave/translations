@echo off
set T_FILENAME="Aero the Acro-Bat (U) [c][!].bin"
set SCRIPTNAME="aerotheacrobatsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
