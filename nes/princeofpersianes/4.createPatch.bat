@echo off
set T_FILENAME="TR_Prince of Persia (U) [!].nes"
set S_FILENAME="Prince of Persia (U) [!].nes"
set SCRIPTNAME="princeofpersianes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
