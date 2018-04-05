@echo off
set T_FILENAME="Ghosts 'N Goblins (U) [C][!].gbc"
set SCRIPTNAME="ghostsngoblinsgbc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
