@echo off
set T_FILENAME="Blades of Vengeance (UE) [!].gen"
set SCRIPTNAME="bladesofvengeancesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
