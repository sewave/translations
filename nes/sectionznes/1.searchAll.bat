@echo off
set T_FILENAME="Section Z (U) [!].nes"
set SCRIPTNAME="sectionznes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
