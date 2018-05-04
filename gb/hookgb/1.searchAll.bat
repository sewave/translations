@echo off
set T_FILENAME="Hook (U).gb"
set SCRIPTNAME="hookgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
