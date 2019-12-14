@echo off
set T_FILENAME="Dragon Warrior (U) (PRG1) [!].nes"
set SCRIPTNAME="dragonwarriornes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
