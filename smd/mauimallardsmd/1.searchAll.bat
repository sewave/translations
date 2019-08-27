@echo off
set T_FILENAME="Donald in Maui Mallard (E) [!].bin"
set SCRIPTNAME="mauimallardsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause
