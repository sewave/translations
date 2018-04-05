@echo off 
set T_FILENAME="Hudson's Adventure Island III (U) [!].nes"
set SCRIPTNAME="advisland3"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
