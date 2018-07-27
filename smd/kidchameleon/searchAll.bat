@echo off 
set T_FILENAME="Kid Chameleon (UE) [!].bin"
set SCRIPTNAME="kidchameleon"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause 
