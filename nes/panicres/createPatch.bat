@echo off 
set T_FILENAME="TL_Panic Restaurant (U) [!].nes"
set S_FILENAME="Panic Restaurant (U) [!].nes"
set SCRIPTNAME="panicres"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
