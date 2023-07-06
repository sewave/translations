@echo off
set T_FILENAME="Bubble Bobble (U) [C][!].gbc"
set SCRIPTNAME="bubblebobblegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
