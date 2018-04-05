@echo off
set T_FILENAME="Sweet Home (J) [T+Eng_Siege].nes"
set SCRIPTNAME="sweethomenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
