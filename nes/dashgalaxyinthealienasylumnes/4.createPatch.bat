@echo off
set T_FILENAME="TR_Dash Galaxy in the Alien Asylum (U) [!].nes"
set S_FILENAME="Dash Galaxy in the Alien Asylum (U) [!].nes"
set SCRIPTNAME="dashgalaxyinthealienasylumnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
