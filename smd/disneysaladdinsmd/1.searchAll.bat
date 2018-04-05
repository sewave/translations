@echo off
set T_FILENAME="Disney's Aladdin (U) [!].gen"
set SCRIPTNAME="disneysaladdinsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
