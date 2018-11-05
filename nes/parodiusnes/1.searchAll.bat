@echo off
set T_FILENAME="Parodius (E) [!].nes"
set SCRIPTNAME="parodiusnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt4.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
