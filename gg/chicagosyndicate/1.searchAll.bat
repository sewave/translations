@echo off
set T_FILENAME="Chicago Syndicate (U) [!].gg"
set SCRIPTNAME="chicagosyndicate"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 FF "..\EngDict.txt"
pause
