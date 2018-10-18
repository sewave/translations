@echo off
set T_FILENAME="ECCO The Dolphin (UE) [!].gen"
set SCRIPTNAME="eccosmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
