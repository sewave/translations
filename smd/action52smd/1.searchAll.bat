@echo off
set T_FILENAME="Action 52 (Unl) [b3].bin"
set SCRIPTNAME="action52smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
