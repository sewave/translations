@echo off
set T_FILENAME="Captain Kelly.tzx"
set SCRIPTNAME="captainkellytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
