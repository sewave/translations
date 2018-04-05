@echo off
set T_FILENAME="Darkwing Duck (U) [!].gb"
set SCRIPTNAME="darkwingduckgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
