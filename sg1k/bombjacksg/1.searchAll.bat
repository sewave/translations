@echo off
set T_FILENAME="Bomb Jack (SG-1000).sg"
set SCRIPTNAME="bombjacksg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
