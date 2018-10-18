@echo off 
set T_FILENAME="Pirates of Dark Water, The (UE).bin"
set SCRIPTNAME="piratesdwsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 "..\EngDict.txt"
pause 
