@echo off 
set T_FILENAME="Robocop 3 (UE) [!].gen"
set SCRIPTNAME="robocop3smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
