@echo off
set T_FILENAME="Micro Machines (E) [!].sms"
set SCRIPTNAME="micromachinessms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
