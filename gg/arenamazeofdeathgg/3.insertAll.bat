@echo off
set T_FILENAME="TR_Arena - Maze of Death (U) [!].gg"
set S_FILENAME="Arena - Maze of Death (U) [!].gg"
set SCRIPTNAME="arenamazeofdeathgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
