@echo off
set T_FILENAME="TR_Kick Master (U) [!].nes"
set S_FILENAME="Kick Master (U) [!].nes"
set SCRIPTNAME="kickmasternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
