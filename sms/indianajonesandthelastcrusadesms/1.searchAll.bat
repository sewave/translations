@echo off
set T_FILENAME="Indiana Jones and the Last Crusade (UE) [!].sms"
set SCRIPTNAME="indianajonesandthelastcrusadesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
