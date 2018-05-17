@echo off
set T_FILENAME="Zero the Kamikaze Squirrel (U) [!].smc"
set SCRIPTNAME="zerothekamikazesquirrelsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
