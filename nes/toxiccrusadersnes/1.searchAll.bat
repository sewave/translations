@echo off
set T_FILENAME="Toxic Crusaders (U) [!].nes"
set SCRIPTNAME="toxiccrusadersnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 E0 "..\EngDict.txt"
pause
