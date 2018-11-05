@echo off
set T_FILENAME="Captain Planet and the Planeteers (E) [!].gen"
set SCRIPTNAME="captainplanetandtheplaneteerssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
