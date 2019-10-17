@echo off
set T_FILENAME="Stinger (U) [!].nes"
set SCRIPTNAME="stingernes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
