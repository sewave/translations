@echo off
set T_FILENAME="TR_Megaman (U) [!].gg"
set S_FILENAME="Megaman (U) [!].gg"
set SCRIPTNAME="megamangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
