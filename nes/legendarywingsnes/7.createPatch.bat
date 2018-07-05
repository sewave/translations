@echo off
set T_FILENAME="TR_Legendary Wings (U) [!].nes"
set S_FILENAME="Legendary Wings (U) [!].nes"
set SCRIPTNAME="legendarywingsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
