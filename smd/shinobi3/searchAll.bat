@echo off 
set T_FILENAME="Shinobi III - Return of the Ninja Master (U) [!].bin"
set SCRIPTNAME="shinobi3"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
