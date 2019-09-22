@echo off
set T_FILENAME="Ballistix (U).pce"
set SCRIPTNAME="ballistixpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
