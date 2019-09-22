@echo off
set T_FILENAME="Pac-Land (U).pce"
set SCRIPTNAME="paclandpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
