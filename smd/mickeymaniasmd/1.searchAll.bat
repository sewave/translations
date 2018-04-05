@echo off
set T_FILENAME="Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set SCRIPTNAME="mickeymaniasmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 "..\EngDict.txt"
pause
