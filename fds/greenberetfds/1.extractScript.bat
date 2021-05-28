@echo off
set T_FILENAME="Green Beret (Japan).fds"
set SCRIPTNAME="greenberetfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
