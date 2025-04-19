@echo off
set T_FILENAME="Knuckle Busters.tzx"
set SCRIPTNAME="knucklebusterstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
