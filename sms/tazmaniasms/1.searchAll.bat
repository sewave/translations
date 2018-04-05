@echo off
set T_FILENAME="Taz-Mania (E) [!].sms"
set SCRIPTNAME="tazmaniasms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
