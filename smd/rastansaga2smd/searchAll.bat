@echo off 
set T_FILENAME="Rastan Saga II (U) [!].gen"
set SCRIPTNAME="rastansaga2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
