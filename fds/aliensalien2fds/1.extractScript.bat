@echo off
set T_FILENAME="Aliens - Alien 2 (Japan) (Proto) [b].fds"
set SCRIPTNAME="aliensalien2fds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
