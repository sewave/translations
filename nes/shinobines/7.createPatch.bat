@echo off
set T_FILENAME="TR_Shinobi (Tengen) [!].nes"
set S_FILENAME="Shinobi (Tengen) [!].nes"
set SCRIPTNAME="shinobines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
