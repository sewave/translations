@echo off 
set T_FILENAME="TR_Wacky Races (U) [!].nes"
set S_FILENAME="Wacky Races (U) [!].nes"
set SCRIPTNAME="wackyraces"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
