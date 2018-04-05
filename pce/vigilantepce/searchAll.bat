@echo off 
set T_FILENAME="Vigilante (U).pce"
set SCRIPTNAME="vigilantepce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
