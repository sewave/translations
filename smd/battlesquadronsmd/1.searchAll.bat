@echo off
set T_FILENAME="Battle Squadron (UE) [!].bin"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
