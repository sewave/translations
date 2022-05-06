@echo off
set T_FILENAME="Cybernoid.tzx"
set SCRIPTNAME="cybernoidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
