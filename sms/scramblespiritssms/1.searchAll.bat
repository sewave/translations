@echo off
set T_FILENAME="Scramble Spirits (UE) [!].sms"
set SCRIPTNAME="scramblespiritssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FD "..\EngDict.txt"
pause
