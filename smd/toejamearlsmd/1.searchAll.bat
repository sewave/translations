@echo off
set T_FILENAME="Toejam & Earl (UE) (REV00) [!].bin"
set SCRIPTNAME="toejamearlsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
