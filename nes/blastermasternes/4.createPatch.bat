@echo off
set T_FILENAME="TR_Blaster Master (U) [!].nes"
set S_FILENAME="Blaster Master (U) [!].nes"
set SCRIPTNAME="blastermasternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
