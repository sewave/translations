@echo off
set T_FILENAME="Rival Turf (U).smc"
set SCRIPTNAME="rivalturfsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
