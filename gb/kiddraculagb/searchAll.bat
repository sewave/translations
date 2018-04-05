@echo off 
set T_FILENAME="Kid Dracula (U) [!].gb"
set SCRIPTNAME="kiddraculagb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 6 FF "..\EngDict.txt"
pause 
