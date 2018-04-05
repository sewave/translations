@echo off
set T_FILENAME="Ninja Crusaders (U) [!].nes"
set SCRIPTNAME="ninjacrusaders"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
