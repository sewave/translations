@echo off
set T_FILENAME="Galactic Crusader (Bunch) [!].nes"
set SCRIPTNAME="galacticcrusadernes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
