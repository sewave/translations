@echo off
set T_FILENAME="James Bond 007 - The Duel (UE) [!].gen"
set SCRIPTNAME="jamesbond007theduelsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 8 00 "..\EngDict.txt"
pause
