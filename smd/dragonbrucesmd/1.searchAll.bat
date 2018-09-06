@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (U) [!].bin"
set SCRIPTNAME="dragonbrucesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause
