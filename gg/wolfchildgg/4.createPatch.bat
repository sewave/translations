@echo off
set T_FILENAME="TR_Wolfchild (U) [!].gg"
set S_FILENAME="Wolfchild (U) [!].gg"
set SCRIPTNAME="wolfchildgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
