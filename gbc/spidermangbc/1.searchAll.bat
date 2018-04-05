@echo off
set T_FILENAME="Spider-Man (U) [C][!].gbc"
set SCRIPTNAME="spidermangb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
