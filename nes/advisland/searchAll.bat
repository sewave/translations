@echo off 
set T_FILENAME="Hudson's Adventure Island (U) [!].nes"
set SCRIPTNAME="advisland"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
