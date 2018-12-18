@echo off
set T_FILENAME="OutRunners (U) [!].gen"
set SCRIPTNAME="outrunnerssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
