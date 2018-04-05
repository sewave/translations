@echo off
set T_FILENAME="Castlevania - Legends (UE) [S][!].gb"
set SCRIPTNAME="castlevanialegends"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FE "..\EngDict.txt"
pause
