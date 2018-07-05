@echo off
set T_FILENAME="Goofy's Hysterical History Tour (U) [!].bin"
set SCRIPTNAME="goofyhisterical"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
