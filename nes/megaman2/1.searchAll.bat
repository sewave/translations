@echo off
set T_FILENAME="Megaman II (U) [!].nes"
set SCRIPTNAME="megaman2"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
