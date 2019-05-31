@echo off
set T_FILENAME="TR_Sword Master (U) [!].nes"
set S_FILENAME="Sword Master (U) [!].nes"
set SCRIPTNAME="swordmasternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
