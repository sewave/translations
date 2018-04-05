@echo off
set T_FILENAME="TR_Strider Returns (U) [!].gg"
set S_FILENAME="Strider Returns (U) [!].gg"
set SCRIPTNAME="strider2gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
