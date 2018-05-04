@echo off
set T_FILENAME="Circus Charlie (J) [!].nes"
set SCRIPTNAME="circuscharlienes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
