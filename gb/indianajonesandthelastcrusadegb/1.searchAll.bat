@echo off
set T_FILENAME="Indiana Jones and the Last Crusade (UE) [!].gb"
set SCRIPTNAME="indianajonesandthelastcrusadegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
