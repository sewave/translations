@echo off
set T_FILENAME="Captain Commando (E) [!].smc"
set SCRIPTNAME="captaincommandoeursfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
