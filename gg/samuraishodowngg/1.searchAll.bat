@echo off
set T_FILENAME="Samurai Shodown (U) [!].gg"
set SCRIPTNAME="samuraishodowngg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
