@echo off
set T_FILENAME="TR_Super Mario Bros. 3 (U) (PRG1) [!].nes"
set S_FILENAME="Super Mario Bros. 3 (U) (PRG1) [!].nes"
set SCRIPTNAME="supermariobros3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
