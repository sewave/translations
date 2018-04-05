@echo off 
set T_FILENAME="Bloody Wolf (U).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
