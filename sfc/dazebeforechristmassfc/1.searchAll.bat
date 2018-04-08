@echo off
set T_FILENAME="Daze Before Christmas (E).smc"
set SCRIPTNAME="dazebeforechristmassfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
