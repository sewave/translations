@echo off
set T_FILENAME="Battletoads (W) [!].bin"
set SCRIPTNAME="battletoadssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FE "..\EngDict.txt"
pause
