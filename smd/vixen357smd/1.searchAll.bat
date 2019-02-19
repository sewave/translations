@echo off
set T_FILENAME="Vixen 357 (J) [T+ENG].gen"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
