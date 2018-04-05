@echo off
set T_FILENAME="TR_Megaman IV (U) (PRG1) [!].nes"
set S_FILENAME="Megaman IV (U) (PRG1) [!].nes"
set SCRIPTNAME="megaman4"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
