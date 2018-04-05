@echo off 
set T_FILENAME="Hudson's Adventure Island (U) [!].nes"
set SCRIPTNAME="advisland"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 32F5-3395-00
pause 
