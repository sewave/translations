@echo off
set T_FILENAME="TR_Falsion (Japan).fds"
set S_FILENAME="Falsion (Japan).fds"
set SCRIPTNAME="falsionfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
