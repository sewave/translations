@echo off
set T_FILENAME="TR_Challenge of the Dragon (Color Dreams) [!].nes"
set S_FILENAME="Challenge of the Dragon (Color Dreams) [!].nes"
set SCRIPTNAME="challengeofthedragonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
