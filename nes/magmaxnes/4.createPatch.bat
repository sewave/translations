@echo off
set T_FILENAME="TR_Magmax (U) [!].nes"
set S_FILENAME="Magmax (U) [!].nes"
set SCRIPTNAME="magmaxnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
