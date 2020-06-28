@echo off
set T_FILENAME="Sensible Soccer (E).gg"
set SCRIPTNAME="sensiblesoccergg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
