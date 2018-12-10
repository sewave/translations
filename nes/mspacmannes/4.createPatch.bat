@echo off
set T_FILENAME="TR_Ms. Pac-Man (U) [!].nes"
set S_FILENAME="Ms. Pac-Man (U) [!].nes"
set SCRIPTNAME="mspacmannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
