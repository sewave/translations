@echo off
set T_FILENAME="Darius Plus (J) (SGX).pce"
set SCRIPTNAME="dariuspluspce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
