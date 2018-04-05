@echo off
set T_FILENAME="Beauty and the Beast (E) [!].nes"
set SCRIPTNAME="beautybeastnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
