@echo off
set T_FILENAME="Gods (U) [!].bin"
set SCRIPTNAME="godssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
