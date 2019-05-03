@echo off
set T_FILENAME="Sinistron (U).pce"
set SCRIPTNAME="sinistronpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
