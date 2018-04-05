@echo off
set T_FILENAME="Shinobi II - The Silent Fury (U) [!].gg"
set SCRIPTNAME="ggshinobi2"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
