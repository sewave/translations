@echo off
set T_FILENAME="US Championship V'Ball (J) [!].nes"
set SCRIPTNAME="uschampionshipvballnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt4.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
