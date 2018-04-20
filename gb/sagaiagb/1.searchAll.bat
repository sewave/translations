@echo off
set T_FILENAME="Sagaia (J) [!].gb"
set SCRIPTNAME="sagaiagb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
