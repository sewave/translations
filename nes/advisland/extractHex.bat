@echo off 
set T_FILENAME="TR_Hudson's Adventure Island (U) [!].nes"
set SCRIPTNAME="advisland"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
