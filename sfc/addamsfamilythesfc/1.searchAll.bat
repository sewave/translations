@echo off
set T_FILENAME="Addams Family, The (U) [!].smc"
set SCRIPTNAME="addamsfamilythesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
