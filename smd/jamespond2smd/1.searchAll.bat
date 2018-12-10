@echo off
set T_FILENAME="James Pond II - Codename RoboCod (UE) [!].bin"
set SCRIPTNAME="jamespond2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
