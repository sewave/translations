@echo off
set T_FILENAME="Feud.tzx"
set SCRIPTNAME="feudtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
