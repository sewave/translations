@echo off
set T_FILENAME="Yie Ar Kung-Fu 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="yiearkungfu1rom"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
