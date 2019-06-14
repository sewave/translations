@echo off
set T_FILENAME="TR_Bubble Bobble (U) [C][!].gbc"
set S_FILENAME="Bubble Bobble (U) [C][!].gbc"
set SCRIPTNAME="bubblebobblegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
