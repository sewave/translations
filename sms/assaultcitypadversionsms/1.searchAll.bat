@echo off
set T_FILENAME="Assault City - Pad Version (E) [!].sms"
set SCRIPTNAME="assaultcitypadversionsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
