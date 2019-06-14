@echo off
set T_FILENAME="Zool (U).smc"
set SCRIPTNAME="zoolsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
