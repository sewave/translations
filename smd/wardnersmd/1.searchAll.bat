@echo off
set T_FILENAME="Wardner (U) [!].gen"
set SCRIPTNAME="wardnersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
