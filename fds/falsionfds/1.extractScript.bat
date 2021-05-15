@echo off
set T_FILENAME="Falsion (Japan).fds"
set SCRIPTNAME="falsionfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
