@echo off
set T_FILENAME="Atlantean.pce"
set SCRIPTNAME="atlanteanpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
