@echo off
set T_FILENAME="Devilish - The Next Possession (U) [c][!].gen"
set SCRIPTNAME="devilishthenextpossessionssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
