@echo off
set T_FILENAME="Sunman (E) (Prototype).nes"
set SCRIPTNAME="sunmannes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
