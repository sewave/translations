@echo off
set T_FILENAME="Victory Run (U).pce"
set SCRIPTNAME="victoryrunpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
