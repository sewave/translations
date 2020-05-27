@echo off
set T_FILENAME="Arena - Maze of Death (U) [!].gg"
set SCRIPTNAME="arenamazeofdeathgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
