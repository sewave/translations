@echo off
set T_FILENAME="Incredible Hulk, The (E) [!].sms"
set SCRIPTNAME="incrediblehulkthesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
