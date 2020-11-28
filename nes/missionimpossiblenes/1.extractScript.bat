@echo off
set T_FILENAME="Mission - Impossible (USA).nes"
set SCRIPTNAME="missionimpossiblenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
