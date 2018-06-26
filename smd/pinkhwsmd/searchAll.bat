@echo off 
set T_FILENAME="Pink Goes to Hollywood (U) [!].gen"
set SCRIPTNAME="pinkhwsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
