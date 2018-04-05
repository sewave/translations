@echo off
set T_FILENAME="TR_Megaman V (U) [!].nes"
set S_FILENAME="Megaman V (U) [!].nes"
set SCRIPTNAME="megaman5"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
