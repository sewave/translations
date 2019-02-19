@echo off
set T_FILENAME="Road Rash (U).gg"
set SCRIPTNAME="roadrashgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
