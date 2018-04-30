@echo off
set T_FILENAME="Megaman II (U) [!].gb"
set SCRIPTNAME="megamaniigb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
