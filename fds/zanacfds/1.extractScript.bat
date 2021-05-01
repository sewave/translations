@echo off
set T_FILENAME="Zanac (Japan).fds"
set SCRIPTNAME="zanacfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
