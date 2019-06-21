@echo off
set T_FILENAME="Terminator 2 - The Arcade Game (E) [!].sms"
set SCRIPTNAME="terminator2arcadesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 0 FF "..\EngDict.txt"
pause
