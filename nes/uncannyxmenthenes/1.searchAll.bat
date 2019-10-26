@echo off
set T_FILENAME="Uncanny X-Men, The (U) [!].nes"
set SCRIPTNAME="uncannyxmenthenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
