@echo off
set T_FILENAME="Mickey's Dangerous Chase (U) [!].gb"
set SCRIPTNAME="mickeysdangerouschasegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
