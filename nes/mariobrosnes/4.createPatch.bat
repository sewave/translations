@echo off
set T_FILENAME="TR_Mario Bros. (JU) [!].nes"
set S_FILENAME="Mario Bros. (JU) [!].nes"
set SCRIPTNAME="mariobrosnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
