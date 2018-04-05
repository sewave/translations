@echo off 
set T_FILENAME="Dynamite Headdy (J) [c][T+ENG].gen"
set SCRIPTNAME="dynheaddysmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
