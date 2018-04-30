@echo off
set T_FILENAME="1943 - The Battle of Midway (U) [!].nes"
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
