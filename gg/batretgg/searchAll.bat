@echo off 
set T_FILENAME="Batman Returns (U) [!].gg"
set SCRIPTNAME="batretgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
