@echo off
set T_FILENAME="TR_Bonk's Adventure (U) [!].gb"
set S_FILENAME="Bonk's Adventure (U) [!].gb"
set SCRIPTNAME="bonksadventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
