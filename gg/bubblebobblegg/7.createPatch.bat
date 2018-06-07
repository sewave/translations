@echo off
set T_FILENAME="TR_Bubble Bobble (U) [!].gg"
set S_FILENAME="Bubble Bobble (U) [!].gg"
set SCRIPTNAME="bubblebobblegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
