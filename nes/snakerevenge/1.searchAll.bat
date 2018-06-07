@echo off
set T_FILENAME="Snake's Revenge (U) [!].nes"
set SCRIPTNAME="snakerevenge"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
