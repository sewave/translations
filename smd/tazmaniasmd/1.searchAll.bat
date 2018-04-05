@echo off
set T_FILENAME="Taz-Mania (W) [!].bin"
set SCRIPTNAME="tazmaniasmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
