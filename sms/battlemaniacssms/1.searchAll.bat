@echo off
set T_FILENAME="Battlemaniacs (B) [!].sms"
set SCRIPTNAME="battlemaniacssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
