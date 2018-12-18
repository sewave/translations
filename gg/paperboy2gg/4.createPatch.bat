@echo off
set T_FILENAME="TR_Paperboy 2 (U) [!].gg"
set S_FILENAME="Paperboy 2 (U) [!].gg"
set SCRIPTNAME="paperboy2gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
