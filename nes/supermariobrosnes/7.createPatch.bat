@echo off
set T_FILENAME="TR_Super Mario Bros. (W) [!].nes"
set S_FILENAME="Super Mario Bros. (W) [!].nes"
set SCRIPTNAME="supermariobrosnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
