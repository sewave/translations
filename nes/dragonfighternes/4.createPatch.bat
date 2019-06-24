@echo off
set T_FILENAME="TR_Dragon Fighter (U) [!].nes"
set S_FILENAME="Dragon Fighter (U) [!].nes"
set SCRIPTNAME="dragonfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
