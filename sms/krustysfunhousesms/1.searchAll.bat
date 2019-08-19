@echo off
set T_FILENAME="Krusty's Fun House (E) [!].sms"
set SCRIPTNAME="krustysfunhousesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
