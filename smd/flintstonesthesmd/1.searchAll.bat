@echo off
set T_FILENAME="Flintstones, The (U) [c][!].bin"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF-80 "..\EngDict.txt"
pause
