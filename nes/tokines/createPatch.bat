@echo off 
set T_FILENAME="TL_Toki (U) [!].nes"
set S_FILENAME="Toki (U) [!].nes"
set SCRIPTNAME="tokines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
