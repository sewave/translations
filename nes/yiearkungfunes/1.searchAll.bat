@echo off
set T_FILENAME="Yie Ar Kung-Fu (J) (V1.4) [!].nes"
set SCRIPTNAME="yiearkungfunes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
