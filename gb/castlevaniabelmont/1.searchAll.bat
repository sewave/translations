@echo off
set T_FILENAME="Castlevania II - Belmont's Revenge (U) [!].gb"
set SCRIPTNAME="castlevaniabelmont"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
