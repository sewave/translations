@echo off
set T_FILENAME="Super James Pond (E) [!].gb"
set SCRIPTNAME="superjamespondgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
