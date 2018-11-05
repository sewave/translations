@echo off
set T_FILENAME="Batman Returns (W) [!].gen"
set SCRIPTNAME="batmanreturnsssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
