@echo off
set T_FILENAME="Alien 3 (UE) (REV01) [!].gen"
set SCRIPTNAME="alien3smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
