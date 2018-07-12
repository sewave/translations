@echo off
set T_FILENAME="Commando (U) [!].nes"
set SCRIPTNAME="commandones"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
