@echo off 
set T_FILENAME="Air Diver (U) [!].bin"
set SCRIPTNAME="airdiversmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
