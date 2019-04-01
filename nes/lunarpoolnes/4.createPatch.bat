@echo off
set T_FILENAME="TR_Lunar Pool (U) [!].nes"
set S_FILENAME="Lunar Pool (U) [!].nes"
set SCRIPTNAME="lunarpoolnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
