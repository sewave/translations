@echo off
set T_FILENAME="Super Punch-Out!! (U) [!].smc"
set SCRIPTNAME="superpunchoutsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
