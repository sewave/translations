@echo off
set T_FILENAME="MED.VOL"
set SCRIPTNAME="cobramission"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
