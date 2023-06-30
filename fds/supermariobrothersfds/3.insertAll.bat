@echo off
set T_FILENAME="TR_Super Mario Brothers (Japan).fds"
set S_FILENAME="Super Mario Brothers (Japan).fds"
set SCRIPTNAME="supermariobrothersfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
