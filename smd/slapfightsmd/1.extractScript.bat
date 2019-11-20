@echo off
set T_FILENAME="Slap Fight (J) [c][!].bin"
set SCRIPTNAME="slapfightsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
