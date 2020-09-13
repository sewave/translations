@echo off
set T_FILENAME="TR_Super Mario Brothers 2 (Japan).fds"
set S_FILENAME="Super Mario Brothers 2 (Japan).fds"
set SCRIPTNAME="supermariobrothers2fds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
