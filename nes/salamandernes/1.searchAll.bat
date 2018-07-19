@echo off
set T_FILENAME="Salamander (J) [!].nes"
set SCRIPTNAME="salamandernes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
