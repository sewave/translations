@echo off
set T_FILENAME="Megaman III (U) [!].nes"
set SCRIPTNAME="megaman3"
java -jar Hextractor.jar -sa %SCRIPTNAME%Epi.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
