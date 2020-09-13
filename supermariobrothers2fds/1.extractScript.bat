@echo off
set T_FILENAME="Super Mario Brothers 2 (Japan).fds"
set SCRIPTNAME="supermariobrothers2fds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
