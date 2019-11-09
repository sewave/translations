@echo off
set T_FILENAME="Drop Off (U).pce"
set SCRIPTNAME="dropoffpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
