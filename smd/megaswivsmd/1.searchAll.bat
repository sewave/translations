@echo off
set T_FILENAME="Mega SWIV (E).bin"
set SCRIPTNAME="megaswivsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
