@echo off
set T_FILENAME="TR_Megaman (U) [!].nes"
set S_FILENAME="Megaman (U) [!].nes"
set SCRIPTNAME="megaman"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
