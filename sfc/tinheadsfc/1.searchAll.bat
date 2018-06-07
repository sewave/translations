@echo off
set T_FILENAME="Tinhead (E) (Beta).smc"
set SCRIPTNAME="tinheadsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 9 00 "..\EngDict.txt"
pause
