@echo off
set T_FILENAME="Valis III (U) [!].bin"
set SCRIPTNAME="valisiiismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
