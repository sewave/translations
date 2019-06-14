@echo off
set T_FILENAME="TR_Zool (U) [!].gg"
set S_FILENAME="Zool (U) [!].gg"
set SCRIPTNAME="zoolgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
