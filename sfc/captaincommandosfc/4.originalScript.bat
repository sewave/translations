@echo off
set T_FILENAME="Captain Commando (U).smc"
set SCRIPTNAME="captaincommandosfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
