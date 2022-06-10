@echo off
set T_FILENAME="Aqua Squad.tzx"
set SCRIPTNAME="aquasquadtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
