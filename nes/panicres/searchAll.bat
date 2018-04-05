@echo off 
set T_FILENAME="Panic Restaurant (U) [!].nes"
set SCRIPTNAME="panicres"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
