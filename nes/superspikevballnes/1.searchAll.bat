@echo off
set T_FILENAME="Super Spike V'Ball (U) [!].nes"
set SCRIPTNAME="superspikevballnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
