@echo off
set T_FILENAME="TR_Arena - Maze of Death (U) [!].gg"
set SCRIPTNAME="arenamazeofdeathgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17821:60
pause
