@echo off 
set T_FILENAME="Decap Attack (UE) [!].gen"
set SCRIPTNAME="decapatk"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
