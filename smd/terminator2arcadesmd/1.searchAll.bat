@echo off
set T_FILENAME="T2 - The Arcade Game (UE) (REV01) [!].bin"
set SCRIPTNAME="terminator2arcadesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00-FF "..\EngDict.txt"
pause
