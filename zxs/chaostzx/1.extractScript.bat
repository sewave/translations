@echo off
set T_FILENAME="Chaos.tzx"
set SCRIPTNAME="chaostzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
