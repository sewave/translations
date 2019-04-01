@echo off
set T_FILENAME="TR_Arkanoid (U) [!].nes"
set S_FILENAME="Arkanoid (U) [!].nes"
set SCRIPTNAME="arkanoidnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
