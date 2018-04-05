@echo off 
set T_FILENAME="Final Fight 3 (Unl) [!].nes"
set SCRIPTNAME="ffight3nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
