@echo off
set T_FILENAME="Ice Climber (Japan) (Disk Writer).fds"
set SCRIPTNAME="iceclimberfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
