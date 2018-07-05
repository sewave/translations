@echo off
set T_FILENAME="Mystic Defender (W) (REV01) [!].gen"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
