@echo off
set T_FILENAME="Tiny Toon Adventures - Buster's Hidden Treasure (U) [!].bin"
set SCRIPTNAME="tinybusterhidden"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
