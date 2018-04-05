@echo off
set T_FILENAME="GG Shinobi (E) [!].gg"
set SCRIPTNAME="ggshinobi"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
