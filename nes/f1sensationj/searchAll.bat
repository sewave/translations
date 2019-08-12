@echo off 
set T_FILENAME="F-1 Sensation (J).nes"
set SCRIPTNAME="f1sensationj"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
 