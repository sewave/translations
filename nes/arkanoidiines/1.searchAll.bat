@echo off
set T_FILENAME="Arkanoid II (J) [!].nes"
set SCRIPTNAME="arkanoidiines"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
