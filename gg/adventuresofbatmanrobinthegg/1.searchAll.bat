@echo off
set T_FILENAME="Adventures of Batman & Robin, The (U) [!].gg"
set SCRIPTNAME="adventuresofbatmanrobinthegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
