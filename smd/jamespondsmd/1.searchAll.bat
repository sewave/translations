@echo off
set T_FILENAME="James Pond - Underwater Agent (UE) [!].bin"
set SCRIPTNAME="jamespondsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 0 00 "..\EngDict.txt"
pause
