@echo off
set T_FILENAME="TR_Bubble Bobble (U) [!].nes"
set S_FILENAME="Bubble Bobble (U) [!].nes"
set SCRIPTNAME="bubblebobblenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
