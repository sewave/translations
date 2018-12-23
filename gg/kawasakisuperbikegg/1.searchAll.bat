@echo off
set T_FILENAME="Kawasaki Superbike Challenge (U) [!].gg"
set SCRIPTNAME="kawasakisuperbikegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 0 FF "..\EngDict.txt"
pause
