@echo off
set T_FILENAME="Super Ghouls 'N Ghosts (U) [!].smc"
set SCRIPTNAME="superghoulsghosts"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
