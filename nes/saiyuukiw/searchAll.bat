@echo off 
set T_FILENAME="Saiyuuki World (J) [T+ENG].nes"
set SCRIPTNAME="saiyuukiw"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
