@echo off
set T_FILENAME="TR_Ice Climber (Japan) (Disk Writer).fds"
set S_FILENAME="Ice Climber (Japan) (Disk Writer).fds"
set SCRIPTNAME="iceclimberfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
