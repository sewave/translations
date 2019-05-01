@echo off
set T_FILENAME="R-Type (U).pce"
set SCRIPTNAME="rtypepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
