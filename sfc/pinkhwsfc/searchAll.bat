@echo off 
set T_FILENAME="Pink Panther in Pink Goes to Hollywood (U).smc"
set SCRIPTNAME="pinkhwsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
