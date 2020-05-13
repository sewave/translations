@echo off
set T_FILENAME="Lemmings 2 - The Tribes (Unknown) (Proto).gg"
set SCRIPTNAME="lemmings2thetribesgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
