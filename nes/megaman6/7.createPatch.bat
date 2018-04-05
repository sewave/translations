@echo off
set T_FILENAME="TR_Megaman VI (U) [!].nes"
set S_FILENAME="Megaman VI (U) [!].nes"
set SCRIPTNAME="megaman6"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
