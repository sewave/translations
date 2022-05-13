@echo off
set T_FILENAME="Superkid In Space.tzx"
set SCRIPTNAME="superkidinspacetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
