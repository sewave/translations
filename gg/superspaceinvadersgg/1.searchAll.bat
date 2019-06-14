@echo off
set T_FILENAME="Super Space Invaders (U) [!].gg"
set SCRIPTNAME="superspaceinvadersgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 5 00 "..\EngDict.txt"
pause
