@echo off
set T_FILENAME="TR_Bomberman II (U) [!].nes"
set S_FILENAME="Bomberman II (U) [!].nes"
set SCRIPTNAME="bombermaniines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
