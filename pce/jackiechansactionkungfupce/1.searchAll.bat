@echo off
set T_FILENAME="Jackie Chan's Action Kung Fu (U).pce"
set SCRIPTNAME="jackiechansactionkungfupce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
