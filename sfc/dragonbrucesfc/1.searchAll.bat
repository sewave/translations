@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (U).smc"
set SCRIPTNAME="dragonbrucesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 0 00 "..\EngDict.txt"
pause
