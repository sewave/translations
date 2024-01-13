@echo off
set T_FILENAME="Spider-Man & Venom - Separation Anxiety (U).smc"
set SCRIPTNAME="spdvensepasnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
