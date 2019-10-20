@echo off
set T_FILENAME="Vectorman 2 (U) [!].bin"
set SCRIPTNAME="vectorman2ssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
