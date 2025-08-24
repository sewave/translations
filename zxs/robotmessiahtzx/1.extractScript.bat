@echo off
set T_FILENAME="Robot Messiah.tzx"
set SCRIPTNAME="robotmessiahtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
