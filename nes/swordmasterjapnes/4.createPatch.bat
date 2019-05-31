@echo off
set T_FILENAME="TR_Sword Master (J) [!].nes"
set S_FILENAME="Sword Master (J) [!].nes"
set SCRIPTNAME="swordmasterjapnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
