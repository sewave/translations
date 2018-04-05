@echo off
set T_FILENAME="Megaman V (U) [!].nes"
set SCRIPTNAME="megaman5"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
