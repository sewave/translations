@echo off 
set T_FILENAME="TL_Zen - Intergalactic Ninja (U) [!].nes"
set S_FILENAME="Zen - Intergalactic Ninja (U) [!].nes"
set SCRIPTNAME="zenin"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
