@echo off
set T_FILENAME="Quarth (J) [!].nes"
set SCRIPTNAME="quarthnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 8 FD "..\EngDict.txt"
pause
