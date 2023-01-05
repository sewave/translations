@echo off
set T_FILENAME="Storm.tzx"
set SCRIPTNAME="stormtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
