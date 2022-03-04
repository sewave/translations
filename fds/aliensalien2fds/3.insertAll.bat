@echo off
set T_FILENAME="TR_Aliens - Alien 2 (Japan) (Proto) [b].fds"
set S_FILENAME="Aliens - Alien 2 (Japan) (Proto) [b].fds"
set SCRIPTNAME="aliensalien2fds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
