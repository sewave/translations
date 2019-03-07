@echo off
set T_FILENAME="Shadow of the Beast 2 (UE) [!].gen"
set SCRIPTNAME="shadowofthebeast2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
