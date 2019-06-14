@echo off
set T_FILENAME="Mighty Bomb Jack (U) [!].nes"
set SCRIPTNAME="mightybombjacknes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
