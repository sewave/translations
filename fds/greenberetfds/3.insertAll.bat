@echo off
set T_FILENAME="TR_Green Beret (Japan).fds"
set S_FILENAME="Green Beret (Japan).fds"
set SCRIPTNAME="greenberetfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
