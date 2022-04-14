@echo off
set T_FILENAME="Down Town.tzx"
set SCRIPTNAME="downtowntzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
