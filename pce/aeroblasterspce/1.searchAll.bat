@echo off
set T_FILENAME="Aero Blasters (U).pce"
set SCRIPTNAME="aeroblasterspce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
