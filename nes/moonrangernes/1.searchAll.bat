@echo off
set T_FILENAME="Moon Ranger (Bunch) [!].nes"
set SCRIPTNAME="moonrangernes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
