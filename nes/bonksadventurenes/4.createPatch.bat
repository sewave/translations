@echo off
set T_FILENAME="TR_Bonk's Adventure (U) [!].nes"
set S_FILENAME="Bonk's Adventure (U) [!].nes"
set SCRIPTNAME="bonksadventurenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
