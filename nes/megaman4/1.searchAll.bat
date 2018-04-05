@echo off
set T_FILENAME="Megaman IV (U) (PRG1) [!].nes"
set SCRIPTNAME="megaman4"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
