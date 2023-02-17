@echo off
set T_FILENAME="Blood 'n' Guts.tzx"
set SCRIPTNAME="bloodngutstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
