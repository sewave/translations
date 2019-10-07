@echo off
set T_FILENAME="Side Pocket (U) [!].nes"
set SCRIPTNAME="sidepocketnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 40 "..\EngDict.txt"
pause
