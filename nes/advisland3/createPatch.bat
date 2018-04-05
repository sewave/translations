@echo off 
set T_FILENAME="TL_Hudson's Adventure Island III (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island III (U) [!].nes"
set SCRIPTNAME="advisland3"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
