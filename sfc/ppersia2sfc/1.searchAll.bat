@echo off
set T_FILENAME="Prince of Persia 2 - The Shadow & The Flame (U).smc"
set SCRIPTNAME="ppersia2sfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 3 FC "..\EngDict.txt"
pause
