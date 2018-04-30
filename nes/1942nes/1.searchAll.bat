@echo off
set T_FILENAME="1942 (JU) [!].nes"
set SCRIPTNAME="1942nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
