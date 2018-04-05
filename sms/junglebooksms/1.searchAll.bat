@echo off
set T_FILENAME="Jungle Book, The (UE) [!].sms"
set SCRIPTNAME="junglebooksms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause
