@echo off
set T_FILENAME="Ghosts 'N Goblins (U) [!].nes"
set SCRIPTNAME="ghoulsgoblinsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
