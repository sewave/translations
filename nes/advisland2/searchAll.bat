@echo off 
set T_FILENAME="Hudson's Adventure Island II (U) [!].nes"
set SCRIPTNAME="advisland2"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
