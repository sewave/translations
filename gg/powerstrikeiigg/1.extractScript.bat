@echo off
set T_FILENAME="Power Strike II (U).gg"
set SCRIPTNAME="powerstrikeiigg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
