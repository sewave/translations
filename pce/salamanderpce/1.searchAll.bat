@echo off
set T_FILENAME="Salamander (J).pce"
set SCRIPTNAME="salamanderpce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
