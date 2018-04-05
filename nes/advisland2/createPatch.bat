@echo off 
set T_FILENAME="TL_Hudson's Adventure Island II (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island II (U) [!].nes"
set SCRIPTNAME="advisland2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
