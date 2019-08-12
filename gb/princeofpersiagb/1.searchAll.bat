@echo off
set T_FILENAME="Prince of Persia (U).gb"
set SCRIPTNAME="princeofpersiagb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
