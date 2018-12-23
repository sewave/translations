@echo off
set T_FILENAME="Darius Force (J).smc"
set SCRIPTNAME="dariusforcesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
