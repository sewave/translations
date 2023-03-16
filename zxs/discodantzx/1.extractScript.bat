@echo off
set T_FILENAME="Disco Dan.tzx"
set SCRIPTNAME="discodantzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
