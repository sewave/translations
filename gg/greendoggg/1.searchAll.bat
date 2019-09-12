@echo off
set T_FILENAME="Greendog (U).gg"
set SCRIPTNAME="greendoggg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
