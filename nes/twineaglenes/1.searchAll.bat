@echo off
set T_FILENAME="Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set SCRIPTNAME="twineaglenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
