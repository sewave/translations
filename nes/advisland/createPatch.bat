@echo off 
set T_FILENAME="TR_Hudson's Adventure Island (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island (U) [!].nes"
set SCRIPTNAME="advisland"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
