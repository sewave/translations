@echo off
set T_FILENAME="Shinobi (Tengen) [!].nes"
set SCRIPTNAME="shinobines"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
