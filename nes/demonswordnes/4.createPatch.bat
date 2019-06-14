@echo off
set T_FILENAME="TR_Demon Sword (U) [!].nes"
set S_FILENAME="Demon Sword (U) [!].nes"
set SCRIPTNAME="demonswordnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
