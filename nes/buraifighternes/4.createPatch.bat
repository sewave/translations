@echo off
set T_FILENAME="TR_Burai Fighter (U) [!].nes"
set S_FILENAME="Burai Fighter (U) [!].nes"
set SCRIPTNAME="buraifighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
