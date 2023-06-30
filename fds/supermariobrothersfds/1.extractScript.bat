@echo off
set T_FILENAME="Super Mario Brothers (Japan).fds"
set SCRIPTNAME="supermariobrothersfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
