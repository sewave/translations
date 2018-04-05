@echo off
set T_FILENAME="Lion King, The (E) [!].sms"
set SCRIPTNAME="lionkingsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
