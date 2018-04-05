@echo off
set T_FILENAME="Twin Cobra (U) [!].bin"
set SCRIPTNAME="twincobra"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
