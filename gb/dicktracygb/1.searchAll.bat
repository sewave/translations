@echo off
set T_FILENAME="Dick Tracy (U).gb"
set SCRIPTNAME="dicktracygb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt" 
pause
