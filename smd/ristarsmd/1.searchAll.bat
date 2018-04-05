@echo off
set T_FILENAME="Ristar (UE) [!].gen"
set SCRIPTNAME="ristarsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
