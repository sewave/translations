@echo off
set T_FILENAME="Mickey Mousecapade (U) [!].nes"
set SCRIPTNAME="mickeymousecapadenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
