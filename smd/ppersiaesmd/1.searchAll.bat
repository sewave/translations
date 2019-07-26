@echo off
set T_FILENAME="Prince of Persia (E).bin"
set SCRIPTNAME="ppersiaesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
