@echo off
set T_FILENAME="Heartbroken.tzx"
set SCRIPTNAME="heartbrokentzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
