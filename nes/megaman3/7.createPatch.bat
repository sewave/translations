@echo off
set T_FILENAME="TR_Megaman III (U) [!].nes"
set S_FILENAME="Megaman III (U) [!].nes"
set SCRIPTNAME="megaman3"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
