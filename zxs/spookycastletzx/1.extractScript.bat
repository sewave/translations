@echo off
set T_FILENAME="Spooky Castle.tzx"
set SCRIPTNAME="spookycastletzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
