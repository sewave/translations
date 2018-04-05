@echo off
set T_FILENAME="Beauty and the Beast - Belle's Quest (U) [!].bin"
set SCRIPTNAME="beautybeastbelle"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
