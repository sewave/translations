@echo off 
set T_FILENAME="Jewel Master (UE) [!].bin"
set SCRIPTNAME="jewelmaster"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
