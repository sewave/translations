@echo off
set T_FILENAME="TR_Dirty Pair - Project Eden (Japan) [b] [T+ENG].fds"
set S_FILENAME="Dirty Pair - Project Eden (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="dirtypairprojectedenfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
