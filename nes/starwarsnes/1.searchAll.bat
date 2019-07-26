@echo off
set T_FILENAME="Star Wars (U) [!].nes"
set SCRIPTNAME="starwarsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 A0 "..\EngDict.txt"
pause
