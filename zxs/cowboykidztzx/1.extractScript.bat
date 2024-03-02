@echo off
set T_FILENAME="Cowboy Kidz.tzx"
set SCRIPTNAME="cowboykidztzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
