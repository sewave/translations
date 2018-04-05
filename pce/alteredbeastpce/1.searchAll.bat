@echo off
set T_FILENAME="Juuouki (J).pce"
set SCRIPTNAME="alteredbeastpce"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
