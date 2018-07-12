@echo off
set T_FILENAME="Pooyan (J).nes"
set SCRIPTNAME="pooyannes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
