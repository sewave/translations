@echo off 
set T_FILENAME="Robocop 3 (U).smc"
set SCRIPTNAME="robocop3sfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
