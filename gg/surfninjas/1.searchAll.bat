@echo off
set T_FILENAME="Surf Ninjas (U) [!].gg"
set SCRIPTNAME="surfninjas"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause
