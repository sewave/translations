@echo off
set T_FILENAME="Animaniacs (U) [!].smc"
set SCRIPTNAME="animaniacssfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 9 FF "..\EngDict.txt"
pause
