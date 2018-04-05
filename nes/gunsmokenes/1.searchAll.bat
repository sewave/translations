@echo off
set T_FILENAME="Gun.Smoke (U) [!].nes"
set SCRIPTNAME="gunsmokenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
