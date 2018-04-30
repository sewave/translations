@echo off
set T_FILENAME="TR_1942 (JU) [!].nes"
set S_FILENAME="1942 (JU) [!].nes"
set SCRIPTNAME="1942nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
