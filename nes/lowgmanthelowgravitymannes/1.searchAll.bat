@echo off
set T_FILENAME="Low G Man - The Low Gravity Man (U) [!].nes"
set SCRIPTNAME="lowgmanthelowgravitymannes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
